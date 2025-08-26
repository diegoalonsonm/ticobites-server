CREATE TABLE [dbo].[restauranteTipoComida] (
    [idRestaurante] UNIQUEIDENTIFIER NOT NULL,
    [idTipoComida]  INT              NOT NULL,
    CONSTRAINT [pk_restauranteTipoComida] PRIMARY KEY CLUSTERED ([idRestaurante] ASC, [idTipoComida] ASC),
    FOREIGN KEY ([idRestaurante]) REFERENCES [dbo].[restaurante] ([idRestaurante]),
    FOREIGN KEY ([idTipoComida]) REFERENCES [dbo].[tipoComida] ([idTipoComida])
);


GO
CREATE NONCLUSTERED INDEX [ox_restauranteTipoComida_tipo]
    ON [dbo].[restauranteTipoComida]([idTipoComida] ASC);

