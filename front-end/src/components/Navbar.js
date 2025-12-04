import React from 'react';
import { Link, useLocation } from 'react-router-dom';
import './Navbar.css';

function Navbar() {
  const location = useLocation();

  return (
    <nav className="navbar">
      <div className="nav-header">
        <Link to="/" className="main-logo">
          ZStarkWarp
        </Link>
      </div>
    </nav>
  );
}

export default Navbar;