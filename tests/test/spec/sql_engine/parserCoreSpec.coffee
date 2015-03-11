define (require) ->
    ParserPattern = require 'sql_engine/Pattern'
    parser = require 'sql_engine/parserCore'

    describe 'testing "txt" pattern', ->
      it '"txt" pattern should be', ->
        expect(parser.txt).toBeDefined()

      it '"txt" pattern should be a function', ->
        expect(parser.txt).toEqual jasmine.any Function

      it '"txt" pattern should return new instance of Pattern', ->
        txt = new parser.txt((str, pos) ->)
        console.log(txt)
        expect(txt instanceof ParserPattern).toBeTruthy()