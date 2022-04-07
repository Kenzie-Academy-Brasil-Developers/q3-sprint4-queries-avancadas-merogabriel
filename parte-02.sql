insert into 
	enderecos (rua, pais, cidade)
values 
	('Avenida Higienópolis', 'Brasil', 'Londrina'),
	('Avenida Paulista', 'Brasil', 'São Paulo'),
	('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');
	
insert into 
	usuarios (nome, email, senha, endereco_id)
values 
	('Cauan', 'cauan@exemple.com', '1234', (SELECT id FROM enderecos WHERE cidade = 'São Paulo' AND rua LIKE '%Paulista%')),
	('Chrystian', 'chrystian@exemple.com', '4321', (SELECT id FROM enderecos WHERE cidade = 'Curitiba' AND rua LIKE '%Marcelino%')),
    ('Matheus', 'matheus@exemple.com', '3214', (SELECT id FROM enderecos WHERE cidade = 'Londrina' AND rua LIKE '%Higienópolis%'));
	
insert into 
 	redes_sociais (nome)
values 
    ('Youtube'),
    ('Twitter'),
    ('Instagram'),
    ('Facebook'),
    ('TikTok');
   
insert into 
   	usuario_rede_sociais (usuario_id, rede_social_id)
values
	((select id from usuarios where nome = 'Cauan'), (select id from redes_sociais where nome = 'Youtube')),
	((select id from usuarios where nome = 'Chrystian'), (select id from redes_sociais where nome = 'Youtube')),
    ((select id from usuarios where nome = 'Matheus'), (select id from redes_sociais where nome = 'Youtube')),
    ((select id from usuarios where nome = 'Chrystian'), (select id from redes_sociais where nome = 'Twitter')),
    ((select id from usuarios where nome = 'Cauan'), (select id from redes_sociais where nome = 'Twitter')),
    ((select id from usuarios where nome = 'Matheus'), (select id from redes_sociais where nome = 'Instagram')),
    ((select id from usuarios where nome = 'Matheus'), (select id from redes_sociais where nome = 'Facebook')),
    ((select id from usuarios where nome = 'Chrystian'), (select id from redes_sociais where nome = 'Instagram')),
    ((select id from usuarios where nome = 'Cauan'), (select id from redes_sociais where nome = 'TikTok'));
