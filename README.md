# React Native Level Up News Letter

## GIF Scenes



## Email

This weeks topic is on integrating Firebase with RN using
(react-native-firestack)[https://github.com/fullstackreact/react-native-firestack]

```langauge-bash
npm install react-native-firestack --save
react-native link react-native-firestack

# For this example
npm install react-native-camera --save
react-native link react-native-camera
```

```langauge-plist
Media
```

```language-jsx
import React {
  Component,
} from 'react';

import {
  Text,
} from 'react-native';

import Camera from 'react-native-camera';
import Firestack from 'react-native-firestack';

const firebaseOptions = {
  apiKey: "XXXXXXXXXXXX-XXXXXXXXXXX-XX-XXXXXXXXXXX",
  authDomain: "XXXX.firebaseapp.com",
  databaseURL: "https://XXXX.firebaseio.com",
  storageBucket: "XXXX.appspot.com",
};

const firestack = new Firestack(firebaseOptions);

export default UploadPhotoComponent extends Component {

  uploadCameraPhoto = () => {
    const uniqueId = Math.random().toString(36).substring(7);
    const fileOptions = {
      contentType: 'image/jpeg',
      contentEncoding: 'base64',
    };

    this.camera.capture()
      .then(({ path }) => firestack.storage.uploadFile(`photos/${uniqueId}`, path, fileOptions))
      .catch(err => console.error(err));
  }

  render() {
    return (
      <Camera
        aspect={Camera.constants.Aspect.fill}
        captureTarget={Camera.constants.CaptureTarget.temp}
        ref={(cam) => this.camera = cam}
        style={styles.preview}
      >
        <Text
          onPress={() => this.uploadCameraPhoto()}
          style={styles.capture}
        >
          [CAPTURE]
        </Text>
      </Camera>
    );
  }

}

```
