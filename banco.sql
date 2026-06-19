CREATE TABLE campeonatos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais VARCHAR(50)
);

CREATE TABLE times (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    campeonato_id INT REFERENCES campeonatos(id)
);

INSERT INTO campeonatos (nome, pais) VALUES
('Brasileirão Série A', 'Brasil'),
('Brasileirão Série B', 'Brasil'),
('Premier League', 'Inglaterra'),
('La Liga', 'Espanha'),
('Bundesliga', 'Alemanha');


INSERT INTO times (nome, campeonato_id) VALUES
('Flamengo', 1),
('Palmeiras', 1),
('São Paulo', 1),
('Corinthians', 1),
('Santos', 1),
('Vasco da Gama', 1),
('Botafogo', 1),
('Fluminense', 1),
('Cruzeiro', 1),
('Atlético Mineiro', 1),
('Grêmio', 1),
('Internacional', 1),
('Bahia', 1),
('Fortaleza', 1),
('Ceará', 1),
('Mirassol', 1),
('Bragantino', 1),
('Juventude', 1),
('Sport', 1),
('Vitória', 1);

INSERT INTO times (nome, campeonato_id) VALUES
('Athletico Paranaense', 2),
('América Mineiro', 2),
('Avaí', 2),
('Chapecoense', 2),
('Coritiba', 2),
('Criciúma', 2),
('Cuiabá', 2),
('Ferroviária', 2),
('Goiás', 2),
('Novorizontino', 2),
('Operário', 2),
('Paysandu', 2),
('Remo', 2),
('Vila Nova', 2),
('Athletic Club', 2),
('Botafogo-SP', 2),
('CRB', 2),
('Volta Redonda', 2),
('Amazonas', 2),
('Atlético Goianiense', 2);

INSERT INTO times (nome, campeonato_id) VALUES
('Arsenal', 3),
('Chelsea', 3),
('Liverpool', 3),
('Manchester City', 3),
('Manchester United', 3),
('Tottenham', 3),
('Newcastle United', 3),
('Aston Villa', 3),
('Brighton', 3),
('Brentford', 3),
('Fulham', 3),
('West Ham', 3),
('Crystal Palace', 3),
('Wolverhampton', 3),
('Everton', 3),
('Bournemouth', 3),
('Nottingham Forest', 3),
('Burnley', 3),
('Leeds United', 3),
('Sunderland', 3);

INSERT INTO times (nome, campeonato_id) VALUES
('Real Madrid', 4),
('Barcelona', 4),
('Atlético de Madrid', 4),
('Athletic Bilbao', 4),
('Villarreal', 4),
('Real Betis', 4),
('Sevilla', 4),
('Valencia', 4),
('Real Sociedad', 4),
('Getafe', 4),
('Osasuna', 4),
('Mallorca', 4),
('Rayo Vallecano', 4),
('Girona', 4),
('Espanyol', 4),
('Celta de Vigo', 4),
('Alavés', 4),
('Elche', 4),
('Levante', 4),
('Oviedo', 4);


INSERT INTO times (nome, campeonato_id) VALUES
('Bayern de Munique', 5),
('Borussia Dortmund', 5),
('Bayer Leverkusen', 5),
('RB Leipzig', 5),
('Eintracht Frankfurt', 5),
('Stuttgart', 5),
('Wolfsburg', 5),
('Freiburg', 5),
('Mainz', 5),
('Borussia Monchengladbach', 5),
('Werder Bremen', 5),
('Union Berlin', 5),
('Augsburg', 5),
('Hoffenheim', 5),
('Heidenheim', 5),
('St. Pauli', 5),
('Hamburgo', 5),
('Colônia', 5);