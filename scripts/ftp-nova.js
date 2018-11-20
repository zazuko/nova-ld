var Client = require('ftp')
var fs = require('fs')

const ftpout = 'tmp/nova.zip'
const nova = '/PROD/DATEN/98.20181112-1431.P.P.5303.0/datenrelease_98.20181112-1431.P.P.5303.0.zip'

  var c = new Client();
  c.on('ready', function() {
    c.get(nova, function(err, stream) {
      if (err) throw err;
      stream.once('close', function() { c.end(); });
      stream.pipe(fs.createWriteStream(ftpout));
    });
  });

c.connect({
  host: 'ftp.sbb.ch',
  user: process.env.FTP_USER,
  password: process.env.FTP_PASSWORD
})