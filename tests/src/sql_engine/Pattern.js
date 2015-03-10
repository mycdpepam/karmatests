define('sql_engine/Pattern', [], function(){
   var Pattern = function (execFn){

      if(typeof(execFn)!="function"){
         throw new Error('incorrect  input parameter')
      }
      this.exec = execFn;
   };

   Pattern.prototype = {
      constructor : Pattern,
      when        : function(transformedFn){
         return new Pattern( function (str, pos){
            var result = this.exec(str, pos || 0);
            return result && {
                   res: transformedFn(result.res),
                   end: result.end
                }
         }.bind(this))
      }
   };
   return Pattern
});