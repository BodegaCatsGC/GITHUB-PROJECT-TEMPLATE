// Example API test for TypeScript using supertest and jest
import request from 'supertest';
const baseURL = 'http://localhost:3000';

describe('API Endpoints', () => {
  it('GET / should return 200 and greeting', async () => {
    const res = await request(baseURL).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.text).toMatch(/Hello/);
  });
});
