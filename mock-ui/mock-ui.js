// Simple JS for Mock API UI
const helloForm = document.getElementById('hello-form');
const helloResponse = document.getElementById('hello-response');

helloForm.addEventListener('submit', async (e) => {
  e.preventDefault();
  const name = document.getElementById('name').value;
  let url = 'http://localhost:8000/hello'; // Default to Python FastAPI
  if (name) url += `?name=${encodeURIComponent(name)}`;
  helloResponse.style.display = 'block';
  helloResponse.textContent = 'Loading...';
  try {
    const res = await fetch(url);
    const data = await res.json();
    helloResponse.textContent = JSON.stringify(data, null, 2);
  } catch (err) {
    helloResponse.textContent = 'Error: ' + err;
  }
});
