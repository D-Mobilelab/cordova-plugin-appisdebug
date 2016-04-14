var exec = require('cordova/exec');

/**
 * 
 * @param {Function} success: success callback;
 *                            it will be called with an object
 *                            like this: {"debug":true}
 * 
 * @param {Function} error:   error callback;
 * 
 */
exports.get = function(success, error) {
    exec(success, error, "AppIsDebug", "get", []);
};
