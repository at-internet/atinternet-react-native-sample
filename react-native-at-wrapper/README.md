# react-native-at-wrapper

## Getting started

`$ npm install react-native-at-wrapper --save`

### Mostly automatic installation

`$ react-native link react-native-at-wrapper`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-at-wrapper` and add `AtWrapper.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libAtWrapper.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.AtWrapperPackage;` to the imports at the top of the file
  - Add `new AtWrapperPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-at-wrapper'
  	project(':react-native-at-wrapper').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-at-wrapper/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-at-wrapper')
  	```


## Usage
```javascript
import AtWrapper from 'react-native-at-wrapper';

// TODO: What to do with the module?
AtWrapper;
```
