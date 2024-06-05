CREATE DATABASE IF NOT EXISTS `sample-images` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sample-images`;

create table if not exists images
(
    `id`        int(11)         auto_increment    primary key,
    `filename`  varchar(255)    not null,
    `filesize`  int             not null
);
