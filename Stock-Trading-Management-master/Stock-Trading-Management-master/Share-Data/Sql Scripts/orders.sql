use stockuser;
-- orderPrice decimal(10,2) not null
create table orders (
id integer primary key,
user_id Integer not null,
share_id Integer not null,
quantity integer not null,
foreign key(user_id) references register(userid),
foreign key(share_id) references share(id)
);

