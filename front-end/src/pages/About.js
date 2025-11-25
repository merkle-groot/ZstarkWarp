import './About.css';

function About() {
  return (
    <div className="about">
      <div className="about-container">
        <h1>Lorem ipsum dolor</h1>

        <section className="section">
          <h2>Sit amet consectetur</h2>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
          </p>
        </section>

        <section className="section">
          <h2>Adipiscing elit</h2>
          <div className="tech-grid">
            <div className="tech-item">
              <h3>Sed do eiusmod</h3>
              <p>Tempor incididunt ut labore et dolore magna aliqua</p>
            </div>
            <div className="tech-item">
              <h3>Ut enim ad minim</h3>
              <p>Quis nostrud exercitation ullamco laboris</p>
            </div>
            <div className="tech-item">
              <h3>Duis aute irure</h3>
              <p>Dolor in reprehenderit in voluptate velit esse cillum</p>
            </div>
          </div>
        </section>

        <section className="section">
          <h2>Dolor sit amet</h2>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
          </p>
        </section>

        <section className="section">
          <h2>Consectetur adipiscing</h2>
          <div className="contact-info">
            <p>📧 lorem@ipsum.com</p>
            <p>🐦 Twitter: @LoremIpsum</p>
            <p>💬 Discord: Lorem ipsum</p>
            <p>📖 Documentation: lorem.ipsum.com</p>
          </div>
        </section>
      </div>
    </div>
  );
}

export default About;