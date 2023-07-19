use cookshoong_shop_prod;

drop table account_address;

drop table coupon_logs;

drop table coupon_log_type;

drop table coupon_type_cash;

drop table coupon_type_percent;

drop table coupon_usage_all;

drop table coupon_usage_merchant;

drop table coupon_usage_store;

drop table deliveries;

drop table holiday;

drop table issue_coupons;

drop table coupon_policy;

drop table coupon_types;

drop table coupon_usage;

drop table menu_has_menu_groups;

drop table menu_groups;

drop table menu_has_option_groups;

drop table oauth_accounts;

drop table oauth_type;

drop table order_detail_menu_option;

drop table options;

drop table option_groups;

drop table order_details;

drop table menu;

drop table menu_status;

drop table point_logs;

drop table point_reason_orders;

drop table point_reason_review;

drop table point_reason_signup;

drop table point_reason;

drop table refunds;

drop table charges;

drop table charge_types;

drop table refund_types;

drop table review_reply;

drop table review;

drop table orders;

drop table order_status;

drop table business_hours;

drop table day_types;

drop table stores_has_categories;

drop table store_categories;

drop table stores;

drop table accounts;

drop table account_status;

drop table addresses;

drop table authorities;

drop table bank_types;

drop table merchants;

drop table ranks;

