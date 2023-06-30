drop table if exists account_address;

drop table if exists coupon_logs;

drop table if exists coupon_log_type;

drop table if exists coupon_type_cash;

drop table if exists coupon_type_percent;

drop table if exists coupon_usage_all;

drop table if exists coupon_usage_merchant;

drop table if exists coupon_usage_store;

drop table if exists deliveries;

drop table if exists holiday;

drop table if exists issue_coupons;

drop table if exists coupon_policy;

drop table if exists coupon_types;

drop table if exists coupon_usage;

drop table if exists menus_has_menu_groups;

drop table if exists menu_groups;

drop table if exists menus_has_options;

drop table if exists menus_has_sub_menus;

drop table if exists oauth_accounts;

drop table if exists oauth_type;

drop table if exists order_detail_menu_option;

drop table if exists options;

drop table if exists option_groups;

drop table if exists order_detail_sub_menus;

drop table if exists order_details;

drop table if exists menus;

drop table if exists point_logs;

drop table if exists point_reason_orders;

drop table if exists point_reason_review;

drop table if exists point_reason_signup;

drop table if exists point_reason;

drop table if exists refunds;

drop table if exists charges;

drop table if exists charge_types;

drop table if exists refund_types;

drop table if exists review_reply;

drop table if exists review;

drop table if exists orders;

drop table if exists order_status;

drop table if exists store_business_hours;

drop table if exists day_code;

drop table if exists stores_has_catergories;

drop table if exists store_categories;

drop table if exists sub_menus;

drop table if exists sub_menu_groups;

drop table if exists stores;

drop table if exists accounts;

drop table if exists addresses;

drop table if exists authorities;

drop table if exists merchants;

drop table if exists ranks;

drop table if exists status;



create table addresses
(
    address_id   bigint      not null AUTO_INCREMENT primary key,
    main_place   varchar(80) not null,
    detail_place varchar(80) null,
    latitude     decimal     not null,
    longtitude   decimal     not null
);



create table authorities
(
    authority_code varchar(10) not null
        primary key,
    description    varchar(10) not null
);

create table charge_types
(
    charge_type_id bigint      not null AUTO_INCREMENT primary key,
    name           varchar(30) not null
);

create table coupon_log_type
(
    coupon_log_type_id int         not null AUTO_INCREMENT primary key,
    name               varchar(10) not null
);

create table coupon_types
(
    coupon_type_id int not null AUTO_INCREMENT primary key
);

create table coupon_type_cash
(
    coupon_type_id  int not null AUTO_INCREMENT primary key,
    discount_amount int not null,
    minimum_price   int null,
    constraint FK_coupon_types_TO_coupon_type_cash_1
        foreign key (coupon_type_id) references coupon_types (coupon_type_id)
);

create table coupon_type_percent
(
    coupon_type_id int   not null AUTO_INCREMENT primary key,
    rate           float not null,
    minimum_price  int   null,
    maximum_price  int   not null,
    constraint FK_coupon_types_TO_coupon_type_percent_1
        foreign key (coupon_type_id) references coupon_types (coupon_type_id)
);

create table coupon_usage
(
    coupon_usage_id bigint not null AUTO_INCREMENT primary key
);

create table coupon_policy
(
    coupon_policy_id bigint      not null AUTO_INCREMENT primary key,
    coupon_type_id   int         not null,
    coupon_usage_id  bigint      not null,
    name             varchar(20) not null,
    description      varchar(50) not null,
    expiration_time  time        not null,
    constraint FK_coupon_types_TO_coupon_policy_1
        foreign key (coupon_type_id) references coupon_types (coupon_type_id),
    constraint FK_coupon_usage_TO_coupon_policy_1
        foreign key (coupon_usage_id) references coupon_usage (coupon_usage_id)
);

create table coupon_usage_all
(
    coupon_usage_id bigint not null
        primary key,
    constraint FK_coupon_usage_TO_coupon_usage_all_1
        foreign key (coupon_usage_id) references coupon_usage (coupon_usage_id)
);

create table day_code
(
    day_code    char(3) not null
        primary key,
    description char(3) not null
);

create table deliveries
(
    delivery_code     char(36)     not null primary key,
    order_code        char(36)     not null,
    delivery_fee      int          not null,
    store_address     varchar(160) not null,
    delivery_address  varchar(160) not null,
    delivery_start_at datetime     not null,
    delivery_end_at   datetime     null
);

create table menus
(
    menu_id       bigint               not null AUTO_INCREMENT primary key,
    name          varchar(30)          not null,
    price         int      unsigned            not null,
    description   text                 null,
    image         char(40)             null,
    cooking_time  int                  not null comment '분단위',
    earning_rate  decimal(1) default 0 not null,
    menu_sequence int                  not null
);

