import React from 'react';
import { Platform } from 'react-native';
import { createStackNavigator } from 'react-navigation-stack';
import { createBottomTabNavigator } from 'react-navigation-tabs';

import TabBarIcon from '../components/TabBarIcon';
import HomeScreen from '../screens/Home';
import EmAltaScreen from '../screens/EmAlta';
import PesquisaScreen from '../screens/Pesquisa';
import DownloadsScreen from '../screens/Downloads';
import ContaScreen from '../screens/Conta';


import Colors from '../constants/Colors';

const config = Platform.select({
  web: { headerMode: 'screen' },
  default: {},
});

//#region Home
const HomeStack = createStackNavigator(
  {
    Home: HomeScreen,
  },
  config
);

HomeStack.navigationOptions = {
  tabBarLabel: 'Home',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon
      focused={focused}
      name='ios-home'
    />
  ),
};

HomeStack.path = '';
//#endregion

//#region Em Alta
const EmAltaStack = createStackNavigator(
  {
    EmAlta: EmAltaScreen,
  },
  config
);

EmAltaStack.navigationOptions = {
  tabBarLabel: 'Em Alta',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon
      focused={focused}
      name='ios-bonfire'
    />
  ),
};

EmAltaStack.path = '';
//#endregion

//#region Pesquisa
const PesquisaStack = createStackNavigator(
  {
    Pesquisa: PesquisaScreen,
  },
  config
);

PesquisaStack.navigationOptions = {
  tabBarLabel: 'Pesquisa',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name='ios-search' />
  ),
};

PesquisaStack.path = '';
//#endregion

//#region Downloads
const DownloadsStack = createStackNavigator(
  {
    Downloads: DownloadsScreen,
  },
  config
);

DownloadsStack.navigationOptions = {
  tabBarLabel: 'Downloads',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name='ios-download' />
  ),
};

DownloadsStack.path = '';
//#endregion

//#region Conta
const ContaStack = createStackNavigator(
  {
    Conta: ContaScreen,
  },
  config
);

ContaStack.navigationOptions = {
  tabBarLabel: 'Conta',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name='md-contact' />
  ),
};

ContaStack.path = '';
//#endregion

const tabNavigator = createBottomTabNavigator({
  HomeStack,
  EmAltaStack,
  PesquisaStack,
  DownloadsStack,
  ContaStack,
},{
  tabBarOptions: {
    activeTintColor: Colors.tabTextSelected,   
    labelStyle: {
      fontWeight:'bold',
    },
    style: {
      backgroundColor: '#B13655',
    },
  }
});

tabNavigator.path = '';

export default tabNavigator;


