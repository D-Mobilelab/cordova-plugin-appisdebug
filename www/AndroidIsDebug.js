var exec = require('cordova/exec');

exports.AndroidIsDebug = function(success, error) {
    exec(success, error, "AndroidIsDebug", "isDebug", []);
};
