-- Active: 1689165483012@@127.0.0.1@3306@booking_software

/*CREATE DATABASE booking_software;*/

/*DROP TABLE price*/

/*CREATE TABLE cinema (
    idCinema INT PRIMARY KEY AUTO_INCREMENT,
    cinema_name VARCHAR(50) NOT NULL,
    adress VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL
);*/

/*INSERT INTO cinema (cinema_name, adress, city) VALUES
('Cineville', 'Rue Claude Cevert', '85000 La Roche sur Yon'),
('Le Grand Lux', '5 rue de la Ferme', '85500 Les Herbiers'),
('Cineode', 'Boulevard Thomas Voeckler', '85110 Chantonnay');*/



/*CREATE TABLE movies (
    idMovies INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    director VARCHAR(255) NOT NULL,
    duration VARCHAR(255) NOT NULL,
    type_of_movie VARCHAR(255) NOT NULL
)*/

/*INSERT INTO movies (title, director, duration, type_of_movie) VALUES
('Oppenheimer', 'Christopher Nolan', '3h01', 'biopic, thriller, historique'),
('Barbie', 'Greta Grerwig', '1h55', 'aventure, comedie'),
('Elementaire', 'Peter Sohn', '1h42', 'animation, famille, comedie'),
('Mission Impossible Dead Reckoning', 'Christpher McQuarrie', '2h43', 'action, aventure'),
('La Main', 'Dany Philippou', '1h34', 'epouvante-horreur, thriller'),
('Indinana Jones et le Cadran de la destinée', 'James Mangold', '2h34', 'action, aventure'),
('La Maison du Mal', 'Samuel Bodin', '1h28', 'épouvante-horreur'),
('The First Slam Dunk', 'Takehiko Inoue', '2h04', 'animation, drame'),
('Le Manoir Hanté', 'Justin Simien', '2h05', 'comédie, famille, fantastique');*/



/*CREATE TABLE administrator (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    cinema_name INT NOT NULL
)*/

/*INSERT INTO administrator (name, cinema_name) VALUES 
('Stephanie LECLERC', 1),
('Thibault COUTANT', 2),
('Marc GRUFFIERE', 3);*/

/*CREATE TABLE rooms (
    idSalle INT PRIMARY KEY AUTO_INCREMENT,
    room_number INT NOT NULL,
    capacity INT NOT NULL,
    idCinema INT,                             -- clé étrangère référençant la table cinéma
    FOREIGN KEY (idCinema)              -- Nom de la colonne qui sera la clé étrangère dans la table room
        REFERENCES cinema (idCinema) 
);*/

/*INSERT INTO rooms (room_number, capacity, idCinema) VALUES 
(1, 400, 1),
(2, 360, 1),
(3, 310, 1),
(4, 290, 1),
(5, 250, 1),
(6, 210, 1),
(7, 190, 1), 
(8, 150, 1), 
(9, 150, 1), 
(10, 150, 1),
(1, 400, 2),
(2, 360, 2),
(3, 310, 2),
(4, 290, 2),
(5, 250, 2),
(6, 210, 2),
(1, 250, 3),
(2, 150, 3);*/

/*CREATE TABLE screening (
    idScreening INT PRIMARY KEY AUTO_INCREMENT,
    date VARCHAR(255) NOT NULL,
    hours VARCHAR(255) NOT NULL,
    idCinema INT,
    FOREIGN KEY (idCinema) REFERENCES cinema (idCinema),
    idMovies INT,
    FOREIGN KEY (idMovies) REFERENCES movies (idMovies),
    idSalle INT,
    FOREIGN KEY (idSalle) REFERENCES rooms (idSalle)
);*/

