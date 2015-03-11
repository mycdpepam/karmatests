define (require) ->
    ParserPattern = require 'sql_engine/Pattern'
    parser = require 'sql_engine/parserCore'

    describe 'testing "txt" pattern', ->
      it '"txt" pattern should be', ->
        expect(parser.txt).toBeDefined()

      it '"txt" pattern should be a function', ->
        expect(parser.txt).toEqual jasmine.any Function

      it '"txt" pattern should return new instance of Pattern', ->
        txt = new parser.txt((text) ->)
        expect(txt instanceof ParserPattern).toBeTruthy()


    describe 'testing "rgx" pattern' , ->
      it '"rgx" pattern should be', ->
        expect(parser.rgx).toBeDefined()

      it '"rgx" pattern should be a function', ->
        expect(parser.txt).toEqual(jasmine.any(Function))

      it '"rgx" pattern should return new instance of Pattern', ->
        rgx = new parser.rgx((rgx) ->)
        expect(rgx instanceof ParserPattern).toBeTruthy()


    describe 'testing "opt" pattern' , ->
       it '"opt" pattern should be', ->
         expect(parser.opt).toBeDefined()

       it '"opt" pattern should be a function', ->
         expect(parser.opt).toEqual jasmine.any Function

       it '"opt" pattern should return new instance of Pattern', ->
         opt = new parser.opt((opt)->)
         expect(opt instanceof ParserPattern).toBeTruthy()