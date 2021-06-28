/* Add specific persission to develop user */
GRANT USAGE,SELECT,INSERT,UPDATE ON HHTEDDB.* TO 'DHBRED'@'%';
FLUSH PRIVILEGES;