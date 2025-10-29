const http = require('http');

const options = { hostname: 'localhost', port: 3000, path: '/', method: 'GET' };

const req = http.request(options, res => {
  if (res.statusCode === 200) {
    console.log('✅ Test passed');
    process.exit(0);
  } else {
    console.error('❌ Test failed with status:', res.statusCode);
    process.exit(1);
  }
});

req.on('error', err => {
  console.error('❌ Error:', err.message);
  process.exit(1);
});

req.end();

