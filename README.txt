README - SQL Assignment


==================================================================
CS6.302 Software System Development - Lab 2
==================================================================

Student Name: Kushal Karan
Roll Number: 2025204010
------------------------------------------------------------------

Database & Tables:
------------------------------------------------------------------
Database Name: Assignment

1. Subscribers
   - SubscriberID (INT, Primary Key)
   - SubscriberName (VARCHAR(100), Unique)
   - SubscriptionDate (DATE)

2. Shows
   - ShowID (INT, Primary Key)
   - Title (VARCHAR(100))
   - Genre (VARCHAR(50))
   - ReleaseYear (INT)

3. WatchHistory
   - HistoryID (INT, Primary Key)
   - SubscriberID (INT, Foreign Key -> Subscribers.SubscriberID)
   - ShowID (INT, Foreign Key -> Shows.ShowID)
   - WatchTime (INT, minutes)

Assumptions:
------------------------------------------------------------------
1. Each SubscriberName is unique.
2. SubscriberID is handled manually (no auto_increment).
3. WatchTime is stored in minutes.
4. A subscriber may exist without any watch history.
5. Sample data is included in db_setup.sql for testing.
6. I've assumed the Table Data to be present in the 'Assignment' Database

Files Included:
-------------------------------------------------------------------
- q1.sql            -> Procedure ListAllSubscribers() using a cursor
- q2.sql            -> Procedure GetWatchHistoryBySubscriber(IN sub_id INT)
- q3.sql            -> Procedure AddSubscriberIfNotExists(IN subName VARCHAR(100))
- q4.sql            -> Procedure SendWatchTimeReport()
- q5.sql            -> Procedure DisplaySubscriberWatchHistory() with cursor looping through subscribers
- README.txt        -> Instructions (this file)

How to Test Procedures:
-------------------------------------------------------------------
CALL ListAllSubscribers();
CALL GetWatchHistoryBySubscriber(1);
CALL AddSubscriberIfNotExists('John Doe');
CALL SendWatchTimeReport();
CALL DisplaySubscriberWatchHistory();

Git Repository Link:
--------------------------------------------------------------------
https://github.com/codepley/SSD_LAB_ACTIVITY