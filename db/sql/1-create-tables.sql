DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `history`;

create table IF not exists `users`
(
 `user_id`          VARCHAR(36) NOT NULL,
 `user_name`        VARCHAR(120) NOT NULL,
 `created_at`       Datetime DEFAULT NULL,
 `updated_at`       Datetime DEFAULT NULL,
    PRIMARY KEY (`user_id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

create table IF not exists `history`
(
 `id`               INT(20) AUTO_INCREMENT,
 `user_id`          VARCHAR(36) NOT NULL,
 `user_name`        VARCHAR(120) NOT NULL,
 `operation_type`   VARCHAR(120) NOT NULL,
 `idempotency_key`  VARCHAR(36) NOT NULL,
 `created_at`       Datetime DEFAULT NULL,
 `updated_at`       Datetime DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX index_1(user_id),
    INDEX index_2(idempotency_key),
    FOREIGN KEY fk_user (user_id) references users(user_id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;