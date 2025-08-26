CREATE TABLE [dbo].[reviews] (
    [idReview]      UNIQUEIDENTIFIER NOT NULL,
    [comentario]    NVARCHAR (MAX)   NOT NULL,
    [puntuacion]    DECIMAL (2, 2)   NOT NULL,
    [urlFotoReview] NVARCHAR (MAX)   NULL,
    [fechaCreacion] DATETIME2 (7)    DEFAULT (sysdatetime()) NOT NULL,
    [idRestaurante] UNIQUEIDENTIFIER NOT NULL,
    [idUsuario]     UNIQUEIDENTIFIER NOT NULL,
    [idEstado]      INT              NOT NULL,
    PRIMARY KEY CLUSTERED ([idReview] ASC),
    FOREIGN KEY ([idEstado]) REFERENCES [dbo].[estado] ([idEstado]),
    FOREIGN KEY ([idRestaurante]) REFERENCES [dbo].[restaurante] ([idRestaurante]),
    FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[usuario] ([idUsuario])
);


GO
CREATE NONCLUSTERED INDEX [ix_reviewUsuario]
    ON [dbo].[reviews]([idUsuario] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_reviewRestaurante]
    ON [dbo].[reviews]([idRestaurante] ASC);

