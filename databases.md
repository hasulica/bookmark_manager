Understanding Databases
===

Data persistence
---
In the context of storing data, persistence refers to the data surviving even after the process that created it has ended. Specifically, this data needs to be written on non-volatile storage for long term use.

Session vs file-system vs database persistence
---
### Session
By and large, data created during a session (either during a web-session or a OS session) does not persist after the session has ended.

### File System
Generally file systems are persistent as the OS commits file changes to the hard-drive(non-volatile) storage.

### Databases
Database persistence indicates that data is stored on non-volatile storage and it's not confined to session so it can be access long after the system that generated it has ended.


Relational vs NoSQL Databases
===
Relational databases store data based on a pre-defined model that cannot easily be changed. The mapping is similar to OOP in that each table represents a class and each row represents an instance of that class. Advantages of this model are that is allow for complex queries and it is a very well supported model.

NoSQL databases are those that do not conform to the relational model and are in general used for big data due to their flexibility and speed. E.g. key-value, column stores etc.
