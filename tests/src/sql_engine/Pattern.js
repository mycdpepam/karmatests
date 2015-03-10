define('sql_engine/Pattern', [], function(){
   var Pattern = function (execFn){
      this.exec = execFn;
   };

   return Pattern
});