mongoose = require 'mongoose'
moment = require 'moment'
ObjectId = mongoose.Schema.ObjectId

DaySchema = new mongoose.Schema
  userId: ObjectId
  dateString: String
  checked: Boolean
  notes: [String]

DayModel = mongoose.model 'Day', DaySchema

module.exports =
  Schema: DaySchema
  Model: DayModel