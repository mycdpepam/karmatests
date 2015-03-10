define (require) ->

  Pattern = require 'sql_engine/Pattern'

  describe "Test", ->
    it "should work", ->
      expect(true).toBe(true)

    it 'should be defined', ->
      expect(Pattern).toBeDefined()

    it 'should be a error', ->
      obj = {}
      expect(-> new Pattern(obj)).toThrowError(/^incorrect.+input/)

    it 'should be correcr input parametr', ->
      func = () ->
      expect(-> new Pattern(func)).toBeTruthy()


