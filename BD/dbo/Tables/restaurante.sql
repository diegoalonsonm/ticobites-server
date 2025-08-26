CREATE TABLE [dbo].[restaurante] (
    [idRestaurante]        UNIQUEIDENTIFIER NOT NULL,
    [nombre]               NVARCHAR (200)   NOT NULL,
    [direccion]            NVARCHAR (MAX)   NOT NULL,
    [latitud]              DECIMAL (9, 6)   NULL,
    [longitud]             DECIMAL (9, 6)   NULL,
    [urlFotoPerfil]        NVARCHAR (MAX)   NULL,
    [urlPaginaRestaurante] NVARCHAR (MAX)   NULL,
    [puntuacion]           DECIMAL (3, 2)   NULL,
    [fechaCreacion]        DATETIME2 (7)    DEFAULT (sysdatetime()) NOT NULL,
    [idEstado]             INT              NOT NULL,
    PRIMARY KEY CLUSTERED ([idRestaurante] ASC),
    FOREIGN KEY ([idEstado]) REFERENCES [dbo].[estado] ([idEstado])
);


GO
CREATE NONCLUSTERED INDEX [ix_restaurante_latLng]
    ON [dbo].[restaurante]([latitud] ASC, [longitud] ASC);

