create table if not exists drive_type
(
    id   int auto_increment
    primary key,
    name varchar(255) not null
    );

create table if not exists drive
(
    id      int auto_increment
    primary key,
    name    varchar(255) not null,
    type_id int          not null,
    constraint drive_name_uindex
    unique (name),
    constraint drive_drive_type_id_fk
    foreign key (type_id) references drive_type (id)
    on update cascade on delete cascade
    );

create table if not exists drive_item
(
    id        int auto_increment
    primary key,
    name      varchar(255)             null,
    size      varchar(15) default '0B' null,
    drive_id  int                      not null,
    parent_id int                      null,
    constraint drive_item_drive_id_fk
    foreign key (drive_id) references drive (id)
    on update cascade on delete cascade,
    constraint drive_item_drive_item_id_fk
    foreign key (parent_id) references drive_item (id)
    on update cascade on delete cascade
    );

create table if not exists system_config
(
    id    int auto_increment comment 'id'
    primary key,
    name  varchar(255) not null comment '配置名',
    value text         null comment '配置值',
    constraint system_config_name_uindex
    unique (name)
    );

create table if not exists system_status
(
    id     int auto_increment comment 'id'
    primary key,
    name   varchar(255)      not null,
    status tinyint default 0 not null,
    constraint system_status_name_uindex
    unique (name)
    );

INSERT INTO `system_config` VALUES (1,'web_name','xfile');
INSERT INTO `system_config` VALUES (2,'icp',NULL);
INSERT INTO `system_config` VALUES (3,'admin',NULL);
INSERT INTO `system_config` VALUES (4,'password',NULL);
INSERT INTO `system_status` VALUES (1,'installed',0);