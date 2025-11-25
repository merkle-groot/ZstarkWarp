import React from 'react';
import './Home.css';

function Home() {
  return (
    <div className="home">
      <div className="hero">
        <h1>Lorem ipsum dolor sit amet</h1>
        <p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
      </div>
      <div className="features">
        <div className="feature">
          <h3>Lorem ipsum</h3>
          <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
        </div>
        <div className="feature">
          <h3>Ut enim ad minim</h3>
          <p>Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</p>
        </div>
        <div className="feature">
          <h3>Duis aute irure</h3>
          <p>Dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
        </div>
      </div>
    </div>
  );
}

export default Home;