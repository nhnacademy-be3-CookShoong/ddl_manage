use cookshoong_shop_prod;
drop table BATCH_JOB_EXECUTION_CONTEXT;

drop table BATCH_JOB_EXECUTION_PARAMS;

drop table BATCH_JOB_EXECUTION_SEQ;

drop table BATCH_JOB_SEQ;

drop table BATCH_STEP_EXECUTION_CONTEXT;

drop table BATCH_STEP_EXECUTION;

drop table BATCH_JOB_EXECUTION;

drop table BATCH_JOB_INSTANCE;

drop table BATCH_STEP_EXECUTION_SEQ;

drop table account_address;

drop table business_hours;

drop table cart_detail_menu_options;

drop table cart_details;

drop table carts;

drop table coupon_logs;

drop table coupon_log_type;

drop table coupon_type_cash;

drop table coupon_type_percent;

drop table coupon_usage_all;

drop table coupon_usage_merchant;

drop table coupon_usage_store;

drop table day_types;

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

drop table order_detail_menu_options;

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

drop table review_has_images;

drop table review_reply;

drop table review;

drop table orders;

drop table order_status;

drop table stores_has_categories;

drop table store_categories;

drop table stores;

drop table accounts;

drop table account_status;

drop table addresses;

drop table authorities;

drop table bank_types;

drop table images;

drop table merchants;

drop table ranks;

drop table store_status;

drop table synonym_dict;

drop table word_dict;


create table BATCH_JOB_EXECUTION_SEQ
(
    ID         bigint not null,
    UNIQUE_KEY char   not null,
    constraint UNIQUE_KEY_UN
        unique (UNIQUE_KEY)
);

create table BATCH_JOB_INSTANCE
(
    JOB_INSTANCE_ID bigint       not null
        primary key,
    VERSION         bigint       null,
    JOB_NAME        varchar(100) not null,
    JOB_KEY         varchar(32)  not null,
    constraint JOB_INST_UN
        unique (JOB_NAME, JOB_KEY)
);

create table BATCH_JOB_EXECUTION
(
    JOB_EXECUTION_ID           bigint        not null
        primary key,
    VERSION                    bigint        null,
    JOB_INSTANCE_ID            bigint        not null,
    CREATE_TIME                datetime(6)   not null,
    START_TIME                 datetime(6)   null,
    END_TIME                   datetime(6)   null,
    STATUS                     varchar(10)   null,
    EXIT_CODE                  varchar(2500) null,
    EXIT_MESSAGE               varchar(2500) null,
    LAST_UPDATED               datetime(6)   null,
    JOB_CONFIGURATION_LOCATION varchar(2500) null,
    constraint JOB_INST_EXEC_FK
        foreign key (JOB_INSTANCE_ID) references BATCH_JOB_INSTANCE (JOB_INSTANCE_ID)
);

create table BATCH_JOB_EXECUTION_CONTEXT
(
    JOB_EXECUTION_ID   bigint        not null
        primary key,
    SHORT_CONTEXT      varchar(2500) not null,
    SERIALIZED_CONTEXT text          null,
    constraint JOB_EXEC_CTX_FK
        foreign key (JOB_EXECUTION_ID) references BATCH_JOB_EXECUTION (JOB_EXECUTION_ID)
);

create table BATCH_JOB_EXECUTION_PARAMS
(
    JOB_EXECUTION_ID bigint       not null,
    TYPE_CD          varchar(6)   not null,
    KEY_NAME         varchar(100) not null,
    STRING_VAL       varchar(250) null,
    DATE_VAL         datetime(6)  null,
    LONG_VAL         bigint       null,
    DOUBLE_VAL       double       null,
    IDENTIFYING      char         not null,
    constraint JOB_EXEC_PARAMS_FK
        foreign key (JOB_EXECUTION_ID) references BATCH_JOB_EXECUTION (JOB_EXECUTION_ID)
);

