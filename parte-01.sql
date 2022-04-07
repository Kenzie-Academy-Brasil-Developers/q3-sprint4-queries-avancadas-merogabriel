create table if not exists redes_sociais(
	id bigserial primary key,
	nome varchar(150) not null unique
);

create table if not exists enderecos (
	id bigserial primary key,
	rua varchar not null,
	pais varchar(100) not null,
	cidade varchar(100) not null
);

create table if not exists usuarios (
	id bigserial primary key,
	nome varchar(100),
	email varchar not null unique,
	senha varchar not null,
	endereco_id integer not null,
	constraint fk_endereco foreign key (endereco_id) references enderecos(id)
);

create table if not exists usuario_rede_sociais(
	id bigserial primary key,
	usuario_id integer not null,
	rede_social_id integer not null,
	constraint fk_usuario foreign key (usuario_id) references usuarios(id),
	constraint fk_rede_social foreign key (rede_social_id) references redes_sociais(id)
);