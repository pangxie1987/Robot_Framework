from cx_Oracle import *

db=connect('core/core@10.243.140.117:1521/xe')
cursor=db.cursor()
cmd='select * from tb_user'
alldata=cursor.execute(cmd)
data=cursor.fetchone()
print(alldata)