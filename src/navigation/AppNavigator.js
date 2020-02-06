import React from 'react';
import { createAppContainer, createSwitchNavigator } from 'react-navigation';
import { createStackNavigator } from 'react-navigation-stack';

import MainTabNavigator from './MainTabNavigator';

export default createAppContainer(
  createSwitchNavigator({    
    Main: MainTabNavigator,
  },
  
  
  )
);