drop table store_status;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE TABLE IF NOT EXISTS  `store_status` (
                                               `store_status_code` VARCHAR(10) NOT NULL,
                                               `description` VARCHAR(30) NULL,
                                               PRIMARY KEY (`store_status_code`))
    ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS  `bank_types` (
                                             `bank_type_code` VARCHAR(10) NOT NULL,
                                             `description` VARCHAR(45) NULL,
                                             PRIMARY KEY (`bank_type_code`))
    ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS  `authorities` (
                                              `authority_code` VARCHAR(10) NOT NULL,
                                              `description` VARCHAR(10) NOT NULL,
                                              PRIMARY KEY (`authority_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `ranks` (
                                        `rank_code` VARCHAR(10) NOT NULL,
                                        `name` VARCHAR(10) NOT NULL,
                                        PRIMARY KEY (`rank_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `accounts_status` (
                                                  `status_code` VARCHAR(10) NOT NULL,
                                                  `description` VARCHAR(10) NOT NULL,
                                                  PRIMARY KEY (`status_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `accounts` (
                                           `account_id` BIGINT NOT NULL AUTO_INCREMENT,
                                           `rank_code` VARCHAR(10) NOT NULL,
                                           `status_code` VARCHAR(10) NOT NULL,
                                           `authority_code` VARCHAR(10) NOT NULL,
                                           `login_id` VARCHAR(30) NOT NULL,
                                           `password` CHAR(60) NOT NULL,
                                           `name` VARCHAR(30) NOT NULL,
                                           `nickname` VARCHAR(30) NULL,
                                           `email` VARCHAR(320) NOT NULL,
                                           `birthday` DATE NOT NULL,
                                           `phone_number` CHAR(11) NOT NULL,
                                           `last_login_at` DATETIME NOT NULL,
                                           PRIMARY KEY (`account_id`),
                                           UNIQUE INDEX `login_id` (`login_id` ASC) VISIBLE,
                                           INDEX `FK_authorities_TO_accounts_1` (`authority_code` ASC) VISIBLE,
                                           INDEX `FK_ranks_TO_accounts_1` (`rank_code` ASC) VISIBLE,
                                           INDEX `FK_status_TO_accounts_1` (`status_code` ASC) VISIBLE,
                                           CONSTRAINT `FK_authorities_TO_accounts_1`
                                               FOREIGN KEY (`authority_code`)
                                                   REFERENCES  `authorities` (`authority_code`),
                                           CONSTRAINT `FK_ranks_TO_accounts_1`
                                               FOREIGN KEY (`rank_code`)
                                                   REFERENCES  `ranks` (`rank_code`),
                                           CONSTRAINT `FK_status_TO_accounts_1`
                                               FOREIGN KEY (`status_code`)
                                                   REFERENCES  `accounts_status` (`status_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `addresses` (
                                            `address_id` BIGINT NOT NULL AUTO_INCREMENT,
                                            `main_place` VARCHAR(80) NOT NULL,
                                            `detail_place` VARCHAR(80) NULL DEFAULT NULL,
                                            `latitude` DECIMAL(10,7) NOT NULL,
                                            `longitude` DECIMAL(10,7) NOT NULL,
                                            PRIMARY KEY (`address_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `account_address` (
                                                  `account_id` BIGINT NOT NULL,
                                                  `address_id` BIGINT NOT NULL,
                                                  `alias` VARCHAR(10) NOT NULL DEFAULT '기본',
                                                  PRIMARY KEY (`account_id`, `address_id`),
                                                  INDEX `FK_addresses_TO_account_address_1` (`address_id` ASC) VISIBLE,
                                                  CONSTRAINT `FK_accounts_TO_account_address_1`
                                                      FOREIGN KEY (`account_id`)
                                                          REFERENCES  `accounts` (`account_id`),
                                                  CONSTRAINT `FK_addresses_TO_account_address_1`
                                                      FOREIGN KEY (`address_id`)
                                                          REFERENCES  `addresses` (`address_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `charge_types` (
                                               `charge_type_id` BIGINT NOT NULL AUTO_INCREMENT,
                                               `name` VARCHAR(30) NOT NULL,
                                               PRIMARY KEY (`charge_type_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `order_status` (
                                               `order_status_code` VARCHAR(10) NOT NULL,
                                               `description` VARCHAR(40) NOT NULL,
                                               PRIMARY KEY (`order_status_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `merchants` (
                                            `merchant_id` BIGINT NOT NULL AUTO_INCREMENT,
                                            `name` VARCHAR(20) NOT NULL,
                                            PRIMARY KEY (`merchant_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `stores` (
                                         `store_id` BIGINT NOT NULL AUTO_INCREMENT,
                                         `merchant_id` BIGINT NULL DEFAULT NULL,
                                         `address_id` BIGINT NOT NULL,
                                         `account_id` BIGINT NOT NULL,
                                         `bank_type_code` VARCHAR(10) NOT NULL,
                                         `store_status_code` VARCHAR(10) NOT NULL,
                                         `business_license` CHAR(40) NOT NULL,
                                         `business_license_number` CHAR(10) NOT NULL,
                                         `representative_name` VARCHAR(30) NOT NULL,
                                         `opening_date` DATE NOT NULL,
                                         `name` VARCHAR(40) NOT NULL,
                                         `phone_number` VARCHAR(12) NOT NULL,
                                         `default_earning_rate` DECIMAL(4,1) NOT NULL DEFAULT 0,
                                         `description` TEXT NULL DEFAULT NULL,
                                         `image` CHAR(40) NULL DEFAULT NULL,
                                         `bank_account_number` VARCHAR(20) NOT NULL,
                                         PRIMARY KEY (`store_id`),
                                         UNIQUE INDEX `business_license_number` (`business_license_number` ASC) VISIBLE,
                                         INDEX `FK_accounts_TO_stores_1` (`account_id` ASC) VISIBLE,
                                         INDEX `FK_addresses_TO_stores_1` (`address_id` ASC) VISIBLE,
                                         INDEX `FK_merchants_TO_stores_1` (`merchant_id` ASC) VISIBLE,
                                         INDEX `fk_stores_store_status1_idx` (`store_status_code` ASC) VISIBLE,
                                         INDEX `fk_stores_bank_types1_idx` (`bank_type_code` ASC) VISIBLE,
                                         CONSTRAINT `FK_accounts_TO_stores_1`
                                             FOREIGN KEY (`account_id`)
                                                 REFERENCES  `accounts` (`account_id`),
                                         CONSTRAINT `FK_addresses_TO_stores_1`
                                             FOREIGN KEY (`address_id`)
                                                 REFERENCES  `addresses` (`address_id`),
                                         CONSTRAINT `FK_merchants_TO_stores_1`
                                             FOREIGN KEY (`merchant_id`)
                                                 REFERENCES  `merchants` (`merchant_id`),
                                         CONSTRAINT `fk_stores_store_status1`
                                             FOREIGN KEY (`store_status_code`)
                                                 REFERENCES  `store_status` (`store_status_code`)
                                                 ON DELETE NO ACTION
                                                 ON UPDATE NO ACTION,
                                         CONSTRAINT `fk_stores_bank_types1`
                                             FOREIGN KEY (`bank_type_code`)
                                                 REFERENCES  `bank_types` (`bank_type_code`)
                                                 ON DELETE NO ACTION
                                                 ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `orders` (
                                         `order_code` BINARY(16) NOT NULL,
                                         `order_status_code` VARCHAR(10) NOT NULL,
                                         `account_id` BIGINT NOT NULL,
                                         `store_id` BIGINT NOT NULL,
                                         `ordered_at` DATETIME NOT NULL,
                                         `memo` VARCHAR(100) NULL DEFAULT NULL,
                                         PRIMARY KEY (`order_code`),
                                         INDEX `FK_accounts_TO_orders_1` (`account_id` ASC) VISIBLE,
                                         INDEX `FK_order_status_TO_orders_1` (`order_status_code` ASC) VISIBLE,
                                         INDEX `FK_stores_TO_orders_1` (`store_id` ASC) VISIBLE,
                                         CONSTRAINT `FK_accounts_TO_orders_1`
                                             FOREIGN KEY (`account_id`)
                                                 REFERENCES  `accounts` (`account_id`),
                                         CONSTRAINT `FK_order_status_TO_orders_1`
                                             FOREIGN KEY (`order_status_code`)
                                                 REFERENCES  `order_status` (`order_status_code`),
                                         CONSTRAINT `FK_stores_TO_orders_1`
                                             FOREIGN KEY (`store_id`)
                                                 REFERENCES  `stores` (`store_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `charges` (
                                          `charge_code` BINARY(16) NOT NULL,
                                          `charge_type_id` BIGINT NOT NULL COMMENT 'AI',
                                          `order_code` BINARY(16) NOT NULL,
                                          `charged_at` DATETIME NOT NULL,
                                          `charged_amount` INT UNSIGNED NOT NULL,
                                          PRIMARY KEY (`charge_code`),
                                          INDEX `FK_charge_types_TO_charges_1` (`charge_type_id` ASC) VISIBLE,
                                          INDEX `FK_orders_TO_charges_1` (`order_code` ASC) VISIBLE,
                                          CONSTRAINT `FK_charge_types_TO_charges_1`
                                              FOREIGN KEY (`charge_type_id`)
                                                  REFERENCES  `charge_types` (`charge_type_id`),
                                          CONSTRAINT `FK_orders_TO_charges_1`
                                              FOREIGN KEY (`order_code`)
                                                  REFERENCES  `orders` (`order_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `coupon_log_type` (
                                                  `coupon_log_type_id` INT NOT NULL AUTO_INCREMENT,
                                                  `name` VARCHAR(10) NOT NULL,
                                                  PRIMARY KEY (`coupon_log_type_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `coupon_types` (
                                               `coupon_type_id` INT NOT NULL AUTO_INCREMENT,
                                               PRIMARY KEY (`coupon_type_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `coupon_usage` (
                                               `coupon_usage_id` BIGINT NOT NULL AUTO_INCREMENT,
                                               PRIMARY KEY (`coupon_usage_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `coupon_policy` (
                                                `coupon_policy_id` BIGINT NOT NULL AUTO_INCREMENT,
                                                `coupon_type_id` INT NOT NULL,
                                                `coupon_usage_id` BIGINT NOT NULL,
                                                `name` VARCHAR(20) NOT NULL,
                                                `description` VARCHAR(50) NOT NULL,
                                                `expiration_time` TIME NOT NULL,
                                                PRIMARY KEY (`coupon_policy_id`),
                                                INDEX `FK_coupon_types_TO_coupon_policy_1` (`coupon_type_id` ASC) VISIBLE,
                                                INDEX `FK_coupon_usage_TO_coupon_policy_1` (`coupon_usage_id` ASC) VISIBLE,
                                                CONSTRAINT `FK_coupon_types_TO_coupon_policy_1`
                                                    FOREIGN KEY (`coupon_type_id`)
                                                        REFERENCES  `coupon_types` (`coupon_type_id`),
                                                CONSTRAINT `FK_coupon_usage_TO_coupon_policy_1`
                                                    FOREIGN KEY (`coupon_usage_id`)
                                                        REFERENCES  `coupon_usage` (`coupon_usage_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `issue_coupons` (
                                                `issue_coupon_code` CHAR(36) NOT NULL,
                                                `account_id` BIGINT NULL DEFAULT NULL,
                                                `coupon_id` BIGINT NOT NULL,
                                                `issue_at` DATETIME NOT NULL,
                                                `expiration_at` DATETIME NULL,
                                                PRIMARY KEY (`issue_coupon_code`),
                                                INDEX `FK_accounts_TO_issue_coupons_1` (`account_id` ASC) VISIBLE,
                                                INDEX `FK_coupon_policy_TO_issue_coupons_1` (`coupon_id` ASC) VISIBLE,
                                                CONSTRAINT `FK_accounts_TO_issue_coupons_1`
                                                    FOREIGN KEY (`account_id`)
                                                        REFERENCES  `accounts` (`account_id`),
                                                CONSTRAINT `FK_coupon_policy_TO_issue_coupons_1`
                                                    FOREIGN KEY (`coupon_id`)
                                                        REFERENCES  `coupon_policy` (`coupon_policy_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `coupon_logs` (
                                              `coupon_logs_id` BIGINT NOT NULL AUTO_INCREMENT,
                                              `issue_coupon_code` VARCHAR(36) NOT NULL,
                                              `coupon_log_type_id` INT NOT NULL COMMENT 'AI',
                                              `order_code` BINARY(16) NOT NULL,
                                              `record_date` DATETIME NOT NULL,
                                              PRIMARY KEY (`coupon_logs_id`),
                                              INDEX `FK_coupon_log_type_TO_coupon_logs_1` (`coupon_log_type_id` ASC) VISIBLE,
                                              INDEX `FK_issue_coupons_TO_coupon_logs_1` (`issue_coupon_code` ASC) VISIBLE,
                                              INDEX `FK_orders_TO_coupon_logs_1` (`order_code` ASC) VISIBLE,
                                              CONSTRAINT `FK_coupon_log_type_TO_coupon_logs_1`
                                                  FOREIGN KEY (`coupon_log_type_id`)
                                                      REFERENCES  `coupon_log_type` (`coupon_log_type_id`),
                                              CONSTRAINT `FK_issue_coupons_TO_coupon_logs_1`
                                                  FOREIGN KEY (`issue_coupon_code`)
                                                      REFERENCES  `issue_coupons` (`issue_coupon_code`),
                                              CONSTRAINT `FK_orders_TO_coupon_logs_1`
                                                  FOREIGN KEY (`order_code`)
                                                      REFERENCES  `orders` (`order_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `coupon_type_cash` (
                                                   `coupon_type_id` INT NOT NULL AUTO_INCREMENT,
                                                   `discount_amount` INT NOT NULL,
                                                   `minimum_price` INT NULL DEFAULT NULL,
                                                   PRIMARY KEY (`coupon_type_id`),
                                                   CONSTRAINT `FK_coupon_types_TO_coupon_type_cash_1`
                                                       FOREIGN KEY (`coupon_type_id`)
                                                           REFERENCES  `coupon_types` (`coupon_type_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `coupon_type_percent` (
                                                      `coupon_type_id` INT NOT NULL AUTO_INCREMENT,
                                                      `rate` DECIMAL(4,1) NOT NULL,
                                                      `minimum_price` INT NULL DEFAULT NULL,
                                                      `maximum_price` INT NOT NULL,
                                                      PRIMARY KEY (`coupon_type_id`),
                                                      CONSTRAINT `FK_coupon_types_TO_coupon_type_percent_1`
                                                          FOREIGN KEY (`coupon_type_id`)
                                                              REFERENCES  `coupon_types` (`coupon_type_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `coupon_usage_all` (
                                                   `coupon_usage_id` BIGINT NOT NULL,
                                                   PRIMARY KEY (`coupon_usage_id`),
                                                   CONSTRAINT `FK_coupon_usage_TO_coupon_usage_all_1`
                                                       FOREIGN KEY (`coupon_usage_id`)
                                                           REFERENCES  `coupon_usage` (`coupon_usage_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `coupon_usage_merchant` (
                                                        `coupon_usage_id` BIGINT NOT NULL,
                                                        `merchant_id` BIGINT NOT NULL,
                                                        PRIMARY KEY (`coupon_usage_id`),
                                                        INDEX `FK_merchants_TO_coupon_usage_merchant_1` (`merchant_id` ASC) VISIBLE,
                                                        CONSTRAINT `FK_coupon_usage_TO_coupon_usage_merchant_1`
                                                            FOREIGN KEY (`coupon_usage_id`)
                                                                REFERENCES  `coupon_usage` (`coupon_usage_id`),
                                                        CONSTRAINT `FK_merchants_TO_coupon_usage_merchant_1`
                                                            FOREIGN KEY (`merchant_id`)
                                                                REFERENCES  `merchants` (`merchant_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `coupon_usage_store` (
                                                     `coupon_usage_id` BIGINT NOT NULL,
                                                     `store_id` BIGINT NOT NULL,
                                                     PRIMARY KEY (`coupon_usage_id`),
                                                     INDEX `fk_coupon_usage_store_stores1_idx` (`store_id` ASC) VISIBLE,
                                                     CONSTRAINT `FK_coupon_usage_TO_coupon_usage_store_1`
                                                         FOREIGN KEY (`coupon_usage_id`)
                                                             REFERENCES  `coupon_usage` (`coupon_usage_id`),
                                                     CONSTRAINT `fk_coupon_usage_store_stores1`
                                                         FOREIGN KEY (`store_id`)
                                                             REFERENCES  `stores` (`store_id`)
                                                             ON DELETE NO ACTION
                                                             ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `day_code` (
                                           `day_code` CHAR(3) NOT NULL,
                                           `description` CHAR(3) NOT NULL,
                                           PRIMARY KEY (`day_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `deliveries` (
                                             `delivery_code` BINARY(16) NOT NULL,
                                             `order_code` BINARY(16) NOT NULL,
                                             `delivery_fee` INT NOT NULL,
                                             `store_address` VARCHAR(160) NOT NULL,
                                             `delivery_address` VARCHAR(160) NOT NULL,
                                             `delivery_start_at` DATETIME NOT NULL,
                                             `delivery_end_at` DATETIME NULL DEFAULT NULL,
                                             PRIMARY KEY (`delivery_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `holiday` (
                                          `holiday_id` BIGINT NOT NULL AUTO_INCREMENT,
                                          `store_id` BIGINT NOT NULL,
                                          `holiday_date` DATE NOT NULL,
                                          PRIMARY KEY (`holiday_id`),
                                          INDEX `FK_stores_TO_holiday_1` (`store_id` ASC) VISIBLE,
                                          CONSTRAINT `FK_stores_TO_holiday_1`
                                              FOREIGN KEY (`store_id`)
                                                  REFERENCES  `stores` (`store_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `menu_groups` (
                                              `menu_group_id` BIGINT NOT NULL AUTO_INCREMENT,
                                              `store_id` BIGINT NOT NULL,
                                              `name` VARCHAR(30) NOT NULL,
                                              `description` VARCHAR(200) NULL DEFAULT NULL,
                                              `menu_group_sequence` INT NOT NULL,
                                              PRIMARY KEY (`menu_group_id`),
                                              INDEX `FK_stores_TO_menu_groups_1` (`store_id` ASC) VISIBLE,
                                              CONSTRAINT `FK_stores_TO_menu_groups_1`
                                                  FOREIGN KEY (`store_id`)
                                                      REFERENCES  `stores` (`store_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `menu` (
                                       `menu_id` BIGINT NOT NULL AUTO_INCREMENT,
                                       `name` VARCHAR(30) NOT NULL,
                                       `price` INT UNSIGNED NOT NULL,
                                       `description` TEXT NULL DEFAULT NULL,
                                       `image` CHAR(40) NULL DEFAULT NULL,
                                       `cooking_time` INT NOT NULL COMMENT '분단위',
                                       `earning_rate` DECIMAL(4,1) NULL,
                                       `is_sold_out` TINYINT NOT NULL,
                                       PRIMARY KEY (`menu_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `menu_has_menu_groups` (
                                                       `menu_group_id` BIGINT NOT NULL,
                                                       `menu_id` BIGINT NOT NULL,
                                                       `menu_sequence` INT NOT NULL,
                                                       PRIMARY KEY (`menu_group_id`, `menu_id`),
                                                       INDEX `FK_menus_TO_menus_has_menu_groups_1` (`menu_id` ASC) VISIBLE,
                                                       CONSTRAINT `FK_menu_groups_TO_menus_has_menu_groups_1`
                                                           FOREIGN KEY (`menu_group_id`)
                                                               REFERENCES  `menu_groups` (`menu_group_id`),
                                                       CONSTRAINT `FK_menus_TO_menus_has_menu_groups_1`
                                                           FOREIGN KEY (`menu_id`)
                                                               REFERENCES  `menu` (`menu_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `option_groups` (
                                                `option_group_id` INT NOT NULL AUTO_INCREMENT,
                                                `store_id` BIGINT NOT NULL,
                                                `name` VARCHAR(50) NOT NULL,
                                                `min_select_count` INT NULL,
                                                `max_select_count` INT NULL,
                                                PRIMARY KEY (`option_group_id`),
                                                INDEX `fk_option_groups_stores1_idx` (`store_id` ASC) VISIBLE,
                                                CONSTRAINT `fk_option_groups_stores1`
                                                    FOREIGN KEY (`store_id`)
                                                        REFERENCES  `stores` (`store_id`)
                                                        ON DELETE NO ACTION
                                                        ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `menus_has_option_groups` (
                                                          `menu_id` BIGINT NOT NULL,
                                                          `option_group_id` INT NOT NULL,
                                                          `price` INT UNSIGNED NOT NULL DEFAULT '0',
                                                          `option_sequence` INT NOT NULL,
                                                          PRIMARY KEY (`menu_id`, `option_group_id`),
                                                          INDEX `fk_menus_has_option_groups_menus1_idx` (`menu_id` ASC) VISIBLE,
                                                          CONSTRAINT `fk_menus_has_option_groups_option_groups1`
                                                              FOREIGN KEY (`option_group_id`)
                                                                  REFERENCES  `option_groups` (`option_group_id`)
                                                                  ON DELETE NO ACTION
                                                                  ON UPDATE NO ACTION,
                                                          CONSTRAINT `fk_menus_has_option_groups_menus1`
                                                              FOREIGN KEY (`menu_id`)
                                                                  REFERENCES  `menu` (`menu_id`)
                                                                  ON DELETE NO ACTION
                                                                  ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `oauth_type` (
                                             `oauth_type_id` INT NOT NULL AUTO_INCREMENT,
                                             `provider` VARCHAR(10) NOT NULL,
                                             PRIMARY KEY (`oauth_type_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `oauth_accounts` (
                                                 `account_id` BIGINT NOT NULL AUTO_INCREMENT,
                                                 `oauth_type_id` INT NOT NULL,
                                                 `account_code` VARCHAR(30) NOT NULL,
                                                 PRIMARY KEY (`account_id`),
                                                 INDEX `FK_oauth_type_TO_oauth_accounts_1` (`oauth_type_id` ASC) VISIBLE,
                                                 CONSTRAINT `FK_accounts_TO_oauth_accounts_1`
                                                     FOREIGN KEY (`account_id`)
                                                         REFERENCES  `accounts` (`account_id`),
                                                 CONSTRAINT `FK_oauth_type_TO_oauth_accounts_1`
                                                     FOREIGN KEY (`oauth_type_id`)
                                                         REFERENCES  `oauth_type` (`oauth_type_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `options` (
                                          `option_id` BIGINT NOT NULL AUTO_INCREMENT,
                                          `option_group_id` INT NOT NULL,
                                          `name` VARCHAR(20) NOT NULL,
                                          `option_sequence` INT NOT NULL,
                                          PRIMARY KEY (`option_id`),
                                          INDEX `fk_options_option_groups1_idx` (`option_group_id` ASC) VISIBLE,
                                          CONSTRAINT `fk_options_option_groups1`
                                              FOREIGN KEY (`option_group_id`)
                                                  REFERENCES  `option_groups` (`option_group_id`)
                                                  ON DELETE NO ACTION
                                                  ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `order_details` (
                                                `order_detail_id` BIGINT NOT NULL AUTO_INCREMENT,
                                                `order_code` BINARY(16) NOT NULL,
                                                `menu_id` BIGINT NOT NULL,
                                                `count` INT UNSIGNED NOT NULL DEFAULT '1',
                                                `now_cost` INT NOT NULL,
                                                PRIMARY KEY (`order_detail_id`),
                                                INDEX `FK_orders_TO_order_details_1` (`order_code` ASC) VISIBLE,
                                                INDEX `fk_order_details_menus1_idx` (`menu_id` ASC) VISIBLE,
                                                CONSTRAINT `FK_orders_TO_order_details_1`
                                                    FOREIGN KEY (`order_code`)
                                                        REFERENCES  `orders` (`order_code`),
                                                CONSTRAINT `fk_order_details_menus1`
                                                    FOREIGN KEY (`menu_id`)
                                                        REFERENCES  `menu` (`menu_id`)
                                                        ON DELETE NO ACTION
                                                        ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `order_detail_menu_option` (
                                                           `option_id` BIGINT NOT NULL,
                                                           `order_detail_id` BIGINT NOT NULL,
                                                           PRIMARY KEY (`option_id`, `order_detail_id`),
                                                           INDEX `fk_order_detail_menu_option_order_details1_idx` (`order_detail_id` ASC) VISIBLE,
                                                           CONSTRAINT `fk_order_detail_menu_option_options1`
                                                               FOREIGN KEY (`option_id`)
                                                                   REFERENCES  `options` (`option_id`)
                                                                   ON DELETE NO ACTION
                                                                   ON UPDATE NO ACTION,
                                                           CONSTRAINT `fk_order_detail_menu_option_order_details1`
                                                               FOREIGN KEY (`order_detail_id`)
                                                                   REFERENCES  `order_details` (`order_detail_id`)
                                                                   ON DELETE NO ACTION
                                                                   ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `point_reason` (
                                               `point_reason_id` BIGINT NOT NULL AUTO_INCREMENT,
                                               PRIMARY KEY (`point_reason_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `point_logs` (
                                             `point_logs_id` BIGINT NOT NULL AUTO_INCREMENT,
                                             `account_id` BIGINT NOT NULL,
                                             `point_reason_id` BIGINT NOT NULL,
                                             `point_movement` INT NOT NULL,
                                             `point_at` DATETIME NOT NULL,
                                             PRIMARY KEY (`point_logs_id`),
                                             INDEX `FK_accounts_TO_point_logs_1` (`account_id` ASC) VISIBLE,
                                             INDEX `FK_point_reason_TO_point_logs_1` (`point_reason_id` ASC) VISIBLE,
                                             CONSTRAINT `FK_accounts_TO_point_logs_1`
                                                 FOREIGN KEY (`account_id`)
                                                     REFERENCES  `accounts` (`account_id`),
                                             CONSTRAINT `FK_point_reason_TO_point_logs_1`
                                                 FOREIGN KEY (`point_reason_id`)
                                                     REFERENCES  `point_reason` (`point_reason_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `point_reason_orders` (
                                                      `point_reason_id` BIGINT NOT NULL,
                                                      `order_code` BINARY(16) NOT NULL,
                                                      INDEX `FK_orders_TO_point_reason_orders_1` (`order_code` ASC) VISIBLE,
                                                      PRIMARY KEY (`point_reason_id`),
                                                      CONSTRAINT `FK_orders_TO_point_reason_orders_1`
                                                          FOREIGN KEY (`order_code`)
                                                              REFERENCES  `orders` (`order_code`),
                                                      CONSTRAINT `fk_point_reason_orders_point_reason1`
                                                          FOREIGN KEY (`point_reason_id`)
                                                              REFERENCES  `point_reason` (`point_reason_id`)
                                                              ON DELETE NO ACTION
                                                              ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `review` (
                                         `review_id` BIGINT NOT NULL,
                                         `order_code` BINARY(16) NOT NULL,
                                         `contents` TEXT NOT NULL,
                                         `rating` INT NOT NULL,
                                         `image` CHAR(40) NULL DEFAULT NULL,
                                         `written_at` DATETIME NOT NULL,
                                         PRIMARY KEY (`review_id`),
                                         INDEX `FK_orders_TO_review_1` (`order_code` ASC) VISIBLE,
                                         CONSTRAINT `FK_orders_TO_review_1`
                                             FOREIGN KEY (`order_code`)
                                                 REFERENCES  `orders` (`order_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `point_reason_review` (
                                                      `point_reason_id` BIGINT NOT NULL,
                                                      `review_id` BIGINT NOT NULL,
                                                      UNIQUE INDEX `review_id` (`review_id` ASC) VISIBLE,
                                                      PRIMARY KEY (`point_reason_id`),
                                                      CONSTRAINT `FK_review_TO_point_reason_review_1`
                                                          FOREIGN KEY (`review_id`)
                                                              REFERENCES  `review` (`review_id`),
                                                      CONSTRAINT `fk_point_reason_review_point_reason1`
                                                          FOREIGN KEY (`point_reason_id`)
                                                              REFERENCES  `point_reason` (`point_reason_id`)
                                                              ON DELETE NO ACTION
                                                              ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `point_reason_signup` (
                                                      `point_reason_id` BIGINT NOT NULL,
                                                      `account_id` BIGINT NOT NULL,
                                                      UNIQUE INDEX `account_id` (`account_id` ASC) VISIBLE,
                                                      PRIMARY KEY (`point_reason_id`),
                                                      CONSTRAINT `FK_accounts_TO_point_reason_signup_1`
                                                          FOREIGN KEY (`account_id`)
                                                              REFERENCES  `accounts` (`account_id`),
                                                      CONSTRAINT `fk_point_reason_signup_point_reason1`
                                                          FOREIGN KEY (`point_reason_id`)
                                                              REFERENCES  `point_reason` (`point_reason_id`)
                                                              ON DELETE NO ACTION
                                                              ON UPDATE NO ACTION)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


CREATE TABLE IF NOT EXISTS  `refund_types` (
                                               `refund_type_id` BIGINT NOT NULL AUTO_INCREMENT,
                                               `name` VARCHAR(30) NOT NULL,
                                               PRIMARY KEY (`refund_type_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `refunds` (
                                          `refund_code` BINARY(16) NOT NULL,
                                          `refund_type_id` BIGINT NOT NULL,
                                          `charge_code` BINARY(16) NOT NULL,
                                          `refunded_at` DATETIME NOT NULL,
                                          `refund_amount` INT UNSIGNED NOT NULL,
                                          PRIMARY KEY (`refund_code`),
                                          INDEX `FK_charges_TO_refunds_1` (`charge_code` ASC) VISIBLE,
                                          INDEX `FK_refund_types_TO_refunds_1` (`refund_type_id` ASC) VISIBLE,
                                          CONSTRAINT `FK_charges_TO_refunds_1`
                                              FOREIGN KEY (`charge_code`)
                                                  REFERENCES  `charges` (`charge_code`),
                                          CONSTRAINT `FK_refund_types_TO_refunds_1`
                                              FOREIGN KEY (`refund_type_id`)
                                                  REFERENCES  `refund_types` (`refund_type_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `review_reply` (
                                               `review_reply_id` BIGINT NOT NULL AUTO_INCREMENT,
                                               `review_id` BIGINT NOT NULL,
                                               `contents` TEXT NOT NULL,
                                               `written_at` DATETIME NOT NULL,
                                               PRIMARY KEY (`review_reply_id`),
                                               INDEX `FK_review_TO_review_reply_1` (`review_id` ASC) VISIBLE,
                                               CONSTRAINT `FK_review_TO_review_reply_1`
                                                   FOREIGN KEY (`review_id`)
                                                       REFERENCES  `review` (`review_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `store_business_hours` (
                                                       `business_hours_id` BIGINT NOT NULL AUTO_INCREMENT,
                                                       `store_id` BIGINT NOT NULL,
                                                       `day_code` CHAR(3) NOT NULL,
                                                       `open_hour` TIME NOT NULL,
                                                       `close_hour` TIME NOT NULL,
                                                       PRIMARY KEY (`business_hours_id`),
                                                       INDEX `FK_day_code_TO_store_business_hours_1` (`day_code` ASC) VISIBLE,
                                                       INDEX `FK_stores_TO_store_business_hours_1` (`store_id` ASC) VISIBLE,
                                                       CONSTRAINT `FK_day_code_TO_store_business_hours_1`
                                                           FOREIGN KEY (`day_code`)
                                                               REFERENCES  `day_code` (`day_code`),
                                                       CONSTRAINT `FK_stores_TO_store_business_hours_1`
                                                           FOREIGN KEY (`store_id`)
                                                               REFERENCES  `stores` (`store_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `store_categories` (
                                             `category_code` VARCHAR(10) NOT NULL,
                                             `description` VARCHAR(30) NOT NULL,
                                             PRIMARY KEY (`category_code`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS  `stores_has_categories` (
                                                         `store_id` BIGINT NOT NULL,
                                                         `category_code` VARCHAR(10) NOT NULL,
                                                         PRIMARY KEY (`store_id`, `category_code`),
                                                         INDEX `FK_store_categories_TO_stores_has_categories_1` (`category_code` ASC) VISIBLE,
                                                         CONSTRAINT `FK_store_categories_TO_stores_has_categories_1`
                                                             FOREIGN KEY (`category_code`)
                                                                 REFERENCES  `store_categories` (`category_code`),
                                                         CONSTRAINT `FK_stores_TO_stores_has_categories_1`
                                                             FOREIGN KEY (`store_id`)
                                                                 REFERENCES  `stores` (`store_id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

ALTER TABLE `coupon_types` ADD `sub_type` VARCHAR(10) NOT NULL AFTER `coupon_type_id`;

ALTER TABLE `coupon_usage` ADD `sub_type` VARCHAR(10) NOT NULL AFTER `coupon_usage_id`;

ALTER TABLE `point_reason` ADD `sub_type` VARCHAR(10) NOT NULL AFTER `point_reason_id`;

rename table `day_code` TO `day_types`;


alter table `coupon_logs` CHANGE `record_date` `record_at` datetime;

alter table `coupon_type_cash` modify column minimum_price INT unsigned not null;

alter table `coupon_type_percent` modify column minimum_price INT unsigned not null;

alter table `coupon_logs` drop foreign key `FK_coupon_log_type_TO_coupon_logs_1`;

alter table `coupon_log_type` CHANGE `coupon_log_type_id` `coupon_log_type_code` varchar(10) not null;

alter table `coupon_logs` CHANGE `coupon_log_type_id` `coupon_log_type_code` VARCHAR(10) not null;

alter table `coupon_logs` add constraint `fk_couponlog_couponlog_typecode` foreign key(`coupon_log_type_code`) references `coupon_log_type`(`coupon_log_type_code`);

alter table `issue_coupons` change `coupon_id` `coupon_policy_id` BIGINT;

rename table `accounts_status` TO `account_status`;

rename table `menus_has_option_groups` TO `menu_has_option_groups`;

ALTER TABLE `options` ADD `is_deleted` TINYINT NOT NULL AFTER `option_sequence`;

ALTER TABLE `option_groups` ADD `is_deleted` TINYINT NOT NULL AFTER `max_select_count`;

ALTER TABLE `menu` Drop column `is_sold_out`;

ALTER TABLE `store_status` modify column description VARCHAR(10) NOT NULL;

ALTER TABLE `refund_types` ADD `is_deleted` TINYINT NOT NULL AFTER `name`;

ALTER TABLE `charge_types` ADD `is_deleted` TINYINT NOT NULL AFTER `name`;

alter table `refunds` drop foreign key `FK_refund_types_TO_refunds_1`;

ALTER TABLE `refund_types` CHANGE `refund_type_id` `refund_type_code` VARCHAR(10) not null;

alter table `refunds` Change `refund_type_id` `refund_type_code` VARCHAR(10) not null;

alter table `refunds` add constraint `fk_refunds_refund_types` foreign key(`refund_type_code`) references `refund_types`(`refund_type_code`);

alter table `charges` drop foreign key `FK_charge_types_TO_charges_1`;

ALTER TABLE `charge_types` CHANGE `charge_type_id` `charge_type_code` VARCHAR(10) not null;

alter table `charges` Change `charge_type_id` `charge_type_code` VARCHAR(10) not null;

alter table `charges` add constraint `fk_charges_charge_types` foreign key(`charge_type_code`) references `charge_types`(`charge_type_code`);

ALTER TABLE `addresses` modify column `latitude` decimal(16,13) not null;

ALTER TABLE `addresses` modify column `longitude` decimal(16,13) not null;

CREATE TABLE IF NOT EXISTS  `menu_status` (
                                                         `menu_status_code` VARCHAR(10) NOT NULL,
                                                         `description` VARCHAR(10) NOT NULL,
                                                         PRIMARY KEY (`menu_status_code`)
                                                         )
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

alter table `menu` add `menu_status_code` VARCHAR(10) not null after `menu_id`;

Alter table `menu` add foreign key(`menu_status_code`) references `menu_status`(`menu_status_code`);

alter table `menu` add `store_id` BIGINT not null after `menu_status_code`;

Alter table `menu` add foreign key(`store_id`) references `stores`(`store_id`);

rename table `store_business_hours` TO `business_hours`;

alter table `holiday` CHANGE `holiday_date` `holiday_start_date` date;

alter table `holiday` add `holiday_end_date` date not null after `holiday_start_date`;

alter table `coupon_log_type` CHANGE `name` `description` VARCHAR(10);

alter table `menu_has_option_groups` drop column `price`;

alter table `options` add `price` int not null after `name`;

alter table `menu_has_option_groups` change `option_sequence` `option_group_sequence` INT not null;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
