To speed up the search process

To view the index present in the table
```mysql
show index from tablename;
```
In default primary key, unique and foreign key are initially set us index to speed up the data retrieval..

Create an Index for column we cant define all columns as index
```mysql
create index indexname on tablename(columnname);
```

To drop the index
```mysql
alter table tablename drop index indexname;
```

---