create table BATCH_JOB_SEQ
(
    ID         bigint not null,
    UNIQUE_KEY char   not null,
    constraint UNIQUE_KEY_UN
        unique (UNIQUE_KEY)
);

create table BATCH_STEP_EXECUTION
(
    STEP_EXECUTION_ID  bigint        not null
        primary key,
    VERSION            bigint        not null,
    STEP_NAME          varchar(100)  not null,
    JOB_EXECUTION_ID   bigint        not null,
    START_TIME         datetime(6)   not null,
    END_TIME           datetime(6)   null,
    STATUS             varchar(10)   null,
    COMMIT_COUNT       bigint        null,
    READ_COUNT         bigint        null,
    FILTER_COUNT       bigint        null,
    WRITE_COUNT        bigint        null,
    READ_SKIP_COUNT    bigint        null,
    WRITE_SKIP_COUNT   bigint        null,
    PROCESS_SKIP_COUNT bigint        null,
    ROLLBACK_COUNT     bigint        null,
    EXIT_CODE          varchar(2500) null,
    EXIT_MESSAGE       varchar(2500) null,
    LAST_UPDATED       datetime(6)   null,
    constraint JOB_EXEC_STEP_FK
        foreign key (JOB_EXECUTION_ID) references BATCH_JOB_EXECUTION (JOB_EXECUTION_ID)
);

create table BATCH_STEP_EXECUTION_CONTEXT
(
    STEP_EXECUTION_ID  bigint        not null
        primary key,
    SHORT_CONTEXT      varchar(2500) not null,
    SERIALIZED_CONTEXT text          null,
    constraint STEP_EXEC_CTX_FK
        foreign key (STEP_EXECUTION_ID) references BATCH_STEP_EXECUTION (STEP_EXECUTION_ID)
);

create table BATCH_STEP_EXECUTION_SEQ
(
    ID         bigint not null,
    UNIQUE_KEY char   not null,
    constraint UNIQUE_KEY_UN
        unique (UNIQUE_KEY)
);

create table account_status
(
    status_code varchar(10) not null
        primary key,
    description varchar(10) not null
);

create table addresses
(
    address_id   bigint auto_increment
        primary key,
    main_place   varchar(80)     not null,
    detail_place varchar(80)     null,
    latitude     decimal(16, 13) not null,
    longitude    decimal(16, 13) not null
);

create table authorities
(
    authority_code varchar(10) not null
        primary key,
    description    varchar(10) not null
);

create table bank_types
(
    bank_type_code varchar(10) not null
        primary key,
    description    varchar(45) null
);

create table charge_types
(
    charge_type_code varchar(10) not null
        primary key,
    name             varchar(30) not null,
    is_deleted       tinyint     not null
);

create table coupon_log_type
(
    coupon_log_type_code varchar(10) not null
        primary key,
    description          varchar(10) null
);

create table coupon_types
(
    coupon_type_id int auto_increment
        primary key,
    sub_type       varchar(10) not null
);

create table coupon_type_cash
(
    coupon_type_id      int auto_increment
        primary key,
    discount_amount     int          not null,
    minimum_order_price int unsigned not null,
    constraint FK_coupon_types_TO_coupon_type_cash_1
        foreign key (coupon_type_id) references coupon_types (coupon_type_id)
);

create table coupon_type_percent
(
    coupon_type_id          int auto_increment
        primary key,
    rate                    decimal(4, 1) not null,
    minimum_order_price     int unsigned  not null,
    maximum_discount_amount int unsigned  not null,
    constraint FK_coupon_types_TO_coupon_type_percent_1
        foreign key (coupon_type_id) references coupon_types (coupon_type_id)
);

create table coupon_usage
(
    coupon_usage_id bigint auto_increment
        primary key,
    sub_type        varchar(10) not null
);

