
    create table authorities (
        user_id int8 not null,
        role varchar(255)
    );

    create table profiles (
        id int8 not null,
        address varchar(255),
        businessName varchar(255),
        category varchar(255),
        contact varchar(255),
        description varchar(255),
        website varchar(255),
        user_id int8,
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

    alter table users 
        add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table authorities 
        add constraint FK_s21btj9mlob1djhm3amivbe5e 
        foreign key (user_id) 
        references users;

    alter table profiles 
        add constraint FK_4ixsj6aqve5pxrbw2u0oyk8bb 
        foreign key (user_id) 
        references users;

    create sequence hibernate_sequence;