/*INSERT INTO screening (date, hours, idCinema, idMovies, idSalle) VALUES
('Vendredi 28 Juillet', '17h30', 1, 1, 1),
('Vendredi 28 Juillet', '20h20', 1, 1, 2),
('Samedi 29 Juillet', '14h00', 1, 1, 1),
('Samedi 29 Juillet', '17h30', 1, 1, 2),
('Dimanche 30 28 Juillet', '14h30', 1, 1, 1),
('Dimanche 30 28 Juillet', '18h00', 1, 1, 2),

('Vendredi 28 Juillet', '16h30', 1, 2, 3),
('Vendredi 28 Juillet', '20h00', 1, 2, 3),
('Samedi 29 Juillet', '20h00', 1, 2, 3),
('Samedi 29 Juillet', '22h25', 1, 2, 3),
('Dimanche 30 28 Juillet', '13h40', 1, 2, 3),
('Dimanche 30 28 Juillet', '16h05', 1, 2, 3),

('Vendredi 28 Juillet', '15h50', 1, 3, 6),
('Vendredi 28 Juillet', '18h15', 1, 3, 6),
('Samedi 29 Juillet', '15h50', 1, 3, 6),
('Samedi 29 Juillet', '18h15', 1, 3, 6),
('Dimanche 30 28 Juillet', '11h20', 1, 3, 6),
('Dimanche 30 28 Juillet', '13h45', 1, 3, 6),

('Vendredi 28 Juillet', '16h20', 1, 4, 4),
('Vendredi 28 Juillet', '20h40', 1, 4, 4),
('Samedi 29 Juillet', '14h10', 1, 4, 4),
('Samedi 29 Juillet', '16h20', 1, 4, 4),
('Dimanche 30 28 Juillet', '10h50', 1, 4, 4),
('Dimanche 30 28 Juillet', '14h05', 1, 4, 4),

('Vendredi 28 Juillet', '20h30', 1, 5, 7),
('Vendredi 28 Juillet', '22h40', 1, 5, 7),
('Samedi 29 Juillet', '14h20', 1, 5, 7),
('Samedi 29 Juillet', '18h35', 1, 5, 7),
('Dimanche 30 28 Juillet', '18h25', 1, 5, 7),

('Vendredi 28 Juillet', '17h00', 1, 6, 5),
('Vendredi 28 Juillet', '19h40', 1, 6, 5),
('Samedi 29 Juillet', '17h00', 1, 6, 5),
('Samedi 29 Juillet', '19h40', 1, 6, 5),
('Dimanche 30 28 Juillet', '13h30', 1, 6, 5),
('Dimanche 30 28 Juillet', '17h00', 1, 6, 5),

('Vendredi 28 Juillet', '20h25', 1, 7, 8),
('Samedi 29 Juillet', '20h25', 1, 7, 8),
('Dimanche 30 28 Juillet', '18h30', 1, 7, 8),

('Vendredi 28 Juillet', '16h00', 1, 8, 9),
('Samedi 29 Juillet', '16h30', 1, 8, 9),
('Dimanche 30 28 Juillet', '16h30', 1, 8, 9),


('Vendredi 28 Juillet', '16h00', 1, 9, 10),
('Vendredi 28 Juillet', '20h05', 1, 9, 10),
('Samedi 29 Juillet', '20h05', 1, 9, 10),
('Samedi 29 Juillet', '22h20', 1, 9, 10),
('Dimanche 30 28 Juillet', '13h50', 1, 9, 10),
('Dimanche 30 28 Juillet', '16h00', 1, 9, 10),




('Vendredi 28 Juillet', '18h00', 2, 1, 1),
('Vendredi 28 Juillet', '21h00', 2, 1, 1),
('Samedi 29 Juillet', '16h30', 2, 1, 1),
('Samedi 29 Juillet', '21h45', 2, 1, 1),
('Dimanche 30 Juillet', '14h00', 2, 1, 1),
('Dimanche 30 Juillet', '18h00', 2, 1, 1),

('Vendredi 28 Juillet', '19h45', 2, 2, 2),
('Vendredi 28 Juillet', '21h15', 2, 2, 2),
('Samedi 29 Juillet', '19h00', 2, 2, 2),
('Samedi 29 Juillet', '21h45', 2, 2, 2),
('Dimanche 30 Juillet', '16h00', 2, 2, 2),
('Dimanche 30 Juillet', '18h00', 2, 2, 2),

('Vendredi 28 Juillet', '16h15', 2, 3, 3),
('Vendredi 28 Juillet', '19h15', 2, 3, 3),
('Samedi 29 Juillet', '13h45', 2, 3, 3),
('Samedi 29 Juillet', '16h15', 2, 3, 3),
('Dimanche 30 Juillet', '19h00', 2, 3, 3),

('Vendredi 28 Juillet', '10h30', 2, 4, 4),
('Vendredi 28 Juillet', '16h00', 2, 4, 4),
('Samedi 29 Juillet', '13h30', 2, 4, 4),
('Samedi 29 Juillet', '18h45', 2, 4, 4),
('Dimanche 30 Juillet', '10h30', 2, 4, 4),
('Dimanche 30 Juillet', '19h45', 2, 4, 4),

('Vendredi 28 Juillet', '16h00', 2, 6, 5),
('Vendredi 28 Juillet', '22h00', 2, 6, 5),
('Samedi 29 Juillet', '10h30', 2, 6, 5),
('Samedi 29 Juillet', '19h00', 2, 6, 5),
('Dimanche 30 Juillet', '16h00', 2, 6, 5),
('Dimanche 30 Juillet', '22h00', 2, 6, 5),

('Vendredi 28 Juillet', '19h30', 2, 9, 6),
('Vendredi 28 Juillet', '22h15', 2, 9, 6),
('Samedi 29 Juillet', '16h30', 2, 9, 6),
('Samedi 29 Juillet', '19h30', 2, 9, 6),
('Dimanche 30 Juillet', '16h30', 2, 9, 6),
('Dimanche 30 Juillet', '19h30', 2, 9, 6),




('Vendredi 28 Juillet', '16h00', 3, 2, 1),
('Samedi 29 Juillet', '18h00', 3, 2, 1),
('Dimanche 30 Juillet', '16h00', 3, 2, 1),

('Vendredi 28 Juillet', '18h15', 3, 6, 2),
('Samedi 29 Juillet', '20h00', 3, 6, 2),
('Dimanche 30 Juillet', '19h15', 3, 6, 2)*/

