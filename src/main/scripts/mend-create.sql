
    create table Provider (
        id int8 not null,
        area varchar(255),
        citizenship varchar(255),
        city varchar(255),
        email varchar(255) not null,
        first_name varchar(255),
        last_name varchar(255),
        password varchar(255) not null,
        phone varchar(255),
        pincode varchar(255),
        state varchar(255),
        primary key (id)
    );

    create table Query (
        id int8 not null,
        category varchar(255),
        description varchar(255),
        email varchar(255),
        title varchar(255),
        user_id int8,
        primary key (id)
    );

    create table profiles (
        id int8 not null,
        address varchar(255),
        category varchar(255),
        shopname varchar(255),
        transcript bytea,
        user_id int8,
        primary key (id)
    );

    create table sp_interest (
        id int8 not null,
        provider_id int8,
        query_id int8,
        primary key (id)
    );

    create table users (
        id int8 not null,
        citizenship varchar(255),
        dob timestamp,
        email varchar(255) not null,
        first_name varchar(255),
        gender varchar(255),
        last_name varchar(255),
        password varchar(255) not null,
        phone varchar(255),
        primary key (id)
    );

    alter table Provider 
        add constraint UK_g68700rwsncfpr2pah4x189cl unique (email);

    alter table users 
        add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table Query 
        add constraint FK_50ig10oe7206v9qb8jl0lr2t6 
        foreign key (user_id) 
        references users;

    alter table profiles 
        add constraint FK_4ixsj6aqve5pxrbw2u0oyk8bb 
        foreign key (user_id) 
        references users;

    alter table sp_interest 
        add constraint FK_o9yl9lb9xc2u0h8nofuc1ppnm 
        foreign key (provider_id) 
        references Provider;

    alter table sp_interest 
        add constraint FK_mpo5i3nebea2ljln7ckp11e3c 
        foreign key (query_id) 
        references Query;

    create sequence hibernate_sequence;
