drop table if exists sis_usuario_permissao;
create or replace table sis_usuario(
 	id smallint(4) not null auto_increment,
 	data_hora timestamp,
	usuarioid smallint(4),
	nome varchar(30) not null,
	codigo varchar(11) UNIQUE not null,
    senha CHAR (32) not null,
 	privilegioid smallint(4) unsigned,
    email varchar(100),
    funcionarioid smallint(5) unsigned, 
 	removido smallint(4) default null,
    foto longblob,
    terminalid smallint(4) unsigned,
 	primary key (id),
	index (usuarioid),
	index (privilegioid),
	index (funcionarioid),
	index (terminalid)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;