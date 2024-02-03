import React from 'react';

import { Footer, Info, Header } from './containers';
import { Navbar } from './components';

import './App.css';

const App = () => (
  <div className="App">
    <div className="gradient__bg">
      <Navbar />
      <Header />
    </div>
    <Info />
    <Footer />
  </div>
);

export default App;