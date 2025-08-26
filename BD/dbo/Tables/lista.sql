CREATE TABLE [dbo].[lista] (
    [idLista]          UNIQUEIDENTIFIER NOT NULL,
    [nombre]           NVARCHAR (200)   NOT NULL,
    [esPrivada]        BIT              DEFAULT ((1)) NOT NULL,
    [esColaborativa]   BIT              DEFAULT ((0)) NOT NULL,
    [fechaCreacion]    DATETIME2 (7)    DEFAULT (sysdatetime()) NOT NULL,
    [idUsuarioCreador] UNIQUEIDENTIFIER NOT NULL,
    [idEstado]         INT              NOT NULL,
    PRIMARY KEY CLUSTERED ([idLista] ASC),
    FOREIGN KEY ([idEstado]) REFERENCES [dbo].[estado] ([idEstado]),
    FOREIGN KEY ([idUsuarioCreador]) REFERENCES [dbo].[usuario] ([idUsuario])
);

