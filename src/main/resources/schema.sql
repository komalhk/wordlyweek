create table writer (
    id int primary key auto_increment,
    name varchar(255),
    bio varchar(255)
);


create table magazine (
    id int primary key auto_increment,
    title varchar(255),
    publicationDate date
);


create table writer_magazine (
    writerId int,
    magazineId int,
    primary key(writerId, magazineId),
    foreign key(writerId) references writer(id),
    foreign key(magazineId) references magazine(id)
);