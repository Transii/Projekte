from sortierung import db
from datetime import datetime

tag_identifier = db.Table('tag_identifier',
    db.Column('file_id', db.Integer, db.ForeignKey('file.id')),
    db.Column('tag_id', db.Integer, db.ForeignKey('tag.id'))
)



class File(db.Model):

    __tablename__ = 'file'

    id = db.Column(db.Integer, primary_key=True)
    alias = db.Column(db.String)
    name = db.Column(db.String)
    hash = db.Column(db.String)
    created = db.Column(db.DateTime, default=datetime.utcnow)
    owner = db.Column(db.String)
    sort_place = db.Column(db.Integer, db.ForeignKey('folder.id'))
    tags = db.relationship('Tag', secondary=tag_identifier, backref=db.backref('files', lazy='dynamic'))

class Folder(db.Model):

    __tablename__ = "folder"

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String)
    parent_id = db.Column(db.Integer, db.ForeignKey('folder.id'))
    parent = db.relationship('Folder', remote_side=[id], backref='child', lazy=True, uselist=True)
    files = db.relationship('File', backref='folder', lazy=True)
    created = db.Column(db.DateTime, default=datetime.utcnow)
    owner = db.Column(db.String)

class Tag(db.Model):

    __tablename__ = "tag"
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String)
    creator = db.Column(db.String)
    created = db.Column(db.DateTime, default=datetime.utcnow)
