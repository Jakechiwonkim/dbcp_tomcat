select version();


ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1111';

create user 'admin'@'localhost' identified by '1111';

ALTER USER 'admin'@'localhost' IDENTIFIED WITH mysql_native_password BY '1111';

CREATE DATABASE mylink DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

#-----------------------------------------------------------------
/*# identified by 'Sd20Link18!@' */
GRANT ALL PRIVILEGES ON mylink.* TO 'admin'@'localhost' WITH GRANT OPTION;

SHOW GRANTS FOR 'admin'@'localhost';
