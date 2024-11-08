create database crud_api;
use crud_api;
create table users(
	id int not null auto_increment primary key,
    name varchar(255) not null,
    email varchar(255) not null unique,
    password varchar(255) not null,
    cpf_number bigint,
    status enum('Ativo','Inativo') default('Ativo'),
    create_at timestamp default current_timestamp
);
alter table users add column perfil enum('admin','usuario') default('usuario');
insert into users(name,email,password,cpf_number,perfil)
VALUES("Kanemann","kan@email.com","123",34324324,"Admin");
SELECT id,name,email,password,perfil FROM users WHERE email = "kan@email.com"; 
select * from users;
create table products(
	 id int not null auto_increment primary key,
     title varchar(250),
     price double not null,
     image text not null,
     created_at timestamp default current_timestamp
);
select * from products;
INSERT INTO users(name,email,password,cpf_number)
VALUES("Suárez","suarez@gremio.net","senha",77777777777);
SELECT * FROM users;
UPDATE users SET password = "Unisinos", name = "Dida" WHERE id = 1;
SELECT * FROM users WHERE id = 1;
DELETE FROM users WHERE id = 1;
SELECT * FROM users;
use crud_api;
select * from users;
CREATE TABLE products (
  id INT AUTO_INCREMENT,
  titulo VARCHAR(255),
  preco DECIMAL(10, 2),
  url_imagem VARCHAR(255),
  PRIMARY KEY (id)
);
CREATE TABLE favorites (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  item_id INT,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (item_id) REFERENCES products(id)
);