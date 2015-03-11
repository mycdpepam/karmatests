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
        expect(parser.txt).toEqual(jasmine.any(Function))

      it '"rgx" pattern should return new instance of Pattern', ->
        rgx = new parser.rgx((rgx) ->)
        expect(rgx instanceof ParserPattern).toBeTruthy()

      it '"rgx" pattern should trow Error when input data is not correct', ->
        toClass ={}.toString
        regExp = /a/
        rgx = new parser.rgx(regExp)

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

      it '"exc" pattern should return new instance of Pattern', ->
        expect(new parser.exc (->) instanceof  ParserPattern).toBeTruthy()


#exc: any:  seq:   rep: