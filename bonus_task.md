# Bonus_tast

1. We can connect to my-gw-01.srv.dc2 using ssh
2. Create ssh tunnel
```bash
ssh -L 9999:127.0.0.1:3306 root@my-private-db.srv.dc2
```
Finally - connect and enter your pass:
```bash
mysql -P 9999 -h 127.0.0.1 -u user_db -p
```