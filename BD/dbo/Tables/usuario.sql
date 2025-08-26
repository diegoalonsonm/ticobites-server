CREATE TABLE [dbo].[usuario] (
    [idUsuario]       UNIQUEIDENTIFIER NOT NULL,
    [nombre]          NVARCHAR (200)   NOT NULL,
    [primerApellido]  NVARCHAR (200)   NOT NULL,
    [segundoApellido] NVARCHAR (200)   NOT NULL,
    [correo]          NVARCHAR (320)   NOT NULL,
    [telefono]        NVARCHAR (30)    NULL,
    [urlFotoPerfil]   NVARCHAR (MAX)   NULL,
    [bio]             NVARCHAR (500)   NULL,
    [fechaCreacion]   DATETIME2 (7)    DEFAULT (sysdatetime()) NOT NULL,
    [idEstado]        INT              NOT NULL,
    PRIMARY KEY CLUSTERED ([idUsuario] ASC),
    FOREIGN KEY ([idEstado]) REFERENCES [dbo].[estado] ([idEstado]),
    UNIQUE NONCLUSTERED ([telefono] ASC),
    CONSTRAINT [correo_unico] UNIQUE NONCLUSTERED ([correo] ASC)
);

