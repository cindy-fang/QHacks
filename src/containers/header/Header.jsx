import React from 'react';
import ai from '../../assets/possibility.png';
import './header.css';

const Header = () => {
  const handleGetStarted = () => {
    window.location.href = 'https://youtu.be/N7SHIw9rfyg?si=IzE5Q3d80e1i2o2k';
  };

  return (
    <div className="eyetunes__header section__padding" id="home">
      <div className="eyetunes__header-content">
        <h1 className="gradient__text">EyeTunes: Redefining Vision-Driven Interaction.</h1>
        <p>EyeTunes is the future of interactivity. With our VR headset program, you can transform any object into a multimedia experience just by looking at it. Say goodbye to traditional interfaces and hello to a world where your gaze is your remote control.</p>

        <div className="eyetunes__header-content__input">
          <input type="email" placeholder="Your Email Address" />
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
