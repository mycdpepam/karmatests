define('sql_engine/parserCore', ['sql_engine/Pattern'], function(Pattern){
   'use strict';

    var toClass ={}.toString;

    return {
        txt: function(text){
            return new Pattern(function(str,pos){
              if(str.substring(pos, text.lenght) == str){
                  return { res : text,
                           end : pos + text.lenght}
              }else{
                  throw Error('inccorrect input parametrs')
              }
            })
        },

        rgx: function(regexp){
            //if(toClass.call(regexp)).slice(8, -1))
            var inputParam = (toClass.call(regexp)).slice(8, -1);
            console.log(inputParam)
            return new Pattern(function(str, pos){
                var result = regexp.exec(str.slice(pos))
                if(result){
                    return {
                        res: '',
                        end: ''
                    }
                }
                throw new Error ('incorrect input paramentrs')
            })
        },

        opt: function(pattern){
            return new Pattern(function(str, pos){

            })
        },

       exc: function(){

       }
    }
});