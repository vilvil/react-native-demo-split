import React from 'react';
import {
  View,
  Text,
    Image
} from 'react-native';
import ApiOfSampleB from './ApiOfSampleB';
import {
  FuncA, FuncB
} from 'example/src/modules';

class SampleB extends React.Component {
  render() {
    FuncA();
    FuncB();
    ApiOfSampleB();
    return (
      <View>
        <View style={{height:40}}/>
        <Text>This is MainB</Text>
        <Image style={{width:200,height:100}} source={{uri:'http://imgtu.5011.net/uploads/content/20170315/9988821489563870.jpg'}}/>
      </View>
    );
  }
}

const AppRegistry = require('AppRegistry');
AppRegistry.registerComponent('SampleB', () => SampleB);

module.exports = SampleB;