create table coupon_policy
(
    coupon_policy_id bigint auto_increment
        primary key,
    coupon_type_id   int         not null,
    coupon_usage_id  bigint      not null,
    name             varchar(20) not null,
    description      varchar(50) not null,
    usage_period     int         not null,
    is_deleted       tinyint     not null,
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

create table day_types
(
    day_code    char(3) not null
        primary key,
    description char(3) not null
);

create table deliveries
(
    delivery_code     binary(16)   not null
        primary key,
    order_code        binary(16)   not null,
    delivery_fee      int          not null,
    store_address     varchar(160) not null,
    delivery_address  varchar(160) not null,
    delivery_start_at datetime     null,
    delivery_end_at   datetime     null
);

create table images
(
    image_id      bigint auto_increment
        primary key,
    location_code varchar(30)  null,
    domain_name   varchar(30)  null,
    origin_name   varchar(255) not null,
    saved_name    char(40)     not null,
    is_public     tinyint      not null
);

create table menu_status
(
    menu_status_code varchar(10) not null
        primary key,
    description      varchar(10) not null
);

create table merchants
(
    merchant_id bigint auto_increment
        primary key,
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
    oauth_type_id int auto_increment
        primary key,
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
    point_reason_id bigint auto_increment
        primary key,
    sub_type        varchar(10) not null
);

create table ranks
(
    rank_code varchar(10) not null
        primary key,
    name      varchar(10) not null
);

create table accounts
(
    account_id     bigint auto_increment
        primary key,
    rank_code      varchar(10)  not null,
    status_code    varchar(10)  not null,
    authority_code varchar(10)  not null,
    login_id       varchar(255) not null,
    password       char(60)     not null,
    name           varchar(30)  not null,
    nickname       varchar(30)  null,
    email          varchar(320) not null,
    birthday       date         not null,
    phone_number   char(11)     not null,
    last_login_at  datetime     not null,
    constraint login_id
        unique (login_id),
    constraint FK_authorities_TO_accounts_1
        foreign key (authority_code) references authorities (authority_code),
    constraint FK_ranks_TO_accounts_1
        foreign key (rank_code) references ranks (rank_code),
    constraint FK_status_TO_accounts_1
        foreign key (status_code) references account_status (status_code)
);

create table account_address
(
    account_id bigint                   not null,
    address_id bigint                   not null,
    alias      varchar(10) default '기본' not null,
    renewal_at datetime                 not null,
    primary key (account_id, address_id),
    constraint FK_accounts_TO_account_address_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_addresses_TO_account_address_1
        foreign key (address_id) references addresses (address_id)
);

create table issue_coupons
(
    issue_coupon_code binary(16) not null
        primary key,
    account_id        bigint     null,
    coupon_policy_id  bigint     null,
    receipt_date      date       null,
    expiration_date   date       null,
    constraint FK_accounts_TO_issue_coupons_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_coupon_policy_TO_issue_coupons_1
        foreign key (coupon_policy_id) references coupon_policy (coupon_policy_id)
);

create table oauth_accounts
(
    account_id    bigint       not null,
    oauth_type_id int          not null,
    account_code  varchar(255) not null,
    primary key (account_id, oauth_type_id),
    constraint oauth_accounts_ibfk_1
        foreign key (account_id) references accounts (account_id),
    constraint oauth_accounts_ibfk_2
        foreign key (oauth_type_id) references oauth_type (oauth_type_id)
);

create index FK_oauth_type_TO_oauth_accounts_1
    on oauth_accounts (oauth_type_id);

create table point_logs
(
    point_logs_id   bigint auto_increment
        primary key,
    account_id      bigint   not null,
    point_reason_id bigint   not null,
    point_movement  int      not null,
    point_at        datetime not null,
    constraint FK_accounts_TO_point_logs_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_point_reason_TO_point_logs_1
        foreign key (point_reason_id) references point_reason (point_reason_id)
);

create table point_reason_signup
(
    point_reason_id bigint not null
        primary key,
    account_id      bigint not null,
    constraint account_id
        unique (account_id),
    constraint FK_accounts_TO_point_reason_signup_1
        foreign key (account_id) references accounts (account_id),
    constraint fk_point_reason_signup_point_reason1
        foreign key (point_reason_id) references point_reason (point_reason_id)
);

create table refund_types
(
    refund_type_code varchar(10) not null
        primary key,
    name             varchar(30) not null,
    is_deleted       tinyint     not null
);

create table store_categories
(
    category_code varchar(10) not null
        primary key,
    description   varchar(30) not null
);

create table store_status
(
    store_status_code varchar(10) not null
        primary key,
    description       varchar(10) not null
);

create table stores
(
    store_id                  bigint auto_increment
        primary key,
    merchant_id               bigint                                null,
    address_id                bigint                                not null,
    account_id                bigint                                not null,
    bank_type_code            varchar(10)                           not null,
    store_status_code         varchar(10)                           not null,
    business_license_image_id bigint                                not null,
    store_image_id            bigint                                null,
    business_license_number   char(10)                              not null,
    representative_name       varchar(30)                           not null,
    opening_date              date                                  not null,
    name                      varchar(40)                           not null,
    phone_number              varchar(12)                           not null,
    default_earning_rate      decimal(2, 1) unsigned default 0.0    not null,
    minimum_order_price       int unsigned           default '0'    not null,
    description               text                                  null,
    bank_account_number       varchar(20)                           not null,
    delivery_cost             int unsigned           default '4000' null,
    constraint business_license_number
        unique (business_license_number),
    constraint FK_accounts_TO_stores_1
        foreign key (account_id) references accounts (account_id),
    constraint FK_addresses_TO_stores_1
        foreign key (address_id) references addresses (address_id),
    constraint FK_merchants_TO_stores_1
        foreign key (merchant_id) references merchants (merchant_id),
    constraint fk_stores_bank_types1
        foreign key (bank_type_code) references bank_types (bank_type_code),
    constraint fk_stores_store_status1
        foreign key (store_status_code) references store_status (store_status_code),
    constraint stores_ibfk_1
        foreign key (business_license_image_id) references images (image_id),
    constraint stores_ibfk_2
        foreign key (store_image_id) references images (image_id)
);

create table business_hours
(
    business_hours_id bigint auto_increment
        primary key,
    store_id          bigint  not null,
    day_code          char(3) not null,
    open_hour         time    not null,
    close_hour        time    not null,
    constraint FK_day_code_TO_store_business_hours_1
        foreign key (day_code) references day_types (day_code),
    constraint FK_stores_TO_store_business_hours_1
        foreign key (store_id) references stores (store_id)
);

create table carts
(
    cart_id    binary(16) not null
        primary key,
    account_id bigint     not null,
    store_id   bigint     not null,
    constraint account_id
        unique (account_id),
    constraint carts_ibfk_1
        foreign key (account_id) references accounts (account_id),
    constraint carts_ibfk_2
        foreign key (store_id) references stores (store_id)
);

create index store_id
    on carts (store_id);

create table coupon_usage_store
(
    coupon_usage_id bigint not null
        primary key,
    store_id        bigint not null,
    constraint FK_coupon_usage_TO_coupon_usage_store_1
        foreign key (coupon_usage_id) references coupon_usage (coupon_usage_id),
    constraint fk_coupon_usage_store_stores1
        foreign key (store_id) references stores (store_id)
);

create index fk_coupon_usage_store_stores1_idx
    on coupon_usage_store (store_id);

create table holiday
(
    holiday_id         bigint auto_increment
        primary key,
    store_id           bigint not null,
    holiday_start_date date   null,
    holiday_end_date   date   not null,
    constraint FK_stores_TO_holiday_1
        foreign key (store_id) references stores (store_id)
);

create table menu
(
    menu_id          bigint auto_increment
        primary key,
    menu_status_code varchar(10)                        not null,
    store_id         bigint                             not null,
    menu_image_id    bigint                             null,
    name             varchar(30)                        not null,
    price            int unsigned                       not null,
    description      text                               null,
    cooking_time     int                                not null comment '분단위',
    earning_rate     decimal(2, 1) unsigned default 0.0 not null,
    constraint menu_ibfk_1
        foreign key (menu_status_code) references menu_status (menu_status_code),
    constraint menu_ibfk_2
        foreign key (store_id) references stores (store_id),
    constraint menu_ibfk_3
        foreign key (menu_image_id) references images (image_id)
);

create table cart_details
(
    cart_detail_id      bigint auto_increment
        primary key,
    cart_id             binary(16)               not null,
    menu_id             bigint                   not null,
    count               int unsigned default '1' not null,
    created_time_millis bigint                   not null,
    constraint cart_details_ibfk_1
        foreign key (cart_id) references carts (cart_id),
    constraint cart_details_ibfk_2
        foreign key (menu_id) references menu (menu_id)
);

create index cart_id
    on cart_details (cart_id);

create index menu_id
    on cart_details (menu_id);

create index menu_image_id
    on menu (menu_image_id);

create index menu_status_code
    on menu (menu_status_code);

create index store_id
    on menu (store_id);

create table menu_groups
(
    menu_group_id       bigint auto_increment
        primary key,
    store_id            bigint       not null,
    name                varchar(30)  not null,
    description         varchar(200) null,
    menu_group_sequence int          not null,
    constraint FK_stores_TO_menu_groups_1
        foreign key (store_id) references stores (store_id)
);

create table menu_has_menu_groups
(
    menu_group_id bigint not null,
    menu_id       bigint not null,
    menu_sequence int    not null,
    primary key (menu_group_id, menu_id),
    constraint FK_menu_groups_TO_menus_has_menu_groups_1
        foreign key (menu_group_id) references menu_groups (menu_group_id),
    constraint FK_menus_TO_menus_has_menu_groups_1
        foreign key (menu_id) references menu (menu_id)
);

create table option_groups
(
    option_group_id  int auto_increment
        primary key,
    store_id         bigint      not null,
    name             varchar(50) not null,
    min_select_count int         null,
    max_select_count int         null,
    is_deleted       tinyint     not null,
    constraint fk_option_groups_stores1
        foreign key (store_id) references stores (store_id)
);

create table menu_has_option_groups
(
    menu_id               bigint not null,
    option_group_id       int    not null,
    option_group_sequence int    not null,
    primary key (menu_id, option_group_id),
    constraint fk_menus_has_option_groups_menus1
        foreign key (menu_id) references menu (menu_id),
    constraint fk_menus_has_option_groups_option_groups1
        foreign key (option_group_id) references option_groups (option_group_id)
);

create index fk_menus_has_option_groups_menus1_idx
    on menu_has_option_groups (menu_id);

create index fk_option_groups_stores1_idx
    on option_groups (store_id);

create table options
(
    option_id       bigint auto_increment
        primary key,
    option_group_id int         not null,
    name            varchar(20) not null,
    price           int         not null,
    option_sequence int         not null,
    is_deleted      tinyint     not null,
    constraint fk_options_option_groups1
        foreign key (option_group_id) references option_groups (option_group_id)
);

create table cart_detail_menu_options
(
    cart_detail_id bigint not null,
    option_id      bigint not null,
    primary key (cart_detail_id, option_id),
    constraint cart_detail_menu_options_ibfk_1
        foreign key (cart_detail_id) references cart_details (cart_detail_id),
    constraint cart_detail_menu_options_ibfk_2
        foreign key (option_id) references options (option_id)
);

create index option_id
    on cart_detail_menu_options (option_id);

create index fk_options_option_groups1_idx
    on options (option_group_id);

create table orders
(
    order_code        binary(16)   not null
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
    charge_code      binary(16)   not null
        primary key,
    charge_type_code varchar(10)  not null,
    order_code       binary(16)   not null,
    charged_at       datetime     not null,
    charged_amount   int unsigned not null,
    payment_key      varchar(255) not null,
    constraint FK_orders_TO_charges_1
        foreign key (order_code) references orders (order_code),
    constraint fk_charges_charge_types
        foreign key (charge_type_code) references charge_types (charge_type_code)
);

create index FK_charge_types_TO_charges_1
    on charges (charge_type_code);

create table coupon_logs
(
    coupon_logs_id       bigint auto_increment
        primary key,
    issue_coupon_code    binary(16)  not null,
    coupon_log_type_code varchar(10) not null,
    order_code           binary(16)  not null,
    record_at            datetime    null,
    constraint FK_issue_coupons_TO_coupon_logs_1
        foreign key (issue_coupon_code) references issue_coupons (issue_coupon_code),
    constraint FK_orders_TO_coupon_logs_1
        foreign key (order_code) references orders (order_code),
    constraint fk_couponlog_couponlog_typecode
        foreign key (coupon_log_type_code) references coupon_log_type (coupon_log_type_code)
);

create index FK_coupon_log_type_TO_coupon_logs_1
    on coupon_logs (coupon_log_type_code);

create table order_details
(
    order_detail_id bigint auto_increment
        primary key,
    order_code      binary(16)               not null,
    menu_id         bigint                   not null,
    count           int unsigned default '1' not null,
    now_name        varchar(30)              not null,
    now_cost        int                      not null,
    constraint FK_orders_TO_order_details_1
        foreign key (order_code) references orders (order_code),
    constraint fk_order_details_menus1
        foreign key (menu_id) references menu (menu_id)
);

create table order_detail_menu_options
(
    option_id       bigint      not null,
    now_name        varchar(20) not null,
    now_price       int         not null,
    order_detail_id bigint      not null,
    primary key (option_id, order_detail_id),
    constraint fk_order_detail_menu_option_options1
        foreign key (option_id) references options (option_id),
    constraint fk_order_detail_menu_option_order_details1
        foreign key (order_detail_id) references order_details (order_detail_id)
);

create index fk_order_detail_menu_option_order_details1_idx
    on order_detail_menu_options (order_detail_id);

create index fk_order_details_menus1_idx
    on order_details (menu_id);

create table point_reason_orders
(
    point_reason_id bigint     not null
        primary key,
    order_code      binary(16) not null,
    constraint FK_orders_TO_point_reason_orders_1
        foreign key (order_code) references orders (order_code),
    constraint fk_point_reason_orders_point_reason1
        foreign key (point_reason_id) references point_reason (point_reason_id)
);

create table refunds
(
    refund_code      binary(16)   not null
        primary key,
    refund_type_code varchar(10)  not null,
    charge_code      binary(16)   not null,
    refunded_at      datetime     not null,
    refund_amount    int unsigned not null,
    constraint FK_charges_TO_refunds_1
        foreign key (charge_code) references charges (charge_code),
    constraint fk_refunds_refund_types
        foreign key (refund_type_code) references refund_types (refund_type_code)
);

create index FK_refund_types_TO_refunds_1
    on refunds (refund_type_code);

create table review
(
    review_id  bigint auto_increment
        primary key,
    order_code binary(16) not null,
    contents   text       not null,
    rating     int        not null,
    image      char(40)   null,
    written_at datetime   not null,
    constraint FK_orders_TO_review_1
        foreign key (order_code) references orders (order_code)
);

create table point_reason_review
(
    point_reason_id bigint not null
        primary key,
    review_id       bigint not null,
    constraint review_id
        unique (review_id),
    constraint FK_review_TO_point_reason_review_1
        foreign key (review_id) references review (review_id),
    constraint fk_point_reason_review_point_reason1
        foreign key (point_reason_id) references point_reason (point_reason_id)
);

create table review_has_images
(
    review_id bigint not null,
    image_id  bigint not null,
    primary key (review_id, image_id),
    constraint review_has_images_ibfk_1
        foreign key (review_id) references review (review_id),
    constraint review_has_images_ibfk_2
        foreign key (image_id) references images (image_id)
);

create index image_id
    on review_has_images (image_id);

create table review_reply
(
    review_reply_id bigint auto_increment
        primary key,
    review_id       bigint   not null,
    contents        text     not null,
    written_at      datetime not null,
    constraint FK_review_TO_review_reply_1
        foreign key (review_id) references review (review_id)
);

create index business_license_image_id
    on stores (business_license_image_id);

create index fk_stores_bank_types1_idx
    on stores (bank_type_code);

create index fk_stores_store_status1_idx
    on stores (store_status_code);

create index store_image_id
    on stores (store_image_id);

create table stores_has_categories
(
    store_id      bigint      not null,
    category_code varchar(10) not null,
    primary key (store_id, category_code),
    constraint FK_store_categories_TO_stores_has_categories_1
        foreign key (category_code) references store_categories (category_code),
    constraint FK_stores_TO_stores_has_categories_1
        foreign key (store_id) references stores (store_id)
);

create table word_dict
(
    word_id   bigint      not null
        primary key,
    word_text varchar(20) not null
);

create table synonym_dict
(
    basic_word_id   bigint not null,
    synonym_word_id bigint not null,
    primary key (basic_word_id, synonym_word_id),
    constraint synonym_dict_ibfk_1
        foreign key (basic_word_id) references word_dict (word_id),
    constraint synonym_dict_ibfk_2
        foreign key (synonym_word_id) references word_dict (word_id)
);

create index synonym_word_id
    on synonym_dict (synonym_word_id);


INSERT INTO cookshoong_shop_prod.menu_status (menu_status_code, description) VALUES ('CLOSE', '준비중');
INSERT INTO cookshoong_shop_prod.menu_status (menu_status_code, description) VALUES ('OPEN', '판매중');
INSERT INTO cookshoong_shop_prod.menu_status (menu_status_code, description) VALUES ('OUTED', '삭제됨');

INSERT INTO cookshoong_shop_prod.store_status (store_status_code, description) VALUES ('CLOSE', '준비중');
INSERT INTO cookshoong_shop_prod.store_status (store_status_code, description) VALUES ('OPEN', '영업중');
INSERT INTO cookshoong_shop_prod.store_status (store_status_code, description) VALUES ('OUTED', '폐업');

INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (1, '피자');
INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (2, '파이');
INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (3, '알리올리오');
INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (4, '시카고');
INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (5, '알볼로');
INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (6, '스파게티');
INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (7, '파스타');
INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (8, '국수');
INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (9, '라면');
INSERT INTO cookshoong_shop_prod.word_dict (word_id, word_text) VALUES (10, '쫄면');

INSERT INTO cookshoong_shop_prod.synonym_dict (basic_word_id, synonym_word_id) VALUES (1, 2);
INSERT INTO cookshoong_shop_prod.synonym_dict (basic_word_id, synonym_word_id) VALUES (1, 3);
INSERT INTO cookshoong_shop_prod.synonym_dict (basic_word_id, synonym_word_id) VALUES (1, 4);
INSERT INTO cookshoong_shop_prod.synonym_dict (basic_word_id, synonym_word_id) VALUES (1, 5);
INSERT INTO cookshoong_shop_prod.synonym_dict (basic_word_id, synonym_word_id) VALUES (6, 7);
INSERT INTO cookshoong_shop_prod.synonym_dict (basic_word_id, synonym_word_id) VALUES (6, 8);
INSERT INTO cookshoong_shop_prod.synonym_dict (basic_word_id, synonym_word_id) VALUES (6, 9);
INSERT INTO cookshoong_shop_prod.synonym_dict (basic_word_id, synonym_word_id) VALUES (6, 10);


INSERT INTO cookshoong_shop_prod.account_status (status_code, description) VALUES ('ACTIVE', '활성');
INSERT INTO cookshoong_shop_prod.account_status (status_code, description) VALUES ('DORMANCY', '휴면');
INSERT INTO cookshoong_shop_prod.account_status (status_code, description) VALUES ('WITHDRAWAL', '탈퇴');

INSERT INTO cookshoong_shop_prod.authorities (authority_code, description) VALUES ('ADMIN', '시스템관리자');
INSERT INTO cookshoong_shop_prod.authorities (authority_code, description) VALUES ('BUSINESS', '사업자회원');
INSERT INTO cookshoong_shop_prod.authorities (authority_code, description) VALUES ('CUSTOMER', '일반회원');

INSERT INTO cookshoong_shop_prod.oauth_type (oauth_type_id, provider) VALUES (1, 'payco');

INSERT INTO cookshoong_shop_prod.ranks (rank_code, name) VALUES ('LEVEL_1', '프랜드');
INSERT INTO cookshoong_shop_prod.ranks (rank_code, name) VALUES ('LEVEL_2', '패밀리');
INSERT INTO cookshoong_shop_prod.ranks (rank_code, name) VALUES ('LEVEL_3', '마스터');
INSERT INTO cookshoong_shop_prod.ranks (rank_code, name) VALUES ('LEVEL_4', 'VIP마스터');

INSERT INTO cookshoong_shop_prod.bank_types (bank_type_code, description) VALUES ('HANA', '하나은행');
INSERT INTO cookshoong_shop_prod.bank_types (bank_type_code, description) VALUES ('IBK', 'IBK기업은행');
INSERT INTO cookshoong_shop_prod.bank_types (bank_type_code, description) VALUES ('KB', '국민은행');
INSERT INTO cookshoong_shop_prod.bank_types (bank_type_code, description) VALUES ('SHIN', '신한은행');

INSERT INTO cookshoong_shop_prod.day_types (day_code, description) VALUES ('FRI', '금요일');
INSERT INTO cookshoong_shop_prod.day_types (day_code, description) VALUES ('MON', '월요일');
INSERT INTO cookshoong_shop_prod.day_types (day_code, description) VALUES ('SAT', '토요일');
INSERT INTO cookshoong_shop_prod.day_types (day_code, description) VALUES ('SUN', '일요일');
INSERT INTO cookshoong_shop_prod.day_types (day_code, description) VALUES ('THU', '목요일');
INSERT INTO cookshoong_shop_prod.day_types (day_code, description) VALUES ('TUE', '화요일');
INSERT INTO cookshoong_shop_prod.day_types (day_code, description) VALUES ('WED', '수요일');

INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('WESTERN', '양식');
INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('BUNSIK', '분식');
INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('CHICKEN', '치킨');
INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('CHINESE', '중식');
INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('DESSERT', '디저트');
INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('JAPANESE', '일식');
INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('KOREAN', '한식');
INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('MIDNIGHT', '야식');
INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('PIZZA', '피자');
INSERT INTO cookshoong_shop_prod.store_categories (category_code, description) VALUES ('PORK', '족발과 보쌈');

INSERT INTO cookshoong_shop_prod.coupon_log_type (coupon_log_type_code, description) VALUES ('CANCEL', '취소');
INSERT INTO cookshoong_shop_prod.coupon_log_type (coupon_log_type_code, description) VALUES ('USE', '사용');

INSERT INTO cookshoong_shop_prod.coupon_usage (coupon_usage_id, sub_type) VALUES (1, 'ALL');
INSERT INTO cookshoong_shop_prod.coupon_usage_all (coupon_usage_id) VALUES (1);

INSERT INTO cookshoong_shop_prod.order_status (order_status_code, description) VALUES ('CANCEL', '주문취소');
INSERT INTO cookshoong_shop_prod.order_status (order_status_code, description) VALUES ('COMPLETE', '주문완료');
INSERT INTO cookshoong_shop_prod.order_status (order_status_code, description) VALUES ('CREATE', '주문요청');

INSERT INTO cookshoong_shop_prod.charge_types (charge_type_code, name, is_deleted) VALUES ('TOSS', '토스결제', 0);

INSERT INTO cookshoong_shop_prod.refund_types (refund_type_code, name, is_deleted) VALUES ('FULL', '전액환불', 0);
INSERT INTO cookshoong_shop_prod.refund_types (refund_type_code, name, is_deleted) VALUES ('PARTIAL', '부분환불', 0);