import pymongo
myclient=pymongo.MongoClient("mongodb://localhost:27017")
db=myclient["test"]
collection=db["testing"]
document = {"name": "John Doe", "age": 30}
result = collection.insert_one(document)

query = {"age": {"$gt": 25}}  # Find documents where age is greater than 25
results = collection.find(query)

# Iterate over the query results
for doc in results:
    print(doc)