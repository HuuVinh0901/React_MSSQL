const express = require('express');
const sql = require('mssql');
const app = express();

// Cấu hình kết nối SQL Server
const config = {
  user: 'sa',
  password: 'sapassword',
  server: 'localhost', // Nếu bạn chạy SQL Server cục bộ
  database: 'reactjs',
  options: {
    encrypt: false, // Đặt `false` nếu bạn không dùng SSL
    enableArithAbort: true
  }
};

// Kết nối tới SQL Server
sql.connect(config, err => {
  if (err) {
    console.error('SQL connection error:', err);
    return;
  }
  console.log('Connected to SQL Server!');
});

app.get('/api/news', (req, res) => {
  const request = new sql.Request();
  const query = 'SELECT * FROM news';

  request.query(query, (err, result) => {
    if (err) {
      console.error('Error executing query:', err);
      res.status(500).send('Error executing query');
      return;
    }
    res.json({ news: result.recordset });
  });
});

app.listen(4000, () => {
  console.log('App listening on port 4000');
});
