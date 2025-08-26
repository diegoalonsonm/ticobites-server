CREATE TABLE [dbo].[eatlist] (
    [idUsuario]     UNIQUEIDENTIFIER NOT NULL,
    [idRestaurante] UNIQUEIDENTIFIER NOT NULL,
    [flag]          TINYINT          NOT NULL,
    [fechaCreacion] DATETIME2 (7)    DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [pk_eatlist] PRIMARY KEY CLUSTERED ([idUsuario] ASC, [idRestaurante] ASC, [flag] ASC),
    FOREIGN KEY ([idRestaurante]) REFERENCES [dbo].[restaurante] ([idRestaurante]),
    FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[usuario] ([idUsuario])
);

