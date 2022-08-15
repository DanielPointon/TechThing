DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    username varchar(255),
    password_hash varchar(255),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS `access_tokens`;
CREATE TABLE `access_tokens` (
    id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    access_token varchar(255),
    expires datetime,
    PRIMARY key(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks` (
    id int NOT NULL AUTO_INCREMENT,
    stock_symbol varchar(255),
    exchange varchar(255),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS `user_trades`;
CREATE TABLE `user_trades` (
    id int NOT NULL AUTO_INCREMENT,
    user_id  int,
    stock_id int NOT NULL,
    trade_type enum('buy', 'sell'),
    amount float,
    time_of_trade datetime,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (stock_id) REFERENCES stocks(id)
);

DROP TABLE IF EXISTS `stock_values`;
CREATE TABLE `stock_values` (
    id int NOT NULL AUTO_INCREMENT,
    stock_id int,
    stock_value float,
    amount float,
    time_of_value datetime,
    PRIMARY KEY (id),
    FOREIGN KEY (stock_id) REFERENCES stocks(id)
);