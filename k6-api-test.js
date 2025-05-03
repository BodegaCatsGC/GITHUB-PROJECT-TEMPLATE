import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
  vus: 10,
  duration: '10s',
};

export default function () {
  let res = http.get('http://localhost:8000/');
  check(res, {
    'status is 200': (r) => r.status === 200,
    'body has Hello': (r) => r.body.includes('Hello'),
  });
  sleep(1);
}
