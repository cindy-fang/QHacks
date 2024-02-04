import React, { useState } from 'react';
import { RiMenu3Line, RiCloseLine } from 'react-icons/ri';
import logo from '../../logo.svg';
import './navbar.css';

const Navbar = () => {
  const [toggleMenu, setToggleMenu] = useState(false);
  return (
    <div className="eyetunes__navbar">
      <div className="eyetunes__navbar-links">
        <div className="eyetunes__navbar-links_logo">
          <img src={logo} />
        </div>
        <div className="eyetunes__navbar-links_container">
          <p><a href="#home">Home</a></p>
          <p><a href="#info">EyeTunes</a></p>
        </div>
      </div>
      <div className="eyetunes__navbar-menu">
        {toggleMenu
          ? <RiCloseLine color="#fff" size={27} onClick={() => setToggleMenu(false)} />
          : <RiMenu3Line color="#fff" size={27} onClick={() => setToggleMenu(true)} />}
        {toggleMenu && (
        <div className="eyetunes__navbar-menu_container scale-up-center">
          <div className="eyetunes__navbar-menu_container-links">
            <p><a href="#home">Home</a></p>
            <p><a href="#info">EyeTunes</a></p>
          </div>
        </div>
        )}
      </div>
    </div>
  );
};

export default Navbar;