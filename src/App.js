import React, { Component } from 'react';
import './App.css';
import Main from './main';
import {
  Router,
  Route,
  Link
} from 'react-router-dom';
import store from './redux/store/configureStore';
import {Provider} from 'react-redux';
class App extends Component {
  render() {
    return (
      <Provider store = {store} >
            <div style={{height:'100%'}}>
              <Main />
            </div>
        </Provider>
    );
  }
}

export default App;
