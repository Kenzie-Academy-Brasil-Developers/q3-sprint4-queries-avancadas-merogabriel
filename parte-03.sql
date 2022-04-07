-- SELECT 1

select * from enderecos; 


-- SELECT 2

select * from
	enderecos ed
inner join usuarios usr
	on ed.id = usr.endereco_id
order by ed.id;

-- SELECT 3

select rs, usr from 
	usuario_rede_sociais usr_rs
join usuarios usr
	on usr.id = usr_rs.usuario_id
join redes_sociais rs
	on rs.id = usr_rs.rede_social_id;

-- SELECT 4

SELECT usr_rs.rede_social_id as id, rs.nome, usr.id, 
	usr.nome, usr.email, usr.senha, usr.endereco_id,
	ed.id, ed.rua, ed.pais
FROM usuario_rede_sociais usr_rs
JOIN usuarios usr 
	ON usr.id  = usr_rs.usuario_id
JOIN redes_sociais rs 
	ON rs.id = usr_rs.rede_social_id
JOIN enderecos ed 
	ON ed.id = usr.endereco_id;

-- SELECT 5

SELECT rs.nome as rede_social, usr.nome as usuario, usr.email, ed.cidade 
FROM usuario_rede_sociais usr_rs
JOIN usuarios usr
	ON usr.id  = usr_rs.usuario_id
JOIN redes_sociais rs 
	ON rs.id = usr_rs.rede_social_id
JOIN enderecos ed
	ON ed.id = usr.endereco_id;

-- SELECT 6

SELECT rs.nome as rede_social, usr.nome as usuario, usr.email, ed.cidade 
FROM usuario_rede_sociais usr_rs
JOIN usuarios usr 
	ON usr.id  = usr_rs.usuario_id
JOIN redes_sociais rs 
	ON rs.id = usr_rs.rede_social_id
JOIN enderecos ed 
	ON ed.id = usr.endereco_id
WHERE 
	rs.nome = 'Youtube';

-- SELECT 7

SELECT rs.nome as rede_social, usr.nome as usuario, usr.email, ed.cidade 
FROM usuario_rede_sociais usr_rs
JOIN usuarios usr 
	ON usr.id  = usr_rs.usuario_id
JOIN redes_sociais rs 
	ON rs.id = usr_rs.rede_social_id
JOIN enderecos ed 
	ON ed.id = usr.endereco_id
WHERE 
	rs.nome = 'Instagram';

-- SELECT 8

SELECT rs.nome as rede_social, usr.nome as usuario, usr.email, ed.cidade 
FROM usuario_rede_sociais usr_rs
JOIN usuarios usr 
	ON usr.id  = usr_rs.usuario_id
JOIN redes_sociais rs 
	ON rs.id = usr_rs.rede_social_id
JOIN enderecos ed 
	ON ed.id = usr.endereco_id
WHERE 
	rs.nome = 'Facebook';

-- SELECT 9

SELECT rs.nome as rede_social, usr.nome as usuario, usr.email, ed.cidade 
FROM usuario_rede_sociais usr_rs
JOIN usuarios usr 
	ON usr.id  = usr_rs.usuario_id
JOIN redes_sociais rs 
	ON rs.id = usr_rs.rede_social_id
JOIN enderecos ed 
	ON ed.id = usr.endereco_id
WHERE 
	rs.nome = 'TikTok';

-- Select 10

SELECT rs.nome as rede_social, usr.nome as usuario, usr.email, ed.cidade 
FROM usuario_rede_sociais usr_rs
JOIN usuarios usr 
	ON usr.id  = usr_rs.usuario_id
JOIN redes_sociais rs 
	ON rs.id = usr_rs.rede_social_id
JOIN enderecos ed 
	ON ed.id = usr.endereco_id
WHERE 
	rs.nome = 'Twitter';








