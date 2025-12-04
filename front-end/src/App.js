import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { Toaster } from 'react-hot-toast';
import Navbar from './components/Navbar';
import Bridge from './pages/Bridge';
import About from './pages/About';
import './App.css';

function App() {
  return (
    <Router>
      <div className="App">
        <Navbar />
        <main>
          <Routes>
            <Route path="/" element={<Bridge />} />
            <Route path="/about" element={<About />} />
          </Routes>
        </main>
        <Toaster
          position="top-right"
          toastOptions={{
            duration: 4000,
            style: {
              background: '#000',
              color: '#9EFF9E',
              border: '1px solid #9EFF9E',
              fontFamily: "'Fira Code', 'Courier', monospace",
            },
            success: {
              duration: 3000,
              iconTheme: {
                primary: '#9EFF9E',
                secondary: '#000',
              },
            },
            error: {
              duration: 5000,
              iconTheme: {
                primary: '#ff6b6b',
                secondary: '#000',
              },
            },
          }}
        />
      </div>
    </Router>
  );
}

export default App;
