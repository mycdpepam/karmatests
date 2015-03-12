define (require) ->
    ParserPattern = require 'sql_engine/Pattern'
    parser = require 'sql_engine/parserCore'

    describe 'testing "txt" pattern', ->
      it '"txt" pattern should be Defined', ->
        expect(parser.txt).toBeDefined()

      it '"txt" pattern should be a function', ->
        expect(parser.txt).toEqual jasmine.any Function

      it '"txt" pattern should return new instance of Pattern', ->
        txt = new parser.txt((text) ->)
        expect(txt instanceof ParserPattern).toBeTruthy()


    describe 'testing "rgx" pattern' , ->
      it '"rgx" pattern should be Defined', ->
        expect(parser.rgx).toBeDefined()

      it '"rgx" pattern should be a function', ->
        expect(parser.rgx).toEqual(jasmine.any(Function))

      it 'to be error ', ->
        expect(() =>
          parser.rgx 'aaa').toThrowError()



    describe 'testing "opt" pattern' , ->
       it '"opt" pattern should be Defined', ->
         expect(parser.opt).toBeDefined()

       it '"opt" pattern should be a function', ->
         expect(parser.opt).toEqual jasmine.any Function

       it '"opt" pattern should return new instance of Pattern', ->
         opt = new parser.opt((opt)->)
         expect(opt instanceof ParserPattern).toBeTruthy()


    describe 'testing "exc" pattern' , ->
      it '"exc" pattern should be Defined', ->
        expect(parser.exc).toBeDefined()

      it '"exc" pattern should be a function', ->
        expect(parser.exc).toEqual jasmine.any Function




    describe 'testing "any" pattern' , ->
      it '"any" pattern should be Defined', ->
        expect(parser.any).toBeDefined()

      it '"any" pattern should be a function', ->
        expect(parser.any).toEqual jasmine.any Function


    describe 'testing "seq" pattern' , ->
      it '"seq" pattern should be Defined', ->
        expect(parser.seq).toBeDefined()

      it '"seq" pattern should be a function', ->
        expect(parser.seq).toEqual jasmine.any Function

    describe 'testing "rep" pattern' , ->
      it '"seq" pattern should be Defined', ->
        expect(parser.rep).toBeDefined()

      it '"seq" pattern should be a function', ->
        expect(parser.rep).toEqual jasmine.any Function