create table merchants
(
    merchant_id bigint      not null AUTO_INCREMENT primary key,
    name        varchar(20) not null
);

create table coupon_usage_merchant
(
    coupon_usage_id bigint not null
        primary key,
    merchant_id     bigint not null,
    constraint FK_coupon_usage_TO_coupon_usage_merchant_1
        foreign key (coupon_usage_id) references coupon_usage (coupon_usage_id),
    constraint FK_merchants_TO_coupon_usage_merchant_1
        foreign key (merchant_id) references merchants (merchant_id)
);

create table oauth_type
(
    oauth_type_id int         not null AUTO_INCREMENT primary key,
    provider      varchar(10) not null
);

create table order_status
(
    order_status_code varchar(10) not null
        primary key,
    description       varchar(40) not null
);

create table point_reason
(
    point_reason_id bigint not null AUTO_INCREMENT primary key
);

create table ranks
(
    rank_code varchar(10) not null
        primary key,
    name      varchar(10) not null
);

create table refund_types
(
    refund_type_id bigint      not null AUTO_INCREMENT primary key,
    name           varchar(30) not null
);

create table status
(
    status_code varchar(10) not null
        primary key,
    description varchar(10) not null
);

create table accounts
(
    account_id     bigint       not null AUTO_INCREMENT primary key,
    rank_code      varchar(10)  not null,
    status_code    varchar(10)  not null,
    authority_code varchar(10)  not null,
    login_id       varchar(30)  not null UNIQUE,
    password       char(60)     not null,
    name           varchar(30)  not null,
    nickname       varchar(30)  null,
    email          varchar(320) not null,
    birthday       date         not null,
    phone_number   char(11)     not null,
    last_login_at  datetime     not null,
    constraint FK_authorities_TO_accounts_1
        foreign key (authority_code) references authorities (authority_code),
    constraint FK_ranks_TO_accounts_1
        foreign key (rank_code) references ranks (rank_code),
    constraint FK_status_TO_accounts_1
        foreign key (status_code) references status (status_code)
);

create table account_address
(
    account_id bigint                    not null,
    address_id bigint                    not null,
    alias      varchar(10) default '내주소' not null,
    primary key (account_id, address_id),
    constraint FK_accounts_TO_account_address_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_addresses_TO_account_address_1
        foreign key (address_id) references addresses (address_id)
);

create table issue_coupons
(
    issue_coupon_code char(36) not null
        primary key,
    account_id        bigint   not null,
    coupon_id         bigint   not null,
    issue_at          datetime not null,
    expiration_at     datetime not null,
    constraint FK_accounts_TO_issue_coupons_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_coupon_policy_TO_issue_coupons_1
        foreign key (coupon_id) references coupon_policy (coupon_policy_id)
);

create table oauth_accounts
(
    account_id    bigint      not null AUTO_INCREMENT primary key,
    oauth_type_id int         not null,
    account_code  varchar(30) not null,
    constraint FK_accounts_TO_oauth_accounts_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_oauth_type_TO_oauth_accounts_1
        foreign key (oauth_type_id) references oauth_type (oauth_type_id)
);

create table point_logs
(
    point_logs_id   bigint       not null AUTO_INCREMENT primary key,
    account_id      bigint       not null,
    point_reason_id bigint       not null,
    point_movement  int          not null,
    description     varchar(100) not null,
    point_at        datetime     not null,
    constraint FK_accounts_TO_point_logs_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_point_reason_TO_point_logs_1
        foreign key (point_reason_id) references point_reason (point_reason_id)
);

create table point_reason_signup
(
    point_reason_id bigint not null
        primary key,
    account_id      bigint not null UNIQUE,
    constraint FK_accounts_TO_point_reason_signup_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_point_reason_TO_point_reason_signup_1
        foreign key (point_reason_id) references point_reason (point_reason_id)
);

create table store_categories
(
    store_category_code varchar(10) not null primary key,
    description         varchar(30) not null
);

create table stores
(
    store_id                bigint               not null AUTO_INCREMENT primary key,
    merchant_id             bigint               null,
    address_id              bigint               not null,
    account_id              bigint               not null,
    business_license        char(40)             not null,
    business_license_number char(10)             not null UNIQUE,
    representative_name     varchar(30)          not null,
    opening_date            date                 not null,
    name                    varchar(40)          not null,
    phone_number            varchar(11)          not null,
    default_earning_rate    decimal(1) default 0 not null,
    description             text                 null,
    image                   char(40)             null,
    constraint FK_accounts_TO_stores_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_addresses_TO_stores_1
        foreign key (address_id) references addresses (address_id),
    constraint FK_merchants_TO_stores_1
        foreign key (merchant_id) references merchants (merchant_id)
);

