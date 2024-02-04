import React from 'react';
import Feature from '../../components/feature/Feature';
import './info.css';

const Info = () => (
  <div className="eyetunes__info section__margin" id="info">
    <div className="eyetunes__info-feature">
      <Feature title="EyeRemember" text="EyeRemember is not just an app; it's a revolution—a virtual reality gallery that transforms your memories and collectibles from mere items into immersive experiences. With EyeRemember, you don't just view your memories; you step into them, reliving each moment in a vivid 3D VR Museum World. This innovative platform allows users to navigate through their cherished memories and collectibles with the simplicity of their gaze, eliminating the barriers between the user and their past, making every interaction a journey back in time." />
    </div>
    <div className="eyetunes__info-heading">
      <h1 className="gradient__text">The memories beyond your photoframes.</h1>
    </div>
    <div className="eyetunes__info-container">
      <Feature title="Preserving 3D Objects" text="Unlock a richer dimension of storytelling and memory preservation." />
      <Feature title="Preserving Video" text="Bridge the gap between static visuals and dynamic experiences, fostering deeper connections and shared moments for all." />
      <Feature title="Preserving Audio" text="Enhance memory recall and emotional connections, engage with your past in a more vivid and meaningful way." />
    </div>
  </div>
);

export default Info;

