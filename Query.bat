use dhanush
switched to db dhanush
show dbs
admin    40.00 KiB
config   36.00 KiB
dhanush  72.00 KiB
local    72.00 KiB
db.createCollection("student")
{ ok: 1 }
db.student.find().pretty()
db.student.insertMany([
  {id:30108, name:"dhanush"},
  {id:30034, name:"vamsi"},
  {id:30032,name:"navadeep"},{id:30160, name:"sumanth"}
])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('697a2cb540c4383286ad6019'),
    '1': ObjectId('697a2cb540c4383286ad601a'),
    '2': ObjectId('697a2cb540c4383286ad601b'),
    '3': ObjectId('697a2cb540c4383286ad601c')
  }
}
db.student.find()
{
  _id: ObjectId('697a2cb540c4383286ad6019'),
  id: 30108,
  name: 'dhanush'
}
{
  _id: ObjectId('697a2cb540c4383286ad601a'),
  id: 30034,
  name: 'vamsi'
}
{
  _id: ObjectId('697a2cb540c4383286ad601b'),
  id: 30032,
  name: 'navadeep'
}
{
  _id: ObjectId('697a2cb540c4383286ad601c'),
  id: 30160,
  name: 'sumanth'
}
db.student.find().pretty()

{
  _id: ObjectId('697a2cb540c4383286ad6019'),
  id: 30108,
  name: 'dhanush'
}
{
  _id: ObjectId('697a2cb540c4383286ad601a'),
  id: 30034,
  name: 'vamsi'
}
{
  _id: ObjectId('697a2cb540c4383286ad601b'),
  id: 30032,
  name: 'navadeep'
}
db.student.find(
  {id:{$lte:30034}}
)
{
  _id: ObjectId('697a2cb540c4383286ad601a'),
  id: 30034,
  name: 'vamsi'
}
db.student.updateOne(
  {name:"dhanush"},
  {$set:{name:"dahnush_update"}}
)
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
db.student.find(
  {id:{$lte:30108}}
)
{
  _id: ObjectId('697a2cb540c4383286ad6019'),
  id: 30108,
  name: 'dahnush_update'
}
{
  _id: ObjectId('697a2cb540c4383286ad601a'),
  id: 30034,
  name: 'vamsi'
}
{
  _id: ObjectId('697a2cb540c4383286ad601b'),
  id: 30032,
  name: 'navadeep'
}
db.student.deleteOne({name:"navadeep"})
{
  acknowledged: true,
  deletedCount: 1
}
db.student.find(
)
{
  _id: ObjectId('697a2cb540c4383286ad6019'),
  id: 30108,
  name: 'dahnush_update'
}
{
  _id: ObjectId('697a2cb540c4383286ad601a'),
  id: 30034,
  name: 'vamsi'
}

