# Pltktest2

## Test's reporter: Alex, Kolyago
------

## Task 2. Creating table

~~~~sql
CREATE DATABASE pltktest2;
USE pltktest2;

CREATE TABLE reasons_to_work_in_playtika ( id INT AUTO_INCREMENT PRIMARY KEY, insert_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(), reason VARCHAR (2048) );

INSERT INTO reasons_to_work_in_playtika(reason) VALUES('I finished the DevOps course at it-academy yesterday and I am one of the few wh
o successfully completed the project.');
INSERT INTO reasons_to_work_in_playtika(reason) VALUES('Now I have even more time to improve my English. An internship in an international company is the best option to get a lot of practice.');
INSERT INTO reasons_to_work_in_playtika(reason) VALUES('I am sure that I can do a lot of useful things in such a famous company. And to prove that the decision to give me a second chance was not in vain.');
INSERT INTO reasons_to_work_in_playtika(reason) VALUES('My successful completion of the DevOps course will give me an edge. And the ability to concentrate on other skills, like English.');
INSERT INTO reasons_to_work_in_playtika(reason) VALUES('Peace!:)');
~~~~

## Task 2. Creating dump

```bash
sudo mysqldump --databases pltktest2 > dump.sql
```

## Task 3. If we want to do task3.sh periodically (every 4 hours), we have to configuring cron

```bash
crontab -e
```
to add the line:

```bash
0 */4 * * * /path/to/task3.sh
```

## Bonus_tast

1. We can connect to my-gw-01.srv.dc2 using ssh
2. Create ssh tunnel
```bash
ssh -L 9999:127.0.0.1:3306 root@my-private-db.srv.dc2
```
Finally - connect and enter your pass:
```bash
mysql -P 9999 -h 127.0.0.1 -u user_db -p
```