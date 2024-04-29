CREATE DATABASE IF NOT EXISTS `sample-contacts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sample-contacts`;

create table if not exists contacts
(
    id              int auto_increment      primary key,
    firstname       varchar(255)            not null,
    lastname        varchar(255)            not null,
    email           varchar(255)            not null,
    update_time     timestamp default current_timestamp()   not null on update current_timestamp()
);

create table if not exists sync_history
(
    id              int auto_increment      primary key,
    status          int                     not null,
    message         varchar(255)            not null,
    last_sync       timestamp               not null
);