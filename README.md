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
- to use the database `use <databaseName>`
- to see databases present `show dbs`
- Select / Create Database (first)

```shell
use dhanush  # this will create the database until the collection(table) data inserted.
```

- Create “Table” (Collection)

```shell
db.createCollection("users") # users are the table
```

- to drop(delete) the table `db.users.drop()`
- to delete entire databases `db.dropDatabase()`

- hear db is the inbuilt function to work with collections
- to insert a single record

```shell
db.users.insertOne({ name: "Dhanush", age: 21 })
```

- to insert many records at a single time

```shell
db.users.insertMany([
  { name: "Bob", age: 22 },
  { name: "Charlie", age: 28 }
])
```

- to chage the collection name `db.student.renameCollection("users")`
- to get all collections present in databases `db.getCollectionNames()`

```shell
find() = gets data  #db.users.find()
pretty() = makes data readable #db.users.find().pretty()
```

## Arthematical expressions

age less-than will retrive `db.users.find({ age: { $lt: 30 } }).pretty()`

```md
| Operator | Meaning               |
| -------- | --------------------- |
| `$gt`    | Greater than          |
| `$lt`    | Less than             |
| `$gte`   | Greater than or equal |
| `$lte`   | Less than or equal    |
| `$ne`    | Not equal             |
| `$in`    | In array of values    |
| `$nin`   | Not in array          |
```

- to get specific row from collection `db.users.find({id: 2}) will get the id = 2's data`

## Logical Operator

```md
| Operator | Meaning                               |
| -------- | ------------------------------------- |
| `$and`   | All conditions must be true           |
| `$or`    | Any one condition can be true         |
| `$not`   | Negates (reverses) a condition        |
| `$nor`   | None of the conditions should be true |
```

Syntax

```shell
db.collection.find({
  LOGICAL_OPERATOR: [
    { condition1 },
    { condition2 }
  ]
})
```

Example

```shell
db.users.find({
  $and: [
    { age: { $gt: 20 } },
    { city: "Hyderabad" }
  ]
})
```

- to update the single record

```shell
db.users.updateOne(
  { name: "Alice" },
  { $set: { city: "Hyderabad" } }
)
```

- to update many records

```shell
db.users.updateMany(
  { age: { $lt: 25 } },  #lt= lessthan
  { $set: { status: "young" } }
)
```

- Replaces the entire document instead of updating selected fields.

```shell
db.users.replaceOne(
  { name: "Bob" },
  { name: "Bob", age: 29, city: "Vijayawada" }
)
```
