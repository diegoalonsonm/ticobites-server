CREATE TABLE [dbo].[listaMiembro] (
    [idLista]       UNIQUEIDENTIFIER NOT NULL,
    [idUsuario]     UNIQUEIDENTIFIER NOT NULL,
    [rol]           TINYINT          NOT NULL,
    [fechaAgregado] DATETIME2 (7)    DEFAULT (sysdatetime()) NOT NULL,
    CONSTRAINT [pk_listaMiembro] PRIMARY KEY CLUSTERED ([idLista] ASC, [idUsuario] ASC),
    FOREIGN KEY ([idLista]) REFERENCES [dbo].[lista] ([idLista]),
    FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[usuario] ([idUsuario])
);


GO
CREATE NONCLUSTERED INDEX [ix_listaMiembroUsuario]
    ON [dbo].[listaMiembro]([idUsuario] ASC);

