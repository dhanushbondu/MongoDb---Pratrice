# MONGODB

- MongoDB is a NoSQL database that stores data in JSON-like documents (called BSON).
- This makes it flexible, scalable, and ideal for modern applications where schema may change over time. - Unlike SQL databases, MongoDB doesn’t require a fixed schema.

## why we use

- We use MongoDB to save, find, update, and delete data in software applications in an easy and efficient way.
- You don’t have to write messy code to read/write data from files.
- Data is stored in JSON-like documents — easy to understand.
- Good for big apps that grow over time.

## CRUD

- C = CREATE
- R = READ / RETRIVE
- U = UPDATE
- D = DELETE

- In MongoDB, there is no “table” word like SQL — instead you work with collections (collections = tables).

- to see databases present `show dbs`
- Select / Create Database (first)

```shell
use dhanush  # this will create the database until the collection(table) data inserted.
```

- Create “Table” (Collection)

```shell
db.createCollection("users") # users are the table
```

- hear db is the inbuilt function to work with collections
- to insert a single record

```shell
db.users.insertOne({ name: "Dhanush", age: 21 })
```