CREATE TABLE [dbo].[estado] (
    [idEstado]      INT            NOT NULL,
    [nombre]        NVARCHAR (100) NOT NULL,
    [fechaCreacion] DATETIME2 (7)  DEFAULT (sysdatetime()) NOT NULL,
    PRIMARY KEY CLUSTERED ([idEstado] ASC)
);

