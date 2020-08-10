'''from sortierung import ms
from sortierung.db_model import Folder

class folderShema2(ms.ModelSchema):
    class Meta:
        model = Folder

class folderShema(ms.ModelSchema):
    folder = ms.Nested(folderShema2,many=True)
    class Meta:
        model = Folder'''