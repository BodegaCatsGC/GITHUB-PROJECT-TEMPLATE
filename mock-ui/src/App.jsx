import { useState } from 'react';

function App() {
  const [name, setName] = useState('');
  const [response, setResponse] = useState(null);
  const [loading, setLoading] = useState(false);

  const callHello = async (e) => {
    e.preventDefault();
    setLoading(true);
    setResponse(null);
    let url = '/hello';
    if (name) url += `?name=${encodeURIComponent(name)}`;
    try {
      const res = await fetch(url);
      const data = await res.json();
      setResponse(data);
    } catch (err) {
      setResponse({ error: err.message });
    } finally {
      setLoading(false);
    }
  };

  return (
    <div style={{ fontFamily: 'sans-serif', margin: '2rem' }}>
      <h1>Mock API UI (React + Vite)</h1>
      <form onSubmit={callHello}>
        <label>
          Name (optional):
          <input
            type="text"
            value={name}
            onChange={e => setName(e.target.value)}
            placeholder="World"
            style={{ marginLeft: 8 }}
          />
        </label>
        <button type="submit" style={{ marginLeft: 8 }}>Call /hello</button>
      </form>
      <div style={{ background: '#f4f4f4', padding: '1em', borderRadius: 4, marginTop: '1em', minHeight: 40 }}>
        {loading && 'Loading...'}
        {response && <pre>{JSON.stringify(response, null, 2)}</pre>}
      </div>
    </div>
  );
}

export default App;
