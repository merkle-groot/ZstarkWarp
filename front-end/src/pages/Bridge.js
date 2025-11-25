import { useState } from 'react';
import './Bridge.css';

function Bridge() {
  const [fromChain, setFromChain] = useState('');
  const [toChain, setToChain] = useState('');
  const [amount, setAmount] = useState('');
  const [recipient, setRecipient] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log('Lorem ipsum transaction:', { fromChain, toChain, amount, recipient });
  };

  return (
    <div className="bridge">
      <div className="bridge-container">
        <h1>Lorem ipsum dolor</h1>
        <p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt</p>

        <form className="bridge-form" onSubmit={handleSubmit}>
          <div className="form-group">
            <label htmlFor="fromChain">Lorem ipsum</label>
            <select
              id="fromChain"
              value={fromChain}
              onChange={(e) => setFromChain(e.target.value)}
              required
            >
              <option value="">Lorem ipsum dolor</option>
              <option value="option1">Lorem ipsum</option>
              <option value="option2">Sit amet</option>
              <option value="option3">Consectetur</option>
              <option value="option4">Adipiscing</option>
            </select>
          </div>

          <div className="form-group">
            <label htmlFor="toChain">Sit amet</label>
            <select
              id="toChain"
              value={toChain}
              onChange={(e) => setToChain(e.target.value)}
              required
            >
              <option value="">Consectetur adipiscing</option>
              <option value="option1">Sed do eiusmod</option>
              <option value="option2">Tempor incididunt</option>
              <option value="option3">Ut enim ad</option>
              <option value="option4">Minim veniam</option>
            </select>
          </div>

          <div className="form-group">
            <label htmlFor="amount">Sed do eiusmod</label>
            <input
              type="number"
              id="amount"
              value={amount}
              onChange={(e) => setAmount(e.target.value)}
              placeholder="Lorem ipsum"
              step="0.01"
              min="0"
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="recipient">Tempor incididunt</label>
            <input
              type="text"
              id="recipient"
              value={recipient}
              onChange={(e) => setRecipient(e.target.value)}
              placeholder="Lorem ipsum..."
              required
            />
          </div>

          <button type="submit" className="bridge-button">
            Lorem ipsum
          </button>
        </form>
      </div>
    </div>
  );
}

export default Bridge;