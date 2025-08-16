DELIMITER $$

CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE cnt INT;
    DECLARE newId INT;

    SELECT COUNT(*) INTO cnt 
    FROM Subscribers 
    WHERE LOWER(SubscriberName) = LOWER(subName);

    IF cnt = 0 THEN
		SELECT IFNULL(MAX(SubscriberID), 0) + 1 INTO newId FROM Subscribers;

        INSERT INTO Subscribers (SubscriberID, SubscriberName, SubscriptionDate)
        VALUES (newId, subName, CURDATE());
        SELECT CONCAT(subName, ' added successfully') AS Message;
    ELSE
        SELECT CONCAT(subName, ' already exists') AS Message;
    END IF;
END$$

DELIMITER ;

