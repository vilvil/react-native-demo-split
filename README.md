# React Native Bundle Splitter

Split config: [splitconfig](./split-example/.splitconfig).

## Why just an EXAMPLE (not a complete library)

RN Bundle split is not just "split", it should also take two point into consideration:

- **How to use them**, means native code framework change, because RN native part not support loading script in demand.
- **Project structure**, you should have a clean project dependency graph (recursive dependency is bad).

So, I don't want to make it to a library which be common to use.

In this example, it have clear project structure and some hack to RN framework (by reflection in Java). All split-bundle related code is in **src** directory, use them with pleasure:)

## Project Structure

```
/root
 |- /src
   |- /components
     |- /packagea
       |- SampleA.js      => Entry1
       |- ApiOfSampleA.js => Refered in SampleA.js
     |- /packageb
       |- SampleB         => Entry2
       |- ApiOfSampleA.js => Refered in SampleA.js
   |- /modules
     |- index.js      => Append to base
     |- ModuleA.js    => Refered in index.js
     |- ModuleB.js    => Refered in index.js
 |- base.js          => Entry of base
 |- resolveInject.js => Resolve splitted resource
```

## Usage

```
android:
npm install
node ../index.js --platform android --output build --config .splitconfig --dev false

iOS:
npm install
node ../index.js --platform ios --output build/ios --config .splitconfig --dev false
```
See example [run-example.sh](./split-example/run-example.sh).

## Run Example

```
cd split-example
npm install
./run-example.sh
```

## License
```
  Source repository ：desmond1121/react-native-split, Modify to support iOS Demo.
```

```
  Copyright 2017 vilvil

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
```


# react-native-demo-split
