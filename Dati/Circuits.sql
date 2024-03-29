CREATE TABLE [dbo].[Circuits] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [name]       VARCHAR (256) NOT NULL,
    [length]     INT           NOT NULL,
    [nLaps]      INT           NOT NULL,
    [extCountry] CHAR (2)      NOT NULL,
    [recordLap]  VARCHAR (30)  DEFAULT (N'') NULL,
    [img]        VARCHAR (512) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);
SET IDENTITY_INSERT [dbo].[Circuits] ON;
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (1, N'Bahrain International Circuit', 5412, 57, N'BH', N'', N'https://www.formula1.com/content/dam/fom-website/2018-redesign-assets/Circuit%20maps%2016x9/Bahrain_Circuit.png.transform/9col/image.png');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (2, N'Melbourne Grand Prix Circuit', 5303, 58, N'AU', N'', N'https://www.formula1.com/content/dam/fom-website/2018-redesign-assets/Circuit%20maps%2016x9/Australia_Circuit.png.transform/9col/image.png');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (3, N'Shanghai International Circuit', 5451, 56, N'CH', N'', N'https://media.motorbox.com/image/f1-gp-cina-2019-orari-meteo-risultati-prove-qualifiche-e-gara/6/3/5/635656/635656-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (4, N'Baku City Circuit', 5003, 51, N'AZ', N'', N'https://media.motorbox.com/image/f1-gp-azerbaijan-2019-circuito-meteo-risultati-prove-qualifiche-e-gara/6/3/7/637003/637003-16x9-lg.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (5, N'Circuit de Barcelona-Catalunya', 4655, 66, N'ES', N'', N'https://media.motorbox.com/image/f1-gp-spagna-2019-orari-meteo-risultati-prove-qualifiche-e-gara/6/3/7/637992/637992-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (6, N'Circuit de Monaco', 3337, 78, N'MC', N'', N'https://media.motorbox.com/image/f1-gp-monaco-2019-orari-meteo-risultati-prove-qualifiche-e-gara/6/3/9/639590/639590-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (7, N'Circuit Gilles-Villeneuve', 4361, 70, N'CA', N'', N'https://www.startyourengines.it/wp-content/uploads/2019/06/F1.png');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (8, N'Circuit Paul Ricard', 5842, 53, N'FR', N'', N'https://th.autoblog.it/qaPhsKyhnvzsD5-Fon84eU_P0OE=/fit-in/655xorig/https%3A%2F%2Fmedia.autoblog.it%2F1%2F1fa%2Fcircuito-paul-ricard-di-le-castellet-gp-francia-2019.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (9, N'Red Bull Ring', 4318, 71, N'AT', N'', N'https://www.giornalemotori.com/wp-content/uploads/2018/12/austria-768x432.png');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (10, N'Silverstone Circuit', 5891, 52, N'GB', N'', N'https://th.autoblog.it/IMsLYkTXy168Yz4betxGaLZJP2w=/fit-in/655xorig/https%3A%2F%2Fmedia.autoblog.it%2F0%2F0fc%2Fcircuito-silverstone.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (11, N'Hockenheimring', 4574, 67, N'DE', N'', N'https://media.motorbox.com/image/gp-germania-2019-orari-meteo-risultati/6/4/6/646629/646629-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (12, N'Hungaroring', 4381, 70, N'HU', N'', N'https://media.motorbox.com/image/gp-ungheria-2019-orari-meteo-risultati/6/4/7/647020/647020-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (13, N'Spa-Francorchamps', 7004, 44, N'BE', N'', N'https://media.motorbox.com/image/f1-2019-la-pista-di-spa-francorchamps-sede-del-gp-belgio/6/4/9/649327/649327-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (14, N'Autodromo Nazionale Monza', 5793, 53, N'IT', N'', N'https://media.motorbox.com/image/gp-italia-2019-orari-meteo-risultati/6/5/0/650614/650614-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (15, N'Marina Bay Street Circuit', 5063, 61, N'SG', N'', N'https://media.motorbox.com/image/f1-2019-il-marina-bay-street-circuit-dove-si-corre-il-gp-singapore/6/5/1/651832/651832-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (16, N'Sochi Autodrom', 5848, 53, N'GB', N'', N'https://media.motorbox.com/image/tutte-le-info-sul-gp-russia-2019-orari-meteo-risultati/6/5/2/652862/652862-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (17, N'Suzuka International Racing Course', 5807, 52, N'JP', N'', N'https://media.motorbox.com/image/tutte-le-info-sul-gp-giappone-2019-orari-meteo-risultati/6/5/4/654614/654614-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (18, N'Autodromo Hermanos Rodriguez', 4304, 71, N'MX', N'', N'https://media.motorbox.com/image/tutte-le-info-sul-gp-messico-2019-orari-meteo-risultati/6/5/6/656463/656463-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (19, N'Autodromo Josè Carlos Pace', 4309, 71, N'BR', N'', N'https://media.motorbox.com/image/tutte-le-info-sul-gp-brasile-2019-orari-meteo-risultati/6/5/8/658839/658839-16x9-md.jpg');
INSERT INTO [dbo].[Circuits] ([id], [name], [length], [nLaps], [extCountry], [recordLap], [img]) VALUES (20, N'Yas Marina Circuit', 5554, 55, N'AE', N'', N'https://media.motorbox.com/image/tutte-le-info-sul-gp-abu-dhabi-2019-orari-meteo-risultati/6/6/0/660478/660478-16x9-md.jpg');
SET IDENTITY_INSERT [dbo].[Circuits] OFF;