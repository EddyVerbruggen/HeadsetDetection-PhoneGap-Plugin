cordova.define("cordova-plugin-headsetdetection.HeadsetDetection", function(require, exports, module) {
  var HeadsetDetection = {
    detect: function (successCallback, errorCallback) {
      cordova.exec(successCallback, errorCallback, "HeadsetDetection", "detect", []);
    },
    registerRemoteEvents: function(actionCallback) {
      this.actionCallback = actionCallback;
    },
    remoteHeadsetRemoved: function() {
      this.actionCallback && this.actionCallback('headsetRemove');
    },
    remoteHeadsetAdded: function() {
      this.actionCallback && this.actionCallback('headsetAdded');
    }
  };

  module.exports = HeadsetDetection;
});
