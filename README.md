# HeadsetDetection-PhoneGap-Plugin

by [Eddy Verbruggen](http://www.x-services.nl) / [@eddyverbruggen](http://www.twitter.com/eddyverbruggen)

1. [Description](https://github.com/EddyVerbruggen/HeadsetDetection-PhoneGap-Plugin#1-description)
2. [Installation](https://github.com/EddyVerbruggen/HeadsetDetection-PhoneGap-Plugin#2-installation)
3. [Usage](https://github.com/EddyVerbruggen/HeadsetDetection-PhoneGap-Plugin#3-usage)
4. [Credits](https://github.com/EddyVerbruggen/HeadsetDetection-PhoneGap-Plugin#4-credits)
5. [License](https://github.com/EddyVerbruggen/HeadsetDetection-PhoneGap-Plugin#5-license)

## 1. Description

Detect a wired or wireless (Bluetooth) headset, connected to you phone.

* Works on Android, probably every version you'd care about.
* Works on iOS 6+

## 2. Installation
```bash
$ cordova plugin add cordova-plugin-headsetdetection
$ cordova prepare
```

## 3. Usage
```html
<button onclick="window.HeadsetDetection.detect(function(detected) {alert(detected)})">headphone detected?</button>
```
The successCallback (first argument) is a boolean (true or false). Couldn't be easier :)

### 3.1 Usage with event-based detection

If you need to respond to removal or added headset while your app i running, you can use the `HeadsetDetection.registerRemoteEvents` function and listen for either `headsetAdded` or `headsetRemoved`:

```js
document.addEventListener('deviceready', function() {
    window.HeadsetDetection.registerRemoteEvents(function(status) {
        switch (status) {
            case 'headsetAdded':
                alert('Headset was added');
            break;
            case 'headsetRemoved':
                alert('Headset was removed');
            break;
        };
    });
}, false);
```

## 4. CREDITS ##

This plugin was created by and enhanced for Plugman / PhoneGap Build by [Eddy Verbruggen](http://www.x-services.nl).

The awesome `registerRemoteEvents` function was added by [Gerhard Sletten](https://github.com/gerhardsletten).

## 5. License

[The MIT License (MIT)](http://www.opensource.org/licenses/mit-license.html)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