create table coupon_usage_store
(
    coupon_usage_id bigint not null
        primary key,
    store_id        bigint not null,
    constraint FK_coupon_usage_TO_coupon_usage_store_1
        foreign key (coupon_usage_id) references coupon_usage (coupon_usage_id),
    constraint FK_stores_TO_coupon_usage_store_1
        foreign key (store_id) references stores (store_id)
);

create table holiday
(
    holiday_id   bigint not null AUTO_INCREMENT primary key,
    store_id     bigint not null,
    holiday_date date   not null,
    constraint FK_stores_TO_holiday_1
        foreign key (store_id) references stores (store_id)
);

create table menu_groups
(
    menu_group_id       bigint       not null AUTO_INCREMENT primary key,
    store_id            bigint       not null,
    name                varchar(30)  not null,
    description         varchar(200) null,
    menu_group_sequence int          not null,
    constraint FK_stores_TO_menu_groups_1
        foreign key (store_id) references stores (store_id)
);

create table menus_has_menu_groups
(
    `menu_group_id` bigint not null,
    menu_id          bigint not null,
    primary key (`menu_group_id`, menu_id),
    constraint FK_menu_groups_TO_menus_has_menu_groups_1
        foreign key (`menu_group_id`) references menu_groups (menu_group_id),
    constraint FK_menus_TO_menus_has_menu_groups_1
        foreign key (menu_id) references menus (menu_id)
);

create table option_groups
(
    option_group_id       int         not null
        primary key,
    store_id              bigint      not null comment 'AI',
    name                  varchar(50) not null,
    option_group_sequence int         not null,
    constraint FK_stores_TO_option_groups_1
        foreign key (store_id) references stores (store_id)
);

create table options
(
    option_id       bigint      not null AUTO_INCREMENT primary key,
    option_group_id int         not null,
    name            varchar(20) not null,
    constraint FK_option_groups_TO_options_1
        foreign key (option_group_id) references option_groups (option_group_id)
);

create table menus_has_options
(
    option_id       bigint        not null,
    menu_id         bigint        not null,
    price           int unsigned default 0 not null,
    option_sequence int           not null,
    primary key (option_id, menu_id),
    constraint FK_menus_TO_menus_has_options_1
        foreign key (menu_id) references menus (menu_id),
    constraint FK_options_TO_menus_has_options_1
        foreign key (option_id) references options (option_id)
);

create table orders
(
    order_code        char(36)     not null
        primary key,
    order_status_code varchar(10)  not null,
    account_id        bigint       not null,
    store_id          bigint       not null,
    ordered_at        datetime     not null,
    memo              varchar(100) null,
    constraint FK_accounts_TO_orders_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_order_status_TO_orders_1
        foreign key (order_status_code) references order_status (order_status_code),
    constraint FK_stores_TO_orders_1
        foreign key (store_id) references stores (store_id)
);

create table charges
(
    charge_code    char(36) not null
        primary key,
    charge_type_id bigint   not null comment 'AI',
    order_code     char(36) not null,
    charged_at     datetime not null,
    charged_amount int    Unsigned  not null,
    constraint FK_charge_types_TO_charges_1
        foreign key (charge_type_id) references charge_types (charge_type_id),
    constraint FK_orders_TO_charges_1
        foreign key (order_code) references orders (order_code)
);

create table coupon_logs
(
    coupon_logs_id     bigint      not null AUTO_INCREMENT primary key,
    issue_coupon_code  varchar(36) not null,
    coupon_log_type_id int         not null comment 'AI',
    order_code         char(36)    not null,
    record_date        datetime    not null,
    constraint FK_coupon_log_type_TO_coupon_logs_1
        foreign key (coupon_log_type_id) references coupon_log_type (coupon_log_type_id),
    constraint FK_issue_coupons_TO_coupon_logs_1
        foreign key (issue_coupon_code) references issue_coupons (issue_coupon_code),
    constraint FK_orders_TO_coupon_logs_1
        foreign key (order_code) references orders (order_code)
);

create table order_details
(
    order_detail_id bigint        not null AUTO_INCREMENT primary key,
    menu_id         bigint        not null,
    order_code      varchar(100)  not null,
    count           int Unsigned default 1 not null,
    now_cost        int           not null,
    constraint FK_menus_TO_order_details_1
        foreign key (menu_id) references menus (menu_id),
    constraint FK_orders_TO_order_details_1
        foreign key (order_code) references orders (order_code)
);

