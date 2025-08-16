DELIMITER $$

CREATE PROCEDURE DisplaySubscriberWatchHistory()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE sub_id INT;

    DECLARE cur CURSOR FOR 
        SELECT SubscriberID FROM Subscribers;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO sub_id;
        IF done = 1 THEN 
            LEAVE read_loop;
        END IF;
        
        SELECT CONCAT('Watch History for Subscriber ID: ', sub_id) AS Info;
        CALL GetWatchHistoryBySubscriber(sub_id);
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;