CREATE TABLE IF NOT EXISTS user (
  id int(11) NOT NULL AUTO_INCREMENT,
  login varchar(225) NOT NULL,
  password varchar(225) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS subscribe (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(225) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS users_subscribe (
  id_user int(11) NOT NULL,
  id_subscribe int(11) NOT NULL,
  PRIMARY KEY (id_user, id_subscribe),
  FOREIGN KEY (id_user) REFERENCES user(id),
  FOREIGN KEY (id_subscribe) REFERENCES subscribe(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS message_subscribe (
  id int(11) NOT NULL AUTO_INCREMENT,
  texte varchar(225) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS subscribe_message_subscribe (
  id_subscribe int(11) NOT NULL,
  id_message int(11) NOT NULL,
  PRIMARY KEY (id_subscribe, id_message),
  FOREIGN KEY (id_subscribe) REFERENCES subscribe(id),
  FOREIGN KEY (id_message) REFERENCES message_subscribe(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;