CREATE TABLE [dbo].[usuarioBlock] (
    [idBloqueador]  UNIQUEIDENTIFIER NOT NULL,
    [idBloqueado]   UNIQUEIDENTIFIER NOT NULL,
    [fechaCreacion] DATETIME2 (7)    DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [pk_usuarioBlock] PRIMARY KEY CLUSTERED ([idBloqueador] ASC, [idBloqueado] ASC),
    CONSTRAINT [ck_blockNoSelf] CHECK ([idBloqueador]<>[idBloqueado]),
    CONSTRAINT [fk_blockBloqueado] FOREIGN KEY ([idBloqueado]) REFERENCES [dbo].[usuario] ([idUsuario]),
    CONSTRAINT [fk_blockBloqueador] FOREIGN KEY ([idBloqueador]) REFERENCES [dbo].[usuario] ([idUsuario])
);

