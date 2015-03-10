define('sql_engine/Pattern', [], function(){
   var Pattern = function (execFn){

      if(typeof(execFn)!="function"){
         throw new Error('incorrect  input parameter')
      }
      this.exec = execFn;
   };

   return Pattern
});