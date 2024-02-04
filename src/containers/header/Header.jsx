import React from 'react';
import ai from '../../assets/joji-vr.png';
import './header.css';

const Header = () => {
  const handleGetStarted = () => {
    window.location.href = 'https://github.com/cindy-fang/QHacks';
  };

  return (
    <div className="eyetunes__header section__padding" id="home">
      <div className="eyetunes__header-content">
        <h1 className="gradient__text">EyeRemember</h1>
        <p>Transform any object into a multimedia experience just by looking at it. Say goodbye to traditional interfaces and hello to a world where your gaze is your remote control.</p>
        <div className="eyetunes__header-content__input">
          <button type="button" onClick={handleGetStarted}>Get Started</button>
        </div>
      </div>

      <div className="eyetunes__header-image">
        <img src={ai} alt="AI" />
      </div>
    </div>
  );
};

export default Header;
