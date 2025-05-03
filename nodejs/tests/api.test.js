// Example API test for Node.js using supertest and jest
const request = require('supertest');
const baseURL = 'http://localhost:3000';

describe('API Endpoints', () => {
  it('GET / should return 200 and greeting', async () => {
    const res = await request(baseURL).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.text).toMatch(/Hello/);
  });
});
