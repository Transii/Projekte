import os
from flask import render_template, url_for,request,redirect, send_from_directory
import hashlib
import uuid
from sortierung.db_model import File,Folder
from sortierung import db,app

def getFileHash(file):
    sha256_hash = hashlib.sha256()
    with open(file,"rb") as f:
        # Read and update hash string value in blocks of 4K
        for byte_block in iter(lambda: f.read(4096),b""):
            sha256_hash.update(byte_block)
    return(sha256_hash.hexdigest())

def genFileName(file):
    orig_filename = os.path.splitext(file.filename)
    new_filename = f"{str(uuid.uuid4()) + orig_filename[1]}"
    return  new_filename

@app.route('/upload')
def upload():
    return render_template("upload.html")

@app.route('/')
@app.route('/files')
def files():
    folder = Folder.query.filter_by(id=1).first()
    return render_template("files.html", folder=folder)

@app.route('/file')
def oneFile():
    filename=request.args.get('filename')
    print(filename)
    return send_from_directory("static/uploads",filename)


@app.route('/folder', methods=['POST', 'DELETE'])
def folder():
    folder_id = request.args.get("id")
    if request.method == 'POST':
        if request.args.get('action')=='del':
            if request.args.get('type')=='Folder':
                if folder_id != "1":
                    f1 = Folder.query.filter_by(id=folder_id).first()
                    db.session.delete(f1)
                    db.session.commit()
            if request.args.get('type')=='File':
                f1 = File.query.filter_by(id=folder_id).first()
                db.session.delete(f1)
                db.session.commit()
            return redirect("files")
        if request.args.get('action')== 'rename':
            if request.args.get('type')=='Folder':
                f1 = Folder.query.filter_by(id=folder_id).first()
                f1.name = request.form['folder_name']
                db.session.commit()
            if request.args.get('type')=='File':
                f1 = File.query.filter_by(id=folder_id).first()
                f1.alias = request.form['folder_name']
                db.session.commit()
            return redirect("files")
        else:
            if request.form['folder_name']:
                folder_name = request.form['folder_name']
            else:
                folder_name = "Neuer Ordner"
            f1=Folder(name=folder_name, parent_id=folder_id)
            db.session.add(f1)
            db.session.commit()
            return redirect("files")
        
@app.route('/uploader', methods = ['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        files = request.files.getlist("file")
        folder_id= request.args.get("id")
        if not files or not any(f for f in files):
            return redirect(url_for("files"))
        else:
            for file in files:
                origFileName=file.filename
                file.filename = genFileName(file)
                save_location = os.path.join(app.config['UPLOAD_FOLDER'], file.filename)
                file.save(save_location)
                f1 = File(alias=origFileName,name=file.filename, hash=getFileHash(save_location), sort_place=int(folder_id))
                db.session.add(f1)
                db.session.commit()
            return redirect(url_for("files"))

@app.route('/qrcode/all')
def qrcode_all():
    f1 = File.query.all()
    return render_template("qr_code.html", files=f1)

@app.route('/qrcode', methods=['POST'])
def qrcode_single():
    dockumentCode=request.args.get('id')
    if request.args.get('type')== 'Folder':
        f1 = File.query.all()
        return render_template("qr_code_all.html", files=f1)
    if request.args.get('type') == 'File':
        f1 = File.query.filter_by(id=dockumentCode).first()
        return render_template("qr_code_single.html", file=f1)
    else:
        return redirect(url_for('files'))



