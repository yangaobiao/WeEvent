drop table IF EXISTS t_account;
drop table IF EXISTS t_user_topic_auth;

create TABLE t_account (
	id INTEGER generated BY DEFAULT AS identity,
	user_name VARCHAR (255),
	password VARCHAR (255),
	create_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	delete_at BIGINT NOT NULL,
	PRIMARY KEY (id)
);

create TABLE t_account_topic_auth(
	id INTEGER generated BY DEFAULT AS identity,
	user_name VARCHAR (255),
	topic_name VARCHAR (255),
	permission INTEGER,
	create_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id)
)

alter table t_account add CONSTRAINT userName UNIQUE (user_name);
alter table t_user_topic_auth add CONSTRAINT userNameTopicName UNIQUE (user_name, topic_name);