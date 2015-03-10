define (require) ->

  Pattern = require 'sql_engine/Pattern'

  describe "Test", ->
    it "should work", ->
      expect(true).toBe(true)

    it 'should be defined', ->
      expect(Pattern).toBeDefined()



