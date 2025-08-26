CREATE TABLE [dbo].[listaItem] (
    [idLista]          UNIQUEIDENTIFIER NOT NULL,
    [idRestaurante]    UNIQUEIDENTIFIER NOT NULL,
    [idUsuarioCreador] UNIQUEIDENTIFIER NOT NULL,
    [nota]             NVARCHAR (500)   NULL,
    [posicion]         INT              NOT NULL,
    [fechaCreacion]    DATETIME2 (7)    DEFAULT (sysdatetime()) NOT NULL,
    FOREIGN KEY ([idLista]) REFERENCES [dbo].[lista] ([idLista]),
    FOREIGN KEY ([idRestaurante]) REFERENCES [dbo].[restaurante] ([idRestaurante]),
    FOREIGN KEY ([idUsuarioCreador]) REFERENCES [dbo].[usuario] ([idUsuario])
);


GO
CREATE NONCLUSTERED INDEX [ix_listaItemPosicion]
    ON [dbo].[listaItem]([idLista] ASC, [posicion] ASC);