create table order_detail_menu_option
(
    order_detail_id bigint not null,
    option_id       bigint not null,
    primary key (order_detail_id, option_id),
    constraint FK_options_TO_order_detail_menu_option_1
        foreign key (option_id) references options (option_id),
    constraint FK_order_details_TO_order_detail_menu_option_1
        foreign key (order_detail_id) references order_details (order_detail_id)
);

create table point_reason_orders
(
    point_reason_id bigint   not null AUTO_INCREMENT primary key,
    order_code      char(36) not null,
    constraint FK_orders_TO_point_reason_orders_1
        foreign key (order_code) references orders (order_code),
    constraint FK_point_reason_TO_point_reason_orders_1
        foreign key (point_reason_id) references point_reason (point_reason_id)
);

create table refunds
(
    refund_code    char(36) not null
        primary key,
    refund_type_id bigint   not null comment 'AI',
    charge_code    char(36) not null,
    refunded_at    datetime not null,
    refund_amount  int  unsigned    not null,
    constraint FK_charges_TO_refunds_1
        foreign key (charge_code) references charges (charge_code),
    constraint FK_refund_types_TO_refunds_1
        foreign key (refund_type_id) references refund_types (refund_type_id)
);

create table review
(
    review_id  bigint       not null
        primary key,
    order_code varchar(100) not null,
    contents   text         not null,
    rating     int          not null,
    image      char(40)     null,
    written_at datetime     not null,
    constraint FK_orders_TO_review_1
        foreign key (order_code) references orders (order_code)
);

create table point_reason_review
(
    point_reason_id bigint not null AUTO_INCREMENT primary key,
    review_id       bigint not null UNIQUE,
    constraint FK_point_reason_TO_point_reason_review_1
        foreign key (point_reason_id) references point_reason (point_reason_id),
    constraint FK_review_TO_point_reason_review_1
        foreign key (review_id) references review (review_id)
);

create table review_reply
(
    review_reply_id bigint   not null AUTO_INCREMENT primary key,
    review_id       bigint   not null,
    contents        text     not null,
    written_at      datetime not null,
    constraint FK_review_TO_review_reply_1
        foreign key (review_id) references review (review_id)
);

create table store_business_hours
(
    business_hours_id bigint  not null AUTO_INCREMENT primary key,
    store_id          bigint  not null,
    day_code          char(3) not null,
    open_hour         time    not null,
    close_hour        time    not null,
    constraint FK_day_code_TO_store_business_hours_1
        foreign key (day_code) references day_code (day_code),
    constraint FK_stores_TO_store_business_hours_1
        foreign key (store_id) references stores (store_id)
);

create table stores_has_catergories
(
    store_id            bigint      not null,
    store_category_code varchar(10) not null,
    primary key (store_id, store_category_code),
    constraint FK_store_categories_TO_stores_has_catergories_1
        foreign key (store_category_code) references store_categories (store_category_code),
    constraint FK_stores_TO_stores_has_catergories_1
        foreign key (store_id) references stores (store_id)
);

create table sub_menu_groups
(
    sub_menu_group_id int         not null AUTO_INCREMENT primary key,
    store_id          bigint      not null,
    name              varchar(50) not null,
    sub_menu_sequence int         not null,
    constraint FK_stores_TO_sub_menu_groups_1
        foreign key (store_id) references stores (store_id)
);

create table sub_menus
(
    sub_menu_id       bigint      not null AUTO_INCREMENT primary key,
    sub_menu_group_id int         not null,
    name              varchar(20) not null,
    constraint FK_sub_menu_groups_TO_sub_menus_1
        foreign key (sub_menu_group_id) references sub_menu_groups (sub_menu_group_id)
);

create table menus_has_sub_menus
(
    menu_id           bigint        not null,
    sub_menu_id       bigint        not null,
    price             int unsigned default 0 not null,
    sub_menu_sequence int           not null,
    primary key (menu_id, sub_menu_id),
    constraint FK_menus_TO_menus_has_sub_menus_1
        foreign key (menu_id) references menus (menu_id),
    constraint FK_sub_menus_TO_menus_has_sub_menus_1
        foreign key (sub_menu_id) references sub_menus (sub_menu_id)
);

create table order_detail_sub_menus
(
    order_detail_id bigint not null,
    sub_menu_id     bigint not null,
    primary key (order_detail_id, sub_menu_id),
    constraint FK_order_details_TO_order_detail_sub_menus_1
        foreign key (order_detail_id) references order_details (order_detail_id),
    constraint FK_sub_menus_TO_order_detail_sub_menus_1
        foreign key (sub_menu_id) references sub_menus (sub_menu_id)
);

