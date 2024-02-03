import React from 'react';
import Feature from '../../components/feature/Feature';
import './info.css';

const Info = () => (
  <div className="gpt3__whatgpt3 section__margin" id="wgpt3">
    <div className="gpt3__whatgpt3-feature">
      <Feature title="What is EyeTunes" text="Our solution is a revolutionary multimedia platform that seamlessly combines photos and videos with interactive sound. By integrating these elements, we enhance memory recall and emotional connections for individuals with dementia, enabling them to remember and engage with their past in a more vivid and meaningful way." />
    </div>
    <div className="gpt3__whatgpt3-heading">
      <h1 className="gradient__text">The memories are beyond your pictures</h1>
    </div>
    <div className="gpt3__whatgpt3-container">
      <Feature title="Feature 1" text="plenty of consent" />
      <Feature title="Feature 2" text="plenty of consent" />
      <Feature title="Feature 3" text="I am going to EAT" />
    </div>
  </div>
);

export default Info;

