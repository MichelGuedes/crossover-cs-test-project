--
-- Copyright (c) 2016, Crossover and/or its affiliates. All rights reserved.
-- CROSSOVER PROPRIETARY/CONFIDENTIAL.
--
--     https://www.crossover.com/
--

START TRANSACTION;

DROP DATABASE IF EXISTS Crossover;
CREATE DATABASE IF NOT EXISTS Crossover
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
USE Crossover;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Crossover.application cascade;
DROP TABLE IF EXISTS Crossover.log cascade;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Crossover.application
(
    application_id varchar(32) NOT NULL,
    display_name   varchar(32) NOT NULL,
    secret         varchar(32) NOT NULL,
    PRIMARY KEY (application_id)
);

CREATE TABLE Crossover.log
(
    log_id         int           NOT NULL AUTO_INCREMENT,
    application_id varchar(32)   NOT NULL,
    logger         varchar(256)  NOT NULL,
    level          varchar(256)  NOT NULL,
    message        varchar(2048) NOT NULL,
    PRIMARY KEY (log_id),
    FOREIGN KEY (application_id) REFERENCES application (application_id)
);

COMMIT;