/*CREATE TABLE clients (
    idClient INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL, 
    email VARCHAR(50)
)*/

/*INSERT INTO clients (first_name, last_name, email) VALUES
('Maureen', 'PIVETEAU', 'maureen@test.com'),
('Ludovic', 'COUTANT', 'ludo@test.com'),
('Sylvie', 'MARTINEAU', 'sylvie@test.com'),
('Romane', 'PIVETEAU', 'romane@test.com'),
('Chiara', 'SCIELSO', 'chiara@test.com'),
('Marine', 'CHARRIAU', 'marine@test.com'),
('Samuel', 'BELON', 'samule@test.com'),
('Kevin', 'JOURNOT', 'kevin@test.com')*/


/*CREATE TABLE reservations (
    idResa INT PRIMARY KEY AUTO_INCREMENT,
    idCinema INT,
    FOREIGN KEY (idCinema) REFERENCES cinema (idCinema),
    idScreening INT,
    FOREIGN KEY (idScreening) REFERENCES screening (idScreening),
    number_of_places INT NOT NULL,
    idClient INT,
    FOREIGN KEY (idClient) REFERENCES clients (idClient)
);*/

/*INSERT INTO reservations (idCinema, idScreening, number_of_places, idClient) VALUES
(1, 2, 3, 1),
(2, 32, 2, 2),
(3, 84, 1, 3),
(2, 51, 2, 4),
(3, 88, 1, 5),
(1, 6, 1, 6),
(1, 46, 2, 7),
(2, 75, 1, 8)*/

/*CREATE TABLE price (
    idPrice INT PRIMARY KEY AUTO_INCREMENT,
    idResa INT,
    FOREIGN KEY (idResa) REFERENCES reservations (idResa),
    type_of_people VARCHAR(255) NOT NULL,
    number_of_places INT NOT NULL,
    total VARCHAR(50),
    methode_of_payment VARCHAR(50)
)*/

/*INSERT INTO price (idResa, type_of_people, number_of_places, total, methode_of_payment) VALUES 
(1, '2 adultes + 1 etudiant', 3, '26 euros', 'CB en ligne'),
(2, '2 etudiants', 2, '15.20 euros', 'au comptoir en espèces'),
(3, '1 adulte', 1, '9.20 euros', 'CB en ligne'),
(4, '1 adulte + 1 enfant', 2, '15.10 euros', 'CB en ligne'),
(5, '1 etudiant', 1, '7.60 euros', 'CB au comptoir'),
(6, '1 adulte', 1, '9.20 euros', 'CB en ligne'),
(7, '2 adultes', 2, '18.40 euros', 'CB en ligne'),
(8, '1 adulte', 1, '9.20 euros', 'CB en ligne')*/
