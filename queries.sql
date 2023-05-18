INSERT INTO client(name) VALUES('Isael Huard'), ('Miggel Huard'), ('Cynthia Huard');
INSERT INTO account(client_id, account_number, `type`) VALUES(1, 780159753, 'Chequing'), (1, 789123456, 'Savings'), (2, 654987351, 'Investing'), (3, 159753654, 'Chequing'), (3, 369174825, 'Investing');
INSERT INTO `transaction`(client_id, account_id, `type`, `timestamp`, amount) VALUES(1, 16, 'Withdrawal', CURRENT_TIMESTAMP, 123.36), (1,17,'Deposit', CURRENT_TIMESTAMP, 5269.12);
INSERT INTO `transaction`(client_id, account_id, `type`, `timestamp`, amount) VALUES(2, 18, 'Deposit', CURRENT_TIMESTAMP, 12398.36), (2,18,'Withdrawal', CURRENT_TIMESTAMP, 9634.21);
INSERT INTO `transaction`(client_id, account_id, `type`, `timestamp`, amount) VALUES(3, 19, 'Withdrawal', CURRENT_TIMESTAMP, 56.78), (3,20,'Deposit', CURRENT_TIMESTAMP, 789.45);
INSERT INTO `transaction`(client_id, account_id, `type`, `timestamp`, amount) VALUES(1, 16, 'Deposit', CURRENT_TIMESTAMP, 2000.00);

SELECT client.name, account.account_number, account.`type` FROM client INNER JOIN account ON client.id = account.client_id;
SELECT account.account_number, `transaction`.`timestamp`, `transaction`.amount FROM `transaction` INNER JOIN account ON `transaction`.account_id  = account.id WHERE account.`type` = 'Chequing' AND `transaction`.amount >= 1000;
SELECT client.name, account.account_number, `transaction`.amount FROM `transaction` INNER JOIN account ON `transaction`.account_id = account.id INNER JOIN client ON `transaction`.client_id = client.id WHERE client.id = 2 AND account.`type` = 'Investing';