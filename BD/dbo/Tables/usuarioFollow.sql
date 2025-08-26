CREATE TABLE [dbo].[usuarioFollow] (
    [idSeguidor]    UNIQUEIDENTIFIER NOT NULL,
    [idSeguido]     UNIQUEIDENTIFIER NOT NULL,
    [estado]        TINYINT          DEFAULT ((1)) NOT NULL,
    [fechaCreacion] DATETIME2 (7)    DEFAULT (sysdatetime()) NOT NULL,
    [idEstado]      INT              NOT NULL,
    CONSTRAINT [pk_usuarioFollow] PRIMARY KEY CLUSTERED ([idSeguidor] ASC, [idSeguido] ASC),
    CONSTRAINT [ck_followNoSelf] CHECK ([idSeguidor]<>[idSeguido]),
    FOREIGN KEY ([idEstado]) REFERENCES [dbo].[estado] ([idEstado]),
    CONSTRAINT [fk_seguido] FOREIGN KEY ([idSeguido]) REFERENCES [dbo].[usuario] ([idUsuario]),
    CONSTRAINT [fk_seguidor] FOREIGN KEY ([idSeguidor]) REFERENCES [dbo].[usuario] ([idUsuario])
);


GO
CREATE NONCLUSTERED INDEX [ix_follow_seguidor]
    ON [dbo].[usuarioFollow]([idSeguidor] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_follow_seguido]
    ON [dbo].[usuarioFollow]([idSeguido] ASC);

