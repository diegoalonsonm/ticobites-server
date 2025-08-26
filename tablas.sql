create database ticoBites;
go

use ticoBites
go

-- tabla estado
create table estado(
	idEstado int primary key,
	nombre nvarchar(100) not null,
	fechaCreacion datetime2 not null default sysdatetime()
);
go

---- USUARIOS ----

-- usuarios
create table usuario(
	idUsuario uniqueidentifier primary key,
	nombre nvarchar(200) not null,
	primerApellido nvarchar(200) not null,
	segundoApellido nvarchar(200) not null,
	correo nvarchar(320) not null,
	telefono nvarchar(30) unique,
	urlFotoPerfil nvarchar(max),
	bio nvarchar(500),
	fechaCreacion datetime2 not null default sysdatetime(),
	idEstado int not null references estado(idEstado),
	constraint correo_unico unique (correo)
);
go

-- seguidores/seguidos
create table usuarioFollow(
	idSeguidor uniqueidentifier not null,
	idSeguido uniqueidentifier not null,
	estado tinyint not null default 1,
	fechaCreacion datetime2 not null default sysdatetime(),
	idEstado int not null references estado(idEstado),
	constraint pk_usuarioFollow primary key (idSeguidor, idSeguido),
	constraint fk_seguidor foreign key (idSeguidor) references usuario (idUsuario),
	constraint fk_seguido foreign key (idSeguido) references usuario (idUsuario),
	constraint ck_followNoSelf check (idSeguidor <> idSeguido)
);

create index ix_follow_seguido on usuarioFollow (idSeguido);
create index ix_follow_seguidor on usuarioFollow (idSeguidor);

-- bloqueos
create table usuarioBlock(
	idBloqueador uniqueidentifier not null,
	idBloqueado uniqueidentifier not null,
	fechaCreacion datetime2 not null default sysdatetime(),
	constraint pk_usuarioBlock primary key (idBloqueador, idBloqueado),
	constraint fk_blockBloqueador foreign key (idBloqueador) references usuario(idUsuario),
	constraint fk_blockBloqueado foreign key (idBloqueado) references usuario(idUsuario),
	constraint ck_blockNoSelf check (idBloqueador <> idBloqueado)
);

---- RESTAURANTES ----

-- restaurante
create table restaurante (
	idRestaurante uniqueidentifier primary key,
	nombre nvarchar(200) not null,
	direccion nvarchar(max) not null,
	latitud decimal (9,6),
	longitud decimal (9,6),
	urlFotoPerfil nvarchar(max),
	urlPaginaRestaurante nvarchar(max),
	puntuacion decimal(3,2),
	fechaCreacion datetime2 not null default sysdatetime(),
	idEstado int not null references estado (idEstado)
);

create index ix_restaurante_latLng on restaurante(latitud, longitud);

-- tipo comida
create table tipoComida (
	idTipoComida int identity primary key,
	nombre nvarchar(100) not null,
	fechaCreacion datetime2 not null default sysdatetime(),
	idEstado int not null references estado(idEstado)
);

create table restauranteTipoComida(
	idRestaurante uniqueidentifier not null,
	idTipoComida int not null,
	constraint pk_restauranteTipoComida primary key (idRestaurante, idTipoComida),
	foreign key (idRestaurante) references restaurante(idRestaurante),
	foreign key (idTipoComida) references tipoComida(idTipoComida)
);

create index ox_restauranteTipoComida_tipo on restauranteTipoComida(idTipoComida);

---- REVIEWS ----
create table reviews (
	idReview uniqueidentifier primary key,
	comentario nvarchar(max) not null,
	puntuacion decimal(2,2) not null,
	urlFotoReview nvarchar(max),
	fechaCreacion datetime2 not null default sysdatetime(),
	idRestaurante uniqueidentifier not null references restaurante(idRestaurante),
	idUsuario uniqueidentifier not null references usuario(idUsuario),
	idEstado int not null references estado (idEstado)
);

CREATE INDEX ix_reviewRestaurante ON reviews(idRestaurante);
CREATE INDEX ix_reviewUsuario ON reviews(idUsuario);

-- eatlist
create table eatlist(
	idUsuario uniqueidentifier not null,
	idRestaurante uniqueidentifier not null,
	flag tinyint not null,
	fechaCreacion datetime2 not null default sysdatetime(),
	constraint pk_eatlist primary key (idUsuario, idRestaurante, flag),
	foreign key (idUsuario) references usuario(idUsuario),
	foreign key (idRestaurante) references restaurante(idRestaurante),
);

---- LISTAS ----

-- lista
create table lista(
	idLista uniqueidentifier primary key,
	nombre nvarchar(200) not null,
	esPrivada bit not null default 1,
	esColaborativa bit not null default 0,
	fechaCreacion datetime2 not null default sysdatetime(),
	idUsuarioCreador uniqueidentifier not null references usuario(idUsuario),
	idEstado int not null references Estado(idEstado)
);

create table listaMiembro(
	idLista uniqueidentifier not null,
	idUsuario uniqueidentifier not null,
	rol tinyint not null,
	fechaAgregado datetime2 not null default sysdatetime(),
	constraint pk_listaMiembro primary key (idLista, idUsuario),
	foreign key (idLista) references lista(idLista),
	foreign key (idUsuario) references usuario(idUsuario) 
);

create index ix_listaMiembroUsuario on listaMiembro(idUsuario);

create table listaItem(
	idLista uniqueidentifier not null,
	idRestaurante uniqueidentifier not null,
	idUsuarioCreador uniqueidentifier not null,
	nota nvarchar(500),
	posicion int not null,
	fechaCreacion datetime2 not null default sysdatetime(),
	foreign key (idLista) references lista(idLista),
	foreign key(IdRestaurante) references restaurante(idRestaurante),
	foreign key (idUsuarioCreador) references usuario(idUsuario)
);

create index ix_listaItemPosicion on listaItem (idLista, posicion);