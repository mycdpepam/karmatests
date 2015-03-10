define (require) ->

  Pattern = require 'sql_engine/Pattern'

  describe "Pattern", ->
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

  describe "Pattern prototype", ->
    it 'constructor should be a Pattern', ->
      expect(Pattern.prototype.constructor).toBe(Pattern)

    it 'prototype should have field "when"', ->
      expect((Pattern.prototype).hasOwnProperty('when')).toBeTruthy()

    it 'prototype field "when" should be a function', ->
      toClass ={}.toString
      expect(toClass.call((Pattern.prototype.when)).slice(8, -1)).toBe('Function')

    it 'prototype field "when" should be a function', ->
      fn = ->
      pattern = new Pattern(fn)
      expect(pattern.when).toEqual jasmine.any Function

    it 'prototype field "when" should be a function', ->
      pattern = new Pattern((str,pos)->)
      toClass ={}.toString
      expect(pattern.when((str,pos)->) instanceof Pattern)
