-- =========================================================
-- SCRIPT DE PREPARACIÓ: ITB TECH SUMMIT
-- Aquest script crea l'estat inicial de la base de dades.
-- =========================================================

DROP DATABASE IF EXISTS tech_summit;
CREATE DATABASE tech_summit;
USE tech_summit;

-- 1. Taula de ponents (estat inicial abans de les reformes)
CREATE TABLE ponent (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    cognom1 VARCHAR(50),
    cognom2 VARCHAR(50),
    email VARCHAR(100) NOT NULL,
    empresa VARCHAR(100),
    vip BOOLEAN DEFAULT FALSE
);

-- 2. Taula de sessions o xerrades
CREATE TABLE sessio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titol VARCHAR(150) NOT NULL UNIQUE,
    sala VARCHAR(50) NOT NULL,
    hora TIME NOT NULL
);

-- 3. Inserció de dades inicials amb IDs manuals 
-- (Metodologia: Forçar la consciència de les claus primàries)

INSERT INTO ponent (id, nom, cognom1, cognom2, email, empresa, vip) VALUES 
(1, 'anna', 'garcia', NULL, 'anna.garcia@tech corp.com', 'tech corp', FALSE),
(2, 'marc', 'rovira', NULL, 'marc.rovira@data solutions.com', 'data solutions', FALSE),
(3, 'laia', 'vidal', NULL, 'laia.vidal@innovate asix.com', 'innovate asix', FALSE);

INSERT INTO sessio (id, titol, sala, hora) VALUES 
(1, 'ia generativa en el núvol', 'sala a', '10:00:00'),
(2, 'seguretat en xarxes locals', 'sala b', '11:30:00'),
(3, 'automatització amb scripts', 'sala a', '13:00:00'),
(4, 'futur de les bases de dades', 'sala c', '16:00:00');

-- =========================================================
-- FI DE L'SCRIPT D'INICIALITZACIÓ
-- =========================================================