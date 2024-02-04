import React from 'react';

import { Footer, Info, Header } from './containers';

import './App.css';

const App = () => (
  <div className="App">
    <div className="gradient__bg">
      <Header />
    </div>
    <Info />
    <Footer />
  </div>
);

export default App;