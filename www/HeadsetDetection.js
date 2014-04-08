function HeadsetDetection() {
}

HeadsetDetection.prototype.detect = function (successCallback, errorCallback) {
  cordova.exec(successCallback, errorCallback, "HeadsetDetection", "detect", []);
};

HeadsetDetection.install = function () {
  if (!window.plugins) {
    window.plugins = {};
  }

  window.plugins.headsetdetection = new HeadsetDetection();
  return window.plugins.headsetdetection;
};

cordova.addConstructor(HeadsetDetection.install);