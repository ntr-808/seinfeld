module.exports = [
  'dayService',
  class CalendarController
    constructor: (dayService) ->
      @service = dayService
      @days = @service.dates

      @service.getEntries()
      @selectDay @days[@days.length - 1] # default to today

    selectDay: (day) =>
      @service.selectDay(day)

    enterDay: (day) =>
      @service.toggleDay(day)
      @service.enterDay(day)
      @service.selectDay(day)

    response: (e) =>
      if e then console.log 'do something about errros'
      console.log 'great success'
]