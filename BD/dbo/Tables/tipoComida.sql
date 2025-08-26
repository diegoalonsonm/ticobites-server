CREATE TABLE [dbo].[tipoComida] (
    [idTipoComida]  INT            IDENTITY (1, 1) NOT NULL,
    [nombre]        NVARCHAR (100) NOT NULL,
    [fechaCreacion] DATETIME2 (7)  DEFAULT (sysdatetime()) NOT NULL,
    [idEstado]      INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([idTipoComida] ASC),
    FOREIGN KEY ([idEstado]) REFERENCES [dbo].[estado] ([idEstado])
);

