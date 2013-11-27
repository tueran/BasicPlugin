var exec = require('cordova/exec');
/**
 * Constructor
 */
function BasicPlugin() {}

BasicPlugin.prototype.sayHello = function() {
  exec(function(result){
      // result handler
      alert(result);
    },
    function(error){
      // error handler
      alert("Error" + error);
    }, 
    "BasicPlugin", 
    "sayHello", 
    []
  );
}

var basicPlugin = new BasicPlugin();
module.exports = basicPlugin