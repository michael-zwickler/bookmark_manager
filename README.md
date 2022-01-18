# Bookmark Manager

## User Stories:

```
As a user,
So I can see all my bookmarks,
I want to view all my stored bookmarks.
```

Bookmarks ==> view_all()

## SQL Setup

### For production

1. Connect to `psql`
2. Create the database using `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `psql` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

### For testing

1. Connect to `psql`
2. Create the database using `psql` command `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database using the `psql` command `\c bookmark_manager_test;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
