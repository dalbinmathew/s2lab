import pymongo 
myclient=pymongo.MongoClient("mongodb://localhost:27017")
db=myclient["college"]
col=db["studlist"]

query={"gender": "female", "course": "MCA"}
result=col.find(query,{"mark":1,"name":1,"_id":0})
for i in result:
    print(i)
    
query={"course":"MCA"}
result=col.find(query).sort({"mark":-1}).limit(1)
for i in result:
    print(i)
    
query={"gender":"male","grade":"A+"}
result=col.find(query,{"_id":0,"name":1})
for i in result:
    print(i)