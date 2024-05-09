/*
 Navicat Premium Data Transfer

 Source Server         : TECRED
 Source Server Type    : MariaDB
 Source Server Version : 110102 (11.1.2-MariaDB)
 Source Host           : localhost:3308
 Source Schema         : biblioteck

 Target Server Type    : MariaDB
 Target Server Version : 110102 (11.1.2-MariaDB)
 File Encoding         : 65001

 Date: 07/05/2024 19:38:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adquisicion
-- ----------------------------
DROP TABLE IF EXISTS `adquisicion`;
CREATE TABLE `adquisicion`  (
  `adq_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID adquirido',
  `adq_tipo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`adq_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adquisicion
-- ----------------------------
INSERT INTO `adquisicion` VALUES (1, 'Donacion');
INSERT INTO `adquisicion` VALUES (2, 'Distribuidores mayoristas');
INSERT INTO `adquisicion` VALUES (3, 'Editoriales');
INSERT INTO `adquisicion` VALUES (4, 'Autores locales o independientes');
INSERT INTO `adquisicion` VALUES (5, 'Distribuidores de libros usados');
INSERT INTO `adquisicion` VALUES (6, 'Ferias del libro');
INSERT INTO `adquisicion` VALUES (7, 'Compra en línea');
INSERT INTO `adquisicion` VALUES (8, 'Consignación');
INSERT INTO `adquisicion` VALUES (9, 'Intercambio con otras librerías');
INSERT INTO `adquisicion` VALUES (10, 'Compra de libros de particulares');

-- ----------------------------
-- Table structure for autor
-- ----------------------------
DROP TABLE IF EXISTS `autor`;
CREATE TABLE `autor`  (
  `aut_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `aut_nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Nombre',
  `aut_paterno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Apellido Paterno\r\n',
  `aut_materno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Apellido Materno',
  `aut_pseudonimo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Pseudonimo',
  `aut_fkpais` int(11) NOT NULL COMMENT 'País',
  `aut_nacimiento` date NOT NULL COMMENT 'Fecha de nacimiento',
  `aut_fallecimiento` date NULL DEFAULT NULL COMMENT 'Fecha de Fallecimiento',
  `aut_fkgenero` int(11) NOT NULL COMMENT 'Genero libro',
  PRIMARY KEY (`aut_id`) USING BTREE,
  INDEX `aut_fkgenero`(`aut_fkgenero`) USING BTREE,
  INDEX `aut_fkpais`(`aut_fkpais`) USING BTREE,
  CONSTRAINT `autor_ibfk_2` FOREIGN KEY (`aut_fkgenero`) REFERENCES `genero` (`gen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `autor_ibfk_3` FOREIGN KEY (`aut_fkpais`) REFERENCES `pais` (`pai_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of autor
-- ----------------------------
INSERT INTO `autor` VALUES (1, 'Juan', 'Pérez', 'Rulfo', 'Juan Rulfo', 5, '1917-05-16', '1986-01-07', 11);
INSERT INTO `autor` VALUES (2, 'Carlos', 'Fuentes', 'Macías', 'Carlos Fuentes', 3, '1928-11-11', '2012-05-15', 7);
INSERT INTO `autor` VALUES (3, 'Octavio', 'Irineo', 'Paz', 'Octavio Paz', 3, '1914-03-31', '1998-04-19', 9);
INSERT INTO `autor` VALUES (4, 'Rosario', 'Castellanos', 'Figueroa', 'Rosario Castellanos', 3, '1925-05-25', '1974-08-07', 4);
INSERT INTO `autor` VALUES (5, 'Laura', 'Esquivel', 'Valdés', 'Laura Esquivel', 3, '1950-09-30', NULL, 17);
INSERT INTO `autor` VALUES (6, 'Juan', 'Villoro', 'Ruíz', 'Juan Villoro', 3, '1956-09-24', NULL, 19);
INSERT INTO `autor` VALUES (7, 'Guadalupe', 'Nettel', ' ', 'Guadalupe Nettel', 3, '1973-10-25', NULL, 14);
INSERT INTO `autor` VALUES (8, 'Juan José', 'Arreola', 'Zúñiga', 'Juan Arreola', 3, '1918-09-21', '2001-12-03', 6);
INSERT INTO `autor` VALUES (9, 'José Emilio', 'Pacheco', 'Berny', 'José Pacheco', 3, '1939-06-30', '2014-01-26', 4);
INSERT INTO `autor` VALUES (10, 'Gabriel José', 'García', 'Márquez', 'Gabriel García', 1, '1927-03-06', '2014-04-17', 15);
INSERT INTO `autor` VALUES (11, 'José Rafael', 'Pombo', 'Rebolledo', 'Rafael Pombo', 1, '1833-11-07', '1912-05-05', 18);
INSERT INTO `autor` VALUES (12, 'Jose Eustasio', 'Rivera', 'Salas', 'José Rivera', 1, '1888-02-19', '1928-12-01', 2);
INSERT INTO `autor` VALUES (13, 'Jorge Ricardo', 'Isaacs', 'Ferrer', 'Jorge Isaacs', 1, '1837-04-01', '1895-04-17', 13);
INSERT INTO `autor` VALUES (14, 'Laura', 'Restrepo', 'Casabianca', 'Laura Restrepo', 1, '1965-04-28', NULL, 12);
INSERT INTO `autor` VALUES (15, 'Santiago', 'Gamboa', 'Samper', 'Santiago Gamboa', 1, '1998-04-04', NULL, 18);
INSERT INTO `autor` VALUES (16, 'Candelario', 'Obeso', 'Hernández', 'Candelario Obeso', 1, '1849-01-12', '1884-07-03', 4);
INSERT INTO `autor` VALUES (17, 'Jorge Mario', 'Vargas', 'Llosa', 'Mario Vargas', 2, '1936-03-28', NULL, 1);
INSERT INTO `autor` VALUES (18, 'César Abraham', 'Vallejo', 'Mendoza', 'César Vallejo', 2, '1892-03-16', '1938-04-15', 7);
INSERT INTO `autor` VALUES (19, 'Julio Ramón', 'Ribeyro', 'Zúñiga', 'Julio Ribeyro', 2, '1929-08-31', '1994-12-04', 8);
INSERT INTO `autor` VALUES (20, 'Manuel Ricardo', 'Palma', 'Soriano', 'Ricardo Palma', 2, '1833-02-07', '1919-10-06', 17);
INSERT INTO `autor` VALUES (21, 'Jose', 'María', 'Arguedas', 'José Arguedas', 2, '1911-01-18', '1969-12-02', 4);
INSERT INTO `autor` VALUES (22, 'José Carlos', 'Mariátegui', 'La Chira', 'Jose Mariátegui', 2, '1894-06-14', '1930-04-16', 10);
INSERT INTO `autor` VALUES (23, 'Pedro Abraham', 'Valdelomar', 'Pinto', 'Abraham Valdelomar', 2, '1888-04-27', '1919-11-03', 9);
INSERT INTO `autor` VALUES (24, 'Ciro', 'Alegría', 'Bazán', 'Ciro Alegría', 2, '1909-11-04', '1967-02-17', 8);
INSERT INTO `autor` VALUES (25, 'José Santos', 'Chocano', 'Gastañodi', 'José Chocano', 2, '1875-05-14', '1934-12-13', 5);
INSERT INTO `autor` VALUES (26, 'Katya', 'Audaui', ' ', 'Katya Audaui', 2, '1977-02-14', NULL, 16);
INSERT INTO `autor` VALUES (27, 'Manuel', 'Escorza', 'Torres', 'Manuel Scorza', 2, '1928-09-00', '1983-11-27', 4);
INSERT INTO `autor` VALUES (28, 'Jorge Eduardo', 'Eielson', 'Sánchez', 'Jorge Eielson', 2, '1924-04-13', '2006-03-08', 19);
INSERT INTO `autor` VALUES (29, 'Jorge Oswaldo', 'Reynoso', 'Díaz', 'Oswaldo Reynoso', 2, '1931-04-10', '2016-05-24', 4);
INSERT INTO `autor` VALUES (30, 'Luis Alberto', 'Félix', 'Sánchez', 'Luis Félix', 2, '1900-10-12', '1994-02-06', 20);
INSERT INTO `autor` VALUES (31, 'Ernest', 'Miller', 'Hemingway', 'Ernest Hemingway', 3, '1899-04-21', '1961-07-02', 4);
INSERT INTO `autor` VALUES (32, 'William', 'Cuthbert', 'Faulkner', 'William Faulkner', 3, '1897-09-25', '1962-07-06', 17);
INSERT INTO `autor` VALUES (33, 'Truman', 'Streckfus', 'Persons', 'Truman Capote', 3, '1924-09-30', '1984-08-25', 4);
INSERT INTO `autor` VALUES (34, 'Samuel', 'Langhorne', 'Clemens', 'Mark Twain', 3, '1835-11-30', '1910-04-21', 14);
INSERT INTO `autor` VALUES (35, 'Edgar', 'Allan', 'Poe', 'Edgar Allan Poe', 3, '1809-01-19', '1849-10-07', 7);
INSERT INTO `autor` VALUES (36, 'Stephen', 'Edwin', 'King', 'Stephen King', 3, '1947-09-21', NULL, 6);
INSERT INTO `autor` VALUES (37, 'Nelle', 'Harper', 'Lee', 'Harper Lee', 3, '1926-04-28', '2016-02-19', 14);
INSERT INTO `autor` VALUES (38, 'Emily', 'Elizabeth', 'Dickinson', 'Emily Dickinson', 3, '1830-12-10', '1886-05-15', 4);
INSERT INTO `autor` VALUES (39, 'Jerome', 'David', 'Salinger', 'J. D. Salinger', 3, '1919-01-01', '2010-01-27', 17);
INSERT INTO `autor` VALUES (40, 'Jack', 'London', ' ', 'Jack London', 3, '1276-01-12', '1916-11-22', 12);
INSERT INTO `autor` VALUES (41, 'Patricia', 'Highsmith', ' ', 'Patricia Highsmith', 3, '1921-01-19', '1995-02-04', 4);
INSERT INTO `autor` VALUES (42, 'Floyd', 'Dell', ' ', 'Floyd Dell', 3, '1887-06-28', '1969-07-23', 1);
INSERT INTO `autor` VALUES (43, 'Lawrence', 'Dennis', ' ', 'Lawrence Dennis', 3, '1893-12-25', '1977-08-20', 8);
INSERT INTO `autor` VALUES (44, 'Stephen', 'Crane', ' ', 'Stephen Crane', 3, '1871-11-01', '1900-06-05', 18);
INSERT INTO `autor` VALUES (45, 'Horatio', 'Ruíz', 'Sánchez', 'Chuy Rusa', 3, '1998-04-04', NULL, 4);
INSERT INTO `autor` VALUES (46, 'Jorge', 'Alger', 'Jr.', 'Horatio Alger', 3, '1832-01-13', '1899-07-18', 20);
INSERT INTO `autor` VALUES (47, 'Philip', 'Milton', 'Roth', 'Philip Roth', 3, '1933-03-19', '2018-05-22', 17);
INSERT INTO `autor` VALUES (48, 'Henry', 'David', 'Thoreau', 'Henry Thoreau', 3, '1817-07-12', '1862-05-06', 17);
INSERT INTO `autor` VALUES (49, 'Radolph', 'Siliman', 'Bourne', 'Radolph Bourne', 3, '1886-05-30', '1918-12-22', 10);
INSERT INTO `autor` VALUES (50, 'Saul', 'Bellow', ' ', 'Chuy Rusa', 3, '1915-06-10', '2005-04-05', 17);
INSERT INTO `autor` VALUES (51, 'Thomas', 'Ruggles', 'Pynchon', 'Thomas Pynchon', 3, '1937-05-08', NULL, 6);
INSERT INTO `autor` VALUES (52, 'John', 'William', 'Cheever', 'Chuy Rusa', 3, '1912-05-27', '1982-06-18', 8);
INSERT INTO `autor` VALUES (53, 'David', 'Foster', 'Wallace', 'David Foster', 3, '1962-02-21', '2008-09-12', 19);
INSERT INTO `autor` VALUES (54, 'Samuel', 'Dashiell', 'Hammett', 'Samuel Hmmett', 3, '1894-05-27', '1961-01-10', 4);
INSERT INTO `autor` VALUES (55, 'Henry', 'Valentine', 'Miller', 'Henry Miller', 3, '1891-12-26', '1980-06-07', 6);
INSERT INTO `autor` VALUES (56, 'Alice', 'Ann', 'Munro', 'Alice Munro', 4, '1931-07-10', NULL, 2);
INSERT INTO `autor` VALUES (57, 'Margaret', 'Eleanor', 'Atwood', 'Margaret Atwood', 4, '1939-11-18', NULL, 13);
INSERT INTO `autor` VALUES (58, 'Alistair', 'McLeod', ' ', 'Alistair McLeod', 4, '1936-07-20', '2014-04-20', 16);
INSERT INTO `autor` VALUES (59, 'William', 'Robertson', 'Davies', 'Robertson Davies', 4, '1913-08-28', '1995-12-02', 14);
INSERT INTO `autor` VALUES (60, 'Philip', 'Michael', 'Ondaatje', 'Michael Ondaajte', 4, '1943-09-12', NULL, 17);
INSERT INTO `autor` VALUES (61, 'Mavis Leslie', 'de Trafford', 'Gallant', 'Mavis Gallant', 4, '1922-08-11', '2014-02-18', 16);
INSERT INTO `autor` VALUES (62, 'Leonard', 'Norman', 'Cohen', 'Leonard Cohen', 4, '1934-09-21', '2016-11-07', 15);
INSERT INTO `autor` VALUES (63, 'Elizabeth', 'Smart', ' ', 'Elizabeth Smart', 4, '1913-12-27', '1986-03-04', 8);
INSERT INTO `autor` VALUES (64, 'Marian', 'Engel', ' ', 'Marian Engel', 4, '1933-02-16', '1985-02-16', 7);
INSERT INTO `autor` VALUES (65, 'Anne', 'Carson', ' ', 'Anne Carson', 4, '1950-06-21', NULL, 5);
INSERT INTO `autor` VALUES (66, 'Charles Grant', 'Blairfindie', 'Allen', 'Grant Allen', 4, '1848-02-24', '1899-10-25', 18);
INSERT INTO `autor` VALUES (67, 'Herbert', 'Marshall', 'McLuhan', 'Marshall McLuhan', 4, '1911-07-21', '1980-12-31', 17);
INSERT INTO `autor` VALUES (68, 'Kenneth', 'Oppel', ' ', 'Kenneth Oppel', 4, '1967-08-12', NULL, 9);
INSERT INTO `autor` VALUES (69, 'Jorge Leal', 'Amado', 'de Faria', 'Jorge Amado', 6, '1912-08-10', '2001-08-06', 18);
INSERT INTO `autor` VALUES (70, 'Chaya', 'Pinjasvina', 'Lispector', 'Clarice Lispector', 6, '1920-12-10', '1977-12-09', 16);
INSERT INTO `autor` VALUES (71, 'Joaquim Maria', 'Machado', 'de Assis', 'Joaquin Machado', 6, '1839-06-21', '1908-09-29', 7);
INSERT INTO `autor` VALUES (72, 'Carlos', 'Drummond', 'de Andrade', 'Carlos Drummond', 6, '1902-10-31', '1987-08-17', 9);
INSERT INTO `autor` VALUES (73, 'Manuel', 'Antonio', 'de Almeida', 'Manuel de Almeida', 6, '1831-11-17', '1861-11-28', 17);
INSERT INTO `autor` VALUES (74, 'Daniel', 'Galera', ' ', 'Daniel Galera', 6, '1979-07-13', NULL, 17);
INSERT INTO `autor` VALUES (75, 'Cecilia', 'Benevides', 'de Carvalho', 'Cecilia Meireles', 6, '1901-11-07', '1964-11-09', 7);
INSERT INTO `autor` VALUES (76, 'Rachel', 'de Queiroz', ' ', 'Rachel de Queiroz', 6, '1910-11-17', '2003-11-04', 1);
INSERT INTO `autor` VALUES (77, 'Patricia', 'Rehder', 'Galvao', 'Pagu', 6, '1910-06-09', '1962-12-12', 4);
INSERT INTO `autor` VALUES (78, 'José', 'Martiniano', 'de Alencar', 'José de Alencar', 6, '1829-05-01', '1877-12-12', 18);
INSERT INTO `autor` VALUES (79, 'Raphael', 'Mantes', ' ', 'Raphael Montes', 6, '1990-09-22', NULL, 8);
INSERT INTO `autor` VALUES (80, 'Angelica', 'Freitas', ' ', 'Angelica Freitas', 6, '1973-09-23', NULL, 19);
INSERT INTO `autor` VALUES (81, 'Luiz Fernando', 'Ruffato', 'de Souza', 'Luiz Ruffato', 6, '1961-02-04', NULL, 7);
INSERT INTO `autor` VALUES (82, 'Sérgio', 'Rodrigues', ' ', 'Sérgio Rodrigues', 6, '1962-10-23', NULL, 19);
INSERT INTO `autor` VALUES (83, 'Jorge Francisco', 'Isidoro', 'Borgés', 'Jorge Luis Borges', 7, '1899-08-24', '1986-06-14', 10);
INSERT INTO `autor` VALUES (84, 'Ernesto', 'Sabato', ' ', 'Ernesto Sábato', 7, '1911-06-24', '2011-04-30', 5);
INSERT INTO `autor` VALUES (85, 'Juan', 'José', 'Saer', 'Juan Saer', 7, '1937-06-28', '2005-06-11', 8);
INSERT INTO `autor` VALUES (86, 'Flora', 'Alejandra', 'Pizarnik', 'Alejandra Pizarnik', 7, '1936-04-29', '1972-09-25', 17);
INSERT INTO `autor` VALUES (87, 'Adolfo', 'Bioy', 'Casares', 'Adolfo Casares', 7, '1914-09-15', '1999-03-08', 16);
INSERT INTO `autor` VALUES (88, 'Alfonsina', 'Storni', ' ', 'Alfonsina Storni', 7, '1892-05-29', '1938-10-25', 7);
INSERT INTO `autor` VALUES (89, 'Rodolfo Jorge', 'Walsh', 'Gill', 'Rodolfo Walsh', 7, '1927-01-09', '1977-03-25', 4);
INSERT INTO `autor` VALUES (90, 'Silvina', 'Inocencia', 'Ocampo', 'Silvina Ocampo', 7, '1903-07-28', '1993-12-14', 15);
INSERT INTO `autor` VALUES (91, 'Ricardo Emilio', 'Piglia', 'Renzi', 'Ricardo Piglia', 7, '1941-11-24', '2017-01-06', 13);
INSERT INTO `autor` VALUES (92, 'Roberto Emilio', 'Godofredo', 'Sánchez', 'Chuy Rusa', 3, '1998-04-04', NULL, 4);
INSERT INTO `autor` VALUES (93, 'Eduardo', 'Alfredo', 'Sacheri', 'Eduardo Sacheri', 3, '1998-04-04', NULL, 4);
INSERT INTO `autor` VALUES (94, 'Victor', 'Marie', 'Hugo', 'Victor Hugo', 8, '1802-02-26', '1885-05-22', 2);
INSERT INTO `autor` VALUES (95, 'Adèle', 'Ruí', 'Foucher', 'Adèle Foucher', 8, '1928-10-30', '1979-09-13', 20);
INSERT INTO `autor` VALUES (96, 'Luois', 'Rugho', 'Atmou', 'Luois Rugho', 8, '1910-07-18', '1990-12-19', 19);
INSERT INTO `autor` VALUES (97, 'Raúl', 'Juárez', 'Pérez', 'Raúl Pérez', 8, '1932-10-28', '1998-11-21', 19);
INSERT INTO `autor` VALUES (98, 'Rachel', 'Luoa', 'Atmuou', 'Rachel Luoa', 8, '1990-08-16', NULL, 8);
INSERT INTO `autor` VALUES (99, 'Lionel', 'Gamboa', 'Sánchez', 'Lio Gamboa', 8, '1999-10-24', NULL, 12);
INSERT INTO `autor` VALUES (100, 'Rafael', 'Sánchez', 'Sánchez', 'Rulo Sánchez', 8, '1932-02-18', '1992-08-23', 1);
INSERT INTO `autor` VALUES (101, 'Enrique', 'Merinos', 'Ávila', 'Quique Merinos', 8, '1978-09-19', NULL, 7);
INSERT INTO `autor` VALUES (102, 'Roque', 'Sánchez', 'Cano', 'Roque Sánchez', 8, '1989-03-02', NULL, 20);
INSERT INTO `autor` VALUES (103, 'John', 'Franch', 'Kennedy', 'John F.', 8, '1998-09-02', NULL, 17);
INSERT INTO `autor` VALUES (104, 'Ludmila', 'Vergara', 'Guadalupe', 'Ludmi', 9, '1989-09-12', '1977-10-29', 9);
INSERT INTO `autor` VALUES (105, 'Rodolph', 'McAllen', ' ', 'Rodolph McAllen', 9, '1993-10-18', NULL, 3);
INSERT INTO `autor` VALUES (106, 'Roche', 'Luoa', ' ', 'Roche Luoa', 9, '1983-10-12', NULL, 8);
INSERT INTO `autor` VALUES (107, 'Luis', 'Ávila', 'Merinos', 'Luis Merinos', 9, '1889-07-17', '1940-04-12', 14);
INSERT INTO `autor` VALUES (108, 'Ángel', 'Vera', 'Pérez', 'Angel Vera', 9, '1950-10-03', NULL, 12);
INSERT INTO `autor` VALUES (109, 'Jose', 'Pérez', 'Sánchez', 'José Pérez', 9, '1990-12-12', NULL, 14);
INSERT INTO `autor` VALUES (110, 'Roberto', 'Cabrera', 'Hernández', 'Roberto Cabrera', 9, '1890-12-01', '1950-03-02', 8);
INSERT INTO `autor` VALUES (111, 'Jessica', 'Cabrales', 'Sandoval', 'Jessica Sandoval', 9, '1998-09-10', NULL, 18);
INSERT INTO `autor` VALUES (112, 'Miguel', 'Manzanares', 'Ruíz', 'Miguel Ruíz', 10, '1979-09-18', NULL, 13);
INSERT INTO `autor` VALUES (113, 'Carlos', 'Rodríguez', 'Arteachi', 'Carlos Rodríguez', 10, '1993-10-10', NULL, 16);
INSERT INTO `autor` VALUES (114, 'Carla', 'Buazono', 'Zandoval', 'Carla Zandoval', 10, '1991-11-18', NULL, 18);
INSERT INTO `autor` VALUES (115, 'Guadalupe', 'Ruíz', 'Cano', 'Guadalupe Cano', 10, '1997-08-18', NULL, 18);
INSERT INTO `autor` VALUES (116, 'Arantza', 'Cabrazco', 'Díaz', 'Arantza Díaz', 10, '1989-07-18', NULL, 12);
INSERT INTO `autor` VALUES (117, 'Aaron', 'Ramírez', 'Pérez', 'Aaron Pérez', 10, '1989-10-12', '1969-12-16', 18);
INSERT INTO `autor` VALUES (118, 'Rodolfo', 'Zuliaga', 'Sánchez', 'Rodolfo Zuliaga', 10, '1979-04-04', NULL, 17);
INSERT INTO `autor` VALUES (119, 'Cynthia', 'Pérez', 'Zapata', 'Cynthia Pérez', 10, '1988-10-09', '1950-11-19', 3);
INSERT INTO `autor` VALUES (120, 'Rubén', 'Compañ', 'León', 'Rubén León', 10, '1969-08-12', NULL, 17);
INSERT INTO `autor` VALUES (121, 'Rocío', 'Solomon', 'Pérez', 'Rocío Solomon', 10, '1979-07-26', NULL, 7);
INSERT INTO `autor` VALUES (122, 'José', 'Sánchez', 'García', 'José García', 10, '1930-12-17', '1998-11-13', 9);
INSERT INTO `autor` VALUES (123, 'Jonathan', 'Carrera', 'Díaz', 'Jonny Díaz', 10, '1978-02-12', NULL, 7);
INSERT INTO `autor` VALUES (124, 'Cassandra', 'Torres', 'Aguilar', 'Cassy Torres', 10, '1968-04-04', NULL, 5);
INSERT INTO `autor` VALUES (125, 'Andrea', 'Cruz', 'Ruíz', 'Andy Cruz', 10, '1982-07-02', '1942-08-17', 3);
INSERT INTO `autor` VALUES (126, 'Carolina', 'González', 'Hernández', 'Caro Hernández', 10, '1958-04-04', '2008-09-02', 7);
INSERT INTO `autor` VALUES (127, 'Carlos', 'Coronel', 'Sánchez', 'Carlos Sánchez', 10, '1959-05-15', '1999-12-09', 4);
INSERT INTO `autor` VALUES (128, 'Eric', 'Arthur', 'Blair', 'Eric Blair', 10, '1903-05-25', '1950-01-21', 5);
INSERT INTO `autor` VALUES (129, 'Jane', 'Austen', ' ', 'Jane Austen', 10, '1775-12-16', '1817-07-18', 8);
INSERT INTO `autor` VALUES (130, 'Agatha', 'Clarissa', 'Miller', 'Agatha Miller', 10, '1890-09-15', '1976-01-12', 9);
INSERT INTO `autor` VALUES (131, 'Mary', 'Wollstonecraft', 'Shelley', 'Mary Shelley', 10, '1797-08-30', '1851-02-01', 1);
INSERT INTO `autor` VALUES (132, 'Emily', 'Jane', 'Bronte', 'Emily Jane', 10, '1818-07-30', '1848-12-19', 1);
INSERT INTO `autor` VALUES (133, 'Adeline', 'Virginia', 'Woolf', 'Chuy Rusa', 10, '1882-01-25', '1941-03-28', 2);
INSERT INTO `autor` VALUES (134, 'Joanne', 'Rowling', ' ', 'J. K. Rowling', 10, '1965-07-31', NULL, 9);
INSERT INTO `autor` VALUES (135, 'William', 'Blake', ' ', 'William Blake', 10, '1757-11-28', '1827-08-12', 4);
INSERT INTO `autor` VALUES (136, 'Howard', 'Jacobson', ' ', 'Howard Jacobson', 10, '1998-04-04', NULL, 4);
INSERT INTO `autor` VALUES (137, 'Miguel', 'de Cervantes', 'Saavedra', 'Miguel de Cervantes', 11, '1547-09-29', '1616-04-22', 10);
INSERT INTO `autor` VALUES (138, 'Federico', 'García', 'Lorca', 'Federico Lorca', 11, '1898-06-05', '1936-09-29', 4);
INSERT INTO `autor` VALUES (139, 'Fernando', 'Aramburu', 'Irigoyen', 'Fernando Aramburu', 11, '1959-09-14', NULL, 8);
INSERT INTO `autor` VALUES (140, 'Miguel', 'de Unamuno', 'y Jugo', 'Miguel de Unamuno', 11, '1864-09-29', '1936-12-31', 6);
INSERT INTO `autor` VALUES (141, 'Gustavo', 'Domínguez', 'Bastida', 'Gustavo Bécquer', 11, '1836-02-17', '1870-12-22', 5);
INSERT INTO `autor` VALUES (142, 'Francisco', 'Gómez', 'de Quevedo', 'Francisco de Quevedo', 11, '1580-09-14', '1645-09-08', 4);
INSERT INTO `autor` VALUES (143, 'Juan Ramón', 'Jiménez', 'Mantecón', 'Juan Jiménez', 11, '1881-12-23', '1958-05-29', 4);
INSERT INTO `autor` VALUES (144, 'Antonio', 'Machado', 'Ruíz', 'Antonio Machado', 11, '1875-07-26', '1939-02-22', 4);
INSERT INTO `autor` VALUES (145, 'Benito', 'Pérez', 'Galdós', 'Chuy Rusa', 11, '1998-04-04', NULL, 4);
INSERT INTO `autor` VALUES (146, 'Félix Lope', 'de Vega', 'Carpio', 'Lope de Vega', 11, '1562-11-25', '1635-08-27', 17);
INSERT INTO `autor` VALUES (147, 'Miguel', 'Delibes', 'Setién', 'Miguel Delibes', 11, '1920-10-17', '2010-03-12', 7);
INSERT INTO `autor` VALUES (148, 'Haruki', 'Murakami', ' ', 'Haruki Murakami', 12, '1949-01-12', NULL, 8);
INSERT INTO `autor` VALUES (149, 'Kimitake', 'Hiraoka', ' ', 'Yukio Mishima', 12, '1925-01-14', '1970-11-25', 3);
INSERT INTO `autor` VALUES (150, 'Natsume', 'Kinnosuke', ' ', 'Natsume Soseki', 12, '1867-02-09', '1916-12-09', 2);
INSERT INTO `autor` VALUES (151, 'Yasunari', 'Kawabata', ' ', 'Yasunari Kawabata', 12, '1899-06-14', '1972-04-16', 1);
INSERT INTO `autor` VALUES (152, 'Mahoko', 'Yoshimoto', ' ', 'Banana Yoshimoto', 12, '1964-07-24', NULL, 9);
INSERT INTO `autor` VALUES (153, 'Hiromi', 'Kawakami', ' ', 'Hiromi Kawakami', 12, '1958-04-01', NULL, 11);
INSERT INTO `autor` VALUES (154, 'Yoko', 'Ogawa', ' ', 'Yoko Ogawa', 12, '1962-03-30', NULL, 15);
INSERT INTO `autor` VALUES (155, 'Kazuo', 'Ishiguro', ' ', 'Kazuo Ishiguro', 12, '1954-11-08', NULL, 13);
INSERT INTO `autor` VALUES (156, 'Ryu', 'Murakami', ' ', 'Ryu Murakami', 12, '1952-02-19', NULL, 17);
INSERT INTO `autor` VALUES (157, 'Hiro', 'Arikawa', ' ', 'Hiro Arikawa', 12, '1972-06-09', NULL, 16);
INSERT INTO `autor` VALUES (158, 'Ryotaro', 'Shiba', ' ', 'Ryotaro Shiba', 12, '1923-08-07', '1996-02-12', 4);
INSERT INTO `autor` VALUES (159, 'Mieko', 'Kawakami', ' ', 'Mieko Kawakami', 12, '1976-08-29', NULL, 14);
INSERT INTO `autor` VALUES (160, 'Ko', 'Un', ' ', 'Ko Un', 13, '1933-08-01', NULL, 14);
INSERT INTO `autor` VALUES (161, 'Kim', 'Insuk', ' ', 'Kim Insuk', 13, '1963-01-01', NULL, 16);
INSERT INTO `autor` VALUES (162, 'Kim', 'Young-ha', ' ', 'Kim Young-ha', 13, '1968-11-11', NULL, 15);
INSERT INTO `autor` VALUES (163, 'Park', 'Wan', 'Suh', 'Park Wan Suh', 13, '1998-04-04', NULL, 4);
INSERT INTO `autor` VALUES (164, 'Ch\'oe', 'Hyon-mu', ' ', 'Choe Yun', 13, '1953-07-03', '2011-01-22', 20);
INSERT INTO `autor` VALUES (165, 'Kim', 'Chae-won', ' ', 'Kim Chae-won', 13, '1946-12-13', NULL, 8);
INSERT INTO `autor` VALUES (166, 'Gong', 'Ji-young', ' ', 'Gong Ji-young', 13, '1963-01-31', NULL, 6);
INSERT INTO `autor` VALUES (167, 'Cho', 'In-hun', ' ', 'Cho In-hun', 13, '1936-04-13', '2018-07-23', 20);
INSERT INTO `autor` VALUES (168, 'Hwang', 'Sok-yong', ' ', 'Hwang Sok-yong', 13, '1943-01-04', NULL, 20);
INSERT INTO `autor` VALUES (169, 'Kyung-sook', 'Shin', ' ', 'Kyung-sook Shin', 13, '1963-01-12', NULL, 4);
INSERT INTO `autor` VALUES (170, 'Eun', 'Heekyung', ' ', 'Eun Heekyung', 13, '1959-01-23', NULL, 18);
INSERT INTO `autor` VALUES (171, 'Won-pyung', 'Sohn', ' ', 'Won-pyung Sohn', 13, '1979-03-12', NULL, 8);
INSERT INTO `autor` VALUES (172, 'Vikram', 'Seth', ' ', 'Vikram Seth', 15, '1952-06-20', NULL, 4);
INSERT INTO `autor` VALUES (173, 'Rabindranath', 'Tagore', ' ', 'Rabindranath Tagore', 15, '1861-05-07', '1941-08-07', 20);
INSERT INTO `autor` VALUES (174, 'Arundhati', 'Roy', ' ', 'Arundhati Roy', 15, '1961-11-24', NULL, 16);
INSERT INTO `autor` VALUES (175, 'Nilanjana', 'Sudeshna', 'Lahiri', 'Jhumpa Lahiri', 15, '1967-07-11', NULL, 4);
INSERT INTO `autor` VALUES (176, 'Rasipuram', 'Krishnaswami', 'Narayanaswami', 'R. K. Narayan', 15, '1906-10-10', '2001-05-13', 17);
INSERT INTO `autor` VALUES (177, 'Khushwant', 'Singh', ' ', 'Khushwant Singh', 15, '1915-02-02', '2014-03-20', 4);
INSERT INTO `autor` VALUES (178, 'Amrita', 'Pritam', ' ', 'Amrita Pritam', 15, '1919-08-31', '2005-10-31', 12);
INSERT INTO `autor` VALUES (179, 'Rohinton', 'Mistry', ' ', 'Rohinton Mistry', 15, '1952-07-03', NULL, 19);
INSERT INTO `autor` VALUES (180, 'Anita', 'Agnihotri', ' ', 'Anita Agnihotri', 15, '1956-10-10', NULL, 15);
INSERT INTO `autor` VALUES (181, 'Nikolài', 'Vasilievich', 'Gògol', 'Nikolài Gògol', 16, '1809-04-01', '1852-03-04', 19);
INSERT INTO `autor` VALUES (182, 'Aleksandr', 'Serguèyevich', 'Pushkin', 'Aleksandr Pushkin', 16, '1799-06-06', '1837-02-10', 4);
INSERT INTO `autor` VALUES (183, 'Mijail', 'Afanàsievich', 'Bulgákov', 'Mijail Bulgávok', 16, '1891-05-15', '1940-03-10', 14);

-- ----------------------------
-- Table structure for autores_libro
-- ----------------------------
DROP TABLE IF EXISTS `autores_libro`;
CREATE TABLE `autores_libro`  (
  `autlib_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `autlib_fkautor` int(11) NOT NULL COMMENT 'Llave a Autores',
  `autlib_fklibro` int(11) NOT NULL COMMENT 'Llave a Libros',
  PRIMARY KEY (`autlib_id`) USING BTREE,
  INDEX `autlib_fkautor`(`autlib_fkautor`) USING BTREE,
  INDEX `autlib_fklibro`(`autlib_fklibro`) USING BTREE,
  CONSTRAINT `autores_libro_ibfk_1` FOREIGN KEY (`autlib_fkautor`) REFERENCES `autor` (`aut_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `autores_libro_ibfk_2` FOREIGN KEY (`autlib_fklibro`) REFERENCES `libro` (`lib_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of autores_libro
-- ----------------------------

-- ----------------------------
-- Table structure for clasificacion
-- ----------------------------
DROP TABLE IF EXISTS `clasificacion`;
CREATE TABLE `clasificacion`  (
  `cla_id` int(11) NOT NULL AUTO_INCREMENT,
  `cla_tipo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`cla_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clasificacion
-- ----------------------------
INSERT INTO `clasificacion` VALUES (1, 'Niños');
INSERT INTO `clasificacion` VALUES (2, 'Jovenes');
INSERT INTO `clasificacion` VALUES (3, 'Adultos');
INSERT INTO `clasificacion` VALUES (4, 'Mayores');
INSERT INTO `clasificacion` VALUES (5, 'Todas las Edades');

-- ----------------------------
-- Table structure for comentario
-- ----------------------------
DROP TABLE IF EXISTS `comentario`;
CREATE TABLE `comentario`  (
  `com_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `com_fklibro` int(11) NOT NULL COMMENT 'Llave a Libro',
  `com_fkusuario` int(11) NOT NULL COMMENT 'LLave a Usuarios',
  `com_puntuacion` int(2) NOT NULL COMMENT 'Calificación',
  `com_comentario` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Opinión',
  `com_fecha` date NOT NULL COMMENT 'Creacion',
  PRIMARY KEY (`com_id`) USING BTREE,
  INDEX `com_fklibro`(`com_fklibro`) USING BTREE,
  INDEX `com_fkusuario`(`com_fkusuario`) USING BTREE,
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`com_fklibro`) REFERENCES `libro` (`lib_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`com_fkusuario`) REFERENCES `usuario` (`usu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comentario
-- ----------------------------
INSERT INTO `comentario` VALUES (1, 1, 1, 10, 'muy buen libro', '2017-01-01');
INSERT INTO `comentario` VALUES (2, 2, 2, 10, 'muy buen libro', '2022-01-01');
INSERT INTO `comentario` VALUES (3, 3, 3, 10, 'muy buen libro', '1992-01-01');
INSERT INTO `comentario` VALUES (4, 4, 4, 10, 'muy buen libro', '2003-01-01');
INSERT INTO `comentario` VALUES (5, 5, 5, 10, 'muy buen libro', '2013-01-01');
INSERT INTO `comentario` VALUES (6, 6, 6, 10, 'muy buen libro', '1991-01-01');
INSERT INTO `comentario` VALUES (7, 7, 7, 10, 'muy buen libro', '2022-01-01');
INSERT INTO `comentario` VALUES (8, 8, 8, 10, 'muy buen libro', '1984-01-01');
INSERT INTO `comentario` VALUES (9, 9, 9, 10, 'muy buen libro', '2004-01-01');
INSERT INTO `comentario` VALUES (10, 10, 10, 10, 'muy buen libro', '2001-01-01');
INSERT INTO `comentario` VALUES (11, 11, 11, 10, 'muy buen libro', '2012-01-01');
INSERT INTO `comentario` VALUES (12, 12, 12, 10, 'muy buen libro', '1993-01-01');
INSERT INTO `comentario` VALUES (13, 13, 13, 9, 'entretenido', '1990-01-01');
INSERT INTO `comentario` VALUES (14, 14, 14, 10, 'muy buen libro', '1994-01-01');
INSERT INTO `comentario` VALUES (15, 15, 15, 10, 'muy buen libro', '2019-01-01');
INSERT INTO `comentario` VALUES (16, 16, 16, 8, 'entretenido', '2002-01-01');
INSERT INTO `comentario` VALUES (17, 17, 17, 8, 'muy buen libro', '2016-01-01');
INSERT INTO `comentario` VALUES (18, 18, 18, 10, 'muy buen libro', '2007-01-01');
INSERT INTO `comentario` VALUES (19, 19, 19, 10, 'muy buen libro', '2006-01-01');
INSERT INTO `comentario` VALUES (20, 20, 20, 10, 'muy buen libro', '1988-01-01');
INSERT INTO `comentario` VALUES (21, 21, 21, 9, 'entretenido', '1985-01-01');
INSERT INTO `comentario` VALUES (22, 22, 22, 9, 'muy buen libro', '1982-01-01');
INSERT INTO `comentario` VALUES (23, 23, 23, 10, 'muy buen libro', '2019-01-01');
INSERT INTO `comentario` VALUES (24, 24, 24, 9, 'entretenido', '1992-01-01');
INSERT INTO `comentario` VALUES (25, 25, 25, 10, 'muy buen libro', '2013-01-01');
INSERT INTO `comentario` VALUES (27, 27, 27, 9, 'entretenido', '2022-01-01');
INSERT INTO `comentario` VALUES (28, 28, 28, 10, 'muy buen libro', '2003-01-01');
INSERT INTO `comentario` VALUES (29, 29, 29, 10, 'muy buen libro', '2013-01-01');
INSERT INTO `comentario` VALUES (30, 30, 30, 10, 'muy buen libro', '1989-01-01');
INSERT INTO `comentario` VALUES (31, 31, 31, 9, 'entretenido', '2016-01-01');
INSERT INTO `comentario` VALUES (32, 32, 32, 10, 'muy buen libro', '1998-01-01');
INSERT INTO `comentario` VALUES (33, 33, 33, 10, 'muy buen libro', '2010-01-01');
INSERT INTO `comentario` VALUES (34, 34, 34, 9, 'entretenido', '1988-01-01');
INSERT INTO `comentario` VALUES (35, 35, 35, 10, 'muy buen libro', '2019-01-01');
INSERT INTO `comentario` VALUES (40, 40, 40, 10, 'muy buen libro', '2019-01-01');
INSERT INTO `comentario` VALUES (43, 43, 43, 10, 'muy buen libro', '2014-01-01');
INSERT INTO `comentario` VALUES (45, 45, 45, 10, 'muy buen libro', '1991-01-01');
INSERT INTO `comentario` VALUES (48, 48, 48, 9, 'entretenido', '2022-01-01');
INSERT INTO `comentario` VALUES (49, 49, 49, 10, 'muy buen libro', '1981-01-01');
INSERT INTO `comentario` VALUES (50, 50, 50, 10, 'muy buen libro', '1993-01-01');
INSERT INTO `comentario` VALUES (53, 53, 53, 10, 'muy buen libro', '1996-01-01');
INSERT INTO `comentario` VALUES (56, 56, 56, 9, 'entretenido', '1980-01-01');
INSERT INTO `comentario` VALUES (58, 58, 58, 10, 'muy buen libro', '2019-01-01');
INSERT INTO `comentario` VALUES (60, 60, 60, 10, 'muy buen libro', '1999-01-01');
INSERT INTO `comentario` VALUES (61, 61, 61, 10, 'muy buen libro', '2003-01-01');
INSERT INTO `comentario` VALUES (62, 62, 62, 9, 'entretenido', '1995-01-01');
INSERT INTO `comentario` VALUES (68, 68, 68, 10, 'muy buen libro', '1984-01-01');
INSERT INTO `comentario` VALUES (69, 69, 69, 9, 'entretenido', '2003-01-01');
INSERT INTO `comentario` VALUES (72, 72, 72, 10, 'muy buen libro', '1994-01-01');
INSERT INTO `comentario` VALUES (73, 73, 73, 10, 'muy buen libro', '1981-01-01');
INSERT INTO `comentario` VALUES (74, 74, 74, 10, 'muy buen libro', '1986-01-01');
INSERT INTO `comentario` VALUES (79, 79, 79, 10, 'muy buen libro', '2010-01-01');
INSERT INTO `comentario` VALUES (80, 80, 80, 10, 'muy buen libro', '2023-01-01');
INSERT INTO `comentario` VALUES (81, 81, 81, 10, 'muy buen libro', '2017-01-01');
INSERT INTO `comentario` VALUES (82, 82, 82, 9, 'entretenido', '1995-01-01');
INSERT INTO `comentario` VALUES (83, 83, 83, 10, 'muy buen libro', '1987-01-01');
INSERT INTO `comentario` VALUES (84, 84, 84, 10, 'muy buen libro', '2017-01-01');
INSERT INTO `comentario` VALUES (85, 85, 85, 8, 'entretenido', '2009-01-01');
INSERT INTO `comentario` VALUES (86, 86, 86, 8, 'muy buen libro', '2016-01-01');
INSERT INTO `comentario` VALUES (89, 89, 89, 10, 'muy buen libro', '1985-01-01');
INSERT INTO `comentario` VALUES (92, 92, 92, 10, 'muy buen libro', '1985-01-01');
INSERT INTO `comentario` VALUES (93, 93, 93, 9, 'entretenido', '1993-01-01');
INSERT INTO `comentario` VALUES (94, 94, 94, 10, 'muy buen libro', '1983-01-01');
INSERT INTO `comentario` VALUES (96, 96, 96, 9, 'entretenido', '2002-01-01');
INSERT INTO `comentario` VALUES (99, 99, 99, 10, 'muy buen libro', '1995-01-01');
INSERT INTO `comentario` VALUES (102, 101, 101, 10, 'muy buen libro', '1986-01-01');
INSERT INTO `comentario` VALUES (104, 104, 104, 10, 'muy buen libro', '2013-01-01');
INSERT INTO `comentario` VALUES (105, 106, 106, 10, 'muy buen libro', '1992-01-01');
INSERT INTO `comentario` VALUES (107, 107, 107, 10, 'muy buen libro', '1988-01-01');
INSERT INTO `comentario` VALUES (110, 110, 110, 10, 'muy buen libro', '1985-01-01');
INSERT INTO `comentario` VALUES (112, 112, 112, 10, 'muy buen libro', '1981-01-01');
INSERT INTO `comentario` VALUES (113, 113, 113, 10, 'muy buen libro', '2012-01-01');
INSERT INTO `comentario` VALUES (114, 114, 114, 10, 'muy buen libro', '2009-01-01');

-- ----------------------------
-- Table structure for copia
-- ----------------------------
DROP TABLE IF EXISTS `copia`;
CREATE TABLE `copia`  (
  `cop_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cop_fklibro` int(11) NOT NULL COMMENT 'LLave a Libros',
  `cop_estatus` enum('PRESTADO','DEVUELTO','RETRASADO','DISPONIBLE') CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Estado del Libro',
  `cop_condicion` enum('BUENA','MALA') CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Calidad Libro',
  `cop_fecha` date NOT NULL COMMENT 'Fecha Obtencion',
  `cop_fkadquisicion` int(11) NOT NULL COMMENT 'Forma en la que se consiguio',
  `cop_serie` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Identifiacadores de Copias de Libro',
  PRIMARY KEY (`cop_id`) USING BTREE,
  UNIQUE INDEX `cop_serie`(`cop_serie`) USING BTREE,
  INDEX `cop_fkadquisicion`(`cop_fkadquisicion`) USING BTREE,
  INDEX `copia_ibfk_1`(`cop_fklibro`) USING BTREE,
  CONSTRAINT `copia_ibfk_1` FOREIGN KEY (`cop_fklibro`) REFERENCES `libro` (`lib_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `copia_ibfk_2` FOREIGN KEY (`cop_fkadquisicion`) REFERENCES `adquisicion` (`adq_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of copia
-- ----------------------------
INSERT INTO `copia` VALUES (1, 1, 'PRESTADO', 'BUENA', '2020-09-01', 1, '001001');
INSERT INTO `copia` VALUES (2, 9, 'PRESTADO', 'BUENA', '2020-09-08', 1, '002009');
INSERT INTO `copia` VALUES (5, 33, 'RETRASADO', 'MALA', '2018-11-05', 5, '005033');
INSERT INTO `copia` VALUES (6, 72, 'DEVUELTO', 'BUENA', '1996-09-17', 10, '006072');
INSERT INTO `copia` VALUES (7, 10, 'RETRASADO', 'MALA', '1977-12-30', 4, '007010');
INSERT INTO `copia` VALUES (8, 2, 'PRESTADO', 'MALA', '2008-02-14', 7, '008002');
INSERT INTO `copia` VALUES (9, 89, 'DEVUELTO', 'BUENA', '2015-06-03', 9, '009089');
INSERT INTO `copia` VALUES (10, 14, 'RETRASADO', 'MALA', '2020-08-28', 1, '010014');
INSERT INTO `copia` VALUES (11, 62, 'PRESTADO', 'BUENA', '1994-10-09', 3, '011062');
INSERT INTO `copia` VALUES (14, 27, 'DEVUELTO', 'MALA', '1970-05-26', 4, '014027');
INSERT INTO `copia` VALUES (15, 92, 'RETRASADO', 'BUENA', '2012-09-07', 2, '015092');
INSERT INTO `copia` VALUES (16, 30, 'PRESTADO', 'MALA', '1985-11-11', 5, '016030');
INSERT INTO `copia` VALUES (17, 99, 'RETRASADO', 'BUENA', '1999-04-19', 10, '017099');
INSERT INTO `copia` VALUES (20, 15, 'RETRASADO', 'MALA', '2020-08-28', 1, '020015');
INSERT INTO `copia` VALUES (21, 7, 'PRESTADO', 'BUENA', '1994-10-09', 3, '021007');
INSERT INTO `copia` VALUES (22, 5, 'RETRASADO', 'MALA', '1983-03-17', 6, '022005');
INSERT INTO `copia` VALUES (23, 23, 'PRESTADO', 'BUENA', '2000-12-01', 8, '023023');
INSERT INTO `copia` VALUES (24, 22, 'DEVUELTO', 'MALA', '1970-05-26', 4, '024022');
INSERT INTO `copia` VALUES (27, 96, 'RETRASADO', 'BUENA', '1999-04-19', 10, '027096');
INSERT INTO `copia` VALUES (30, 3, 'PRESTADO', 'BUENA', '1998-07-14', 2, '030003');
INSERT INTO `copia` VALUES (31, 12, 'PRESTADO', 'MALA', '2008-09-12', 3, '031012');
INSERT INTO `copia` VALUES (32, 11, 'PRESTADO', 'BUENA', '2008-10-14', 4, '032011');
INSERT INTO `copia` VALUES (34, 19, 'PRESTADO', 'BUENA', '2008-12-02', 10, '034019');
INSERT INTO `copia` VALUES (35, 8, 'PRESTADO', 'MALA', '2010-02-02', 7, '035008');
INSERT INTO `copia` VALUES (36, 20, 'PRESTADO', 'BUENA', '2005-02-04', 3, '036020');
INSERT INTO `copia` VALUES (37, 29, 'PRESTADO', 'MALA', '2021-02-10', 1, '037029');
INSERT INTO `copia` VALUES (38, 50, 'PRESTADO', 'BUENA', '2010-03-25', 4, '038050');
INSERT INTO `copia` VALUES (39, 4, 'DEVUELTO', 'MALA', '2002-09-14', 7, '039004');
INSERT INTO `copia` VALUES (40, 32, 'RETRASADO', 'BUENA', '1998-12-03', 2, '040032');
INSERT INTO `copia` VALUES (42, 94, 'DEVUELTO', 'BUENA', '1986-05-02', 5, '042094');
INSERT INTO `copia` VALUES (43, 21, 'RETRASADO', 'MALA', '1977-08-27', 1, '043021');
INSERT INTO `copia` VALUES (45, 24, 'RETRASADO', 'MALA', '1992-02-15', 3, '045024');
INSERT INTO `copia` VALUES (46, 93, 'PRESTADO', 'BUENA', '2019-06-28', 6, '046093');
INSERT INTO `copia` VALUES (48, 13, 'PRESTADO', 'MALA', '1990-05-07', 3, '048013');
INSERT INTO `copia` VALUES (53, 101, 'PRESTADO', 'BUENA', '2009-12-05', 3, '053101');
INSERT INTO `copia` VALUES (55, 17, 'RETRASADO', 'BUENA', '2010-04-17', 10, '055017');
INSERT INTO `copia` VALUES (56, 18, 'PRESTADO', 'MALA', '2020-12-11', 9, '056018');
INSERT INTO `copia` VALUES (57, 16, 'RETRASADO', 'BUENA', '1999-04-13', 10, '057016');
INSERT INTO `copia` VALUES (58, 58, 'PRESTADO', 'BUENA', '2011-04-16', 5, '058058');
INSERT INTO `copia` VALUES (60, 28, 'RETRASADO', 'BUENA', '1995-07-08', 8, '060028');
INSERT INTO `copia` VALUES (62, 102, 'DEVUELTO', 'BUENA', '1987-06-14', 1, '062102');
INSERT INTO `copia` VALUES (64, 60, 'PRESTADO', 'BUENA', '2005-11-05', 6, '064060');
INSERT INTO `copia` VALUES (65, 83, 'RETRASADO', 'MALA', '1993-01-12', 10, '065083');
INSERT INTO `copia` VALUES (66, 49, 'PRESTADO', 'BUENA', '2021-09-08', 3, '066049');
INSERT INTO `copia` VALUES (68, 73, 'PRESTADO', 'BUENA', '2013-12-19', 5, '068073');
INSERT INTO `copia` VALUES (70, 31, 'RETRASADO', 'BUENA', '1997-06-25', 8, '070031');
INSERT INTO `copia` VALUES (72, 105, 'DEVUELTO', 'BUENA', '1988-04-11', 1, '072105');
INSERT INTO `copia` VALUES (76, 82, 'PRESTADO', 'BUENA', '2020-08-14', 3, '076082');
INSERT INTO `copia` VALUES (77, 48, 'DEVUELTO', 'MALA', '2006-06-29', 4, '077048');
INSERT INTO `copia` VALUES (78, 53, 'PRESTADO', 'BUENA', '2012-11-28', 5, '078053');
INSERT INTO `copia` VALUES (80, 35, 'RETRASADO', 'BUENA', '1996-05-08', 8, '080035');
INSERT INTO `copia` VALUES (82, 106, 'DEVUELTO', 'BUENA', '1985-09-29', 1, '082106');
INSERT INTO `copia` VALUES (84, 61, 'PRESTADO', 'BUENA', '2002-10-20', 6, '084061');
INSERT INTO `copia` VALUES (85, 25, 'RETRASADO', 'MALA', '1990-03-05', 10, '085025');
INSERT INTO `copia` VALUES (86, 84, 'PRESTADO', 'BUENA', '2018-07-11', 3, '086084');
INSERT INTO `copia` VALUES (88, 110, 'PRESTADO', 'BUENA', '2015-06-20', 5, '088110');
INSERT INTO `copia` VALUES (90, 34, 'RETRASADO', 'BUENA', '1997-10-10', 8, '090034');
INSERT INTO `copia` VALUES (92, 107, 'DEVUELTO', 'BUENA', '1986-11-28', 1, '092107');
INSERT INTO `copia` VALUES (93, 45, 'RETRASADO', 'MALA', '1973-07-22', 9, '093045');
INSERT INTO `copia` VALUES (94, 6, 'PRESTADO', 'BUENA', '2000-04-12', 6, '094006');
INSERT INTO `copia` VALUES (96, 85, 'PRESTADO', 'BUENA', '2017-03-15', 3, '096085');
INSERT INTO `copia` VALUES (98, 86, 'PRESTADO', 'BUENA', '2003-11-26', 1, '098086');
INSERT INTO `copia` VALUES (99, 81, 'DISPONIBLE', 'BUENA', '2010-01-23', 1, '099081');
INSERT INTO `copia` VALUES (100, 80, 'DISPONIBLE', 'BUENA', '2010-01-23', 1, '100080');
INSERT INTO `copia` VALUES (101, 79, 'DISPONIBLE', 'BUENA', '1995-08-25', 1, '101079');
INSERT INTO `copia` VALUES (104, 74, 'DISPONIBLE', 'BUENA', '2004-09-26', 3, '104074');
INSERT INTO `copia` VALUES (105, 68, 'DISPONIBLE', 'BUENA', '2014-09-04', 1, '105068');
INSERT INTO `copia` VALUES (106, 69, 'DISPONIBLE', 'BUENA', '2015-08-04', 2, '106069');
INSERT INTO `copia` VALUES (107, 112, 'DISPONIBLE', 'BUENA', '2016-07-24', 3, '107112');
INSERT INTO `copia` VALUES (108, 113, 'DISPONIBLE', 'BUENA', '2016-07-24', 1, '108113');
INSERT INTO `copia` VALUES (109, 114, 'DISPONIBLE', 'BUENA', '2016-07-24', 1, '109114');
INSERT INTO `copia` VALUES (110, 40, 'DISPONIBLE', 'BUENA', '2016-07-24', 3, '110040');
INSERT INTO `copia` VALUES (112, 43, 'DISPONIBLE', 'BUENA', '2016-07-24', 1, '112043');
INSERT INTO `copia` VALUES (113, 56, 'DISPONIBLE', 'BUENA', '2016-07-24', 1, '113056');
INSERT INTO `copia` VALUES (114, 104, 'PRESTADO', 'BUENA', '2016-07-24', 1, '114104');

-- ----------------------------
-- Table structure for credencial
-- ----------------------------
DROP TABLE IF EXISTS `credencial`;
CREATE TABLE `credencial`  (
  `cre_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID Credencial',
  `cre_tipo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Tipo de Credencial',
  PRIMARY KEY (`cre_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of credencial
-- ----------------------------
INSERT INTO `credencial` VALUES (1, 'Credencial de Biblioteca');
INSERT INTO `credencial` VALUES (2, 'Tarjeta de estudiante');
INSERT INTO `credencial` VALUES (3, 'Tarjeta de institución');
INSERT INTO `credencial` VALUES (4, 'Identificación personal');
INSERT INTO `credencial` VALUES (5, 'Autenticación biometrica');

-- ----------------------------
-- Table structure for editorial
-- ----------------------------
DROP TABLE IF EXISTS `editorial`;
CREATE TABLE `editorial`  (
  `edi_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `edi_nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Nombre',
  `edi_fkpais` int(11) NOT NULL COMMENT 'Pais',
  `edi_celular` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Telefono Editorial',
  `edi_fundacion` date NOT NULL COMMENT 'Año Fundacion',
  `edi_correo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Correo Electronico',
  `edi_web` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL COMMENT 'Pagina Web',
  `edi_cantidad` int(11) NOT NULL COMMENT 'Cantidad de Libros Publicados',
  PRIMARY KEY (`edi_id`) USING BTREE,
  INDEX `edi_fkpais`(`edi_fkpais`) USING BTREE,
  CONSTRAINT `editorial_ibfk_1` FOREIGN KEY (`edi_fkpais`) REFERENCES `pais` (`pai_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of editorial
-- ----------------------------
INSERT INTO `editorial` VALUES (1, 'Editorial ABC', 80, '1234567890', '1990-05-15', 'info@editorialabc.com', 'www.editorialabc.com', 800);
INSERT INTO `editorial` VALUES (2, 'Editorial XYZ', 75, '9876543210', '1985-11-30', 'info@editorialxyz.com', 'www.editorialxyz.com', 700);
INSERT INTO `editorial` VALUES (3, 'Editorial 123', 90, '5555555555', '2000-08-20', 'info@editorial123.com', 'www.editorial123.com', 697);
INSERT INTO `editorial` VALUES (4, 'Editorial 456', 65, '6666666666', '1995-04-10', 'info@editorial456.com', 'www.editorial456.com', 846);
INSERT INTO `editorial` VALUES (5, 'Editorial QRS', 50, '7777777777', '1980-02-25', 'info@editorialqrs.com', 'www.editorialqrs.com', 354);
INSERT INTO `editorial` VALUES (6, 'Editorial LMN', 85, '8888888888', '2005-07-12', 'info@editoriallmn.com', 'www.editoriallmn.com', 453);
INSERT INTO `editorial` VALUES (7, 'Editorial RST', 70, '9999999999', '1993-09-05', 'info@editorialrst.com', 'www.editorialrst.com', 434);
INSERT INTO `editorial` VALUES (8, 'Editorial UVW', 60, '1111111111', '1988-12-15', 'info@editorialuvw.com', 'www.editorialuvw.com', 216);
INSERT INTO `editorial` VALUES (9, 'Editorial GHI', 95, '2222222222', '2010-03-28', 'info@editorialghi.com', 'www.editorialghi.com', 532);
INSERT INTO `editorial` VALUES (10, 'Editorial PQR', 45, '3333333333', '1975-06-08', 'info@editorialpqr.com', 'www.editorialpqr.com', 642);
INSERT INTO `editorial` VALUES (11, 'Editorial Alpha', 80, '1234567890', '2000-05-15', 'info@alpha.com', 'www.alpha.com', 500);
INSERT INTO `editorial` VALUES (12, 'Editorial Beta', 70, '9876543210', '1995-12-10', 'info@beta.com', 'www.beta.com', 300);
INSERT INTO `editorial` VALUES (13, 'Editorial Gamma', 90, '5551112233', '2008-08-22', 'info@gamma.com', 'www.gamma.com', 750);
INSERT INTO `editorial` VALUES (14, 'Editorial Delta', 50, '9998881234', '2010-04-05', 'info@delta.com', 'www.delta.com', 150);
INSERT INTO `editorial` VALUES (15, 'Editorial Epsilon', 65, '4443335555', '2005-09-30', 'info@epsilon.com', 'www.epsilon.com', 250);
INSERT INTO `editorial` VALUES (16, 'Editorial Zeta', 85, '7776664444', '1998-11-12', 'info@zeta.com', 'www.zeta.com', 600);
INSERT INTO `editorial` VALUES (17, 'Editorial Eta', 40, '2223336666', '2012-07-18', 'info@eta.com', 'www.eta.com', 120);
INSERT INTO `editorial` VALUES (18, 'Editorial Theta', 75, '1112227777', '2003-03-25', 'info@theta.com', 'www.theta.com', 400);
INSERT INTO `editorial` VALUES (19, 'Editorial Iota', 55, '8887772222', '2014-06-08', 'info@iota.com', 'www.iota.com', 180);
INSERT INTO `editorial` VALUES (20, 'Editorial Kappa', 70, '6667779999', '2006-10-01', 'info@kappa.com', 'www.kappa.com', 900);
INSERT INTO `editorial` VALUES (21, 'Editorial A', 80, '1234567890', '2000-05-15', 'info@a.com', 'www.a.com', 500);
INSERT INTO `editorial` VALUES (22, 'Editorial B', 70, '9876543210', '1995-12-10', 'info@b.com', 'www.b.com', 300);
INSERT INTO `editorial` VALUES (23, 'Editorial C', 90, '5551112233', '2008-08-22', 'info@c.com', 'www.c.com', 750);
INSERT INTO `editorial` VALUES (24, 'Editorial D', 50, '9998884321', '2010-04-05', 'info@d.com', 'www.d.com', 150);
INSERT INTO `editorial` VALUES (25, 'Editorial E', 65, '4443335678', '2005-09-30', 'info@e.com', 'www.e.com', 250);
INSERT INTO `editorial` VALUES (26, 'Editorial F', 85, '7776666789', '1998-11-12', 'info@f.com', 'www.f.com', 600);
INSERT INTO `editorial` VALUES (27, 'Editorial G', 40, '2223337890', '2012-07-18', 'info@g.com', 'www.g.com', 120);
INSERT INTO `editorial` VALUES (28, 'Editorial H', 75, '1112228901', '2003-03-25', 'info@h.com', 'www.h.com', 400);
INSERT INTO `editorial` VALUES (29, 'Editorial J', 70, '6667772345', '2006-10-01', 'info@j.com', 'www.j.com', 900);
INSERT INTO `editorial` VALUES (30, 'Editorial K', 60, '5556663456', '2011-09-14', 'info@k.com', 'www.k.com', 420);
INSERT INTO `editorial` VALUES (31, 'Editorial L', 45, '3334444567', '2013-12-30', 'info@l.com', 'www.l.com', 320);
INSERT INTO `editorial` VALUES (32, 'Editorial M', 78, '2221115678', '2007-04-22', 'info@m.com', 'www.m.com', 570);
INSERT INTO `editorial` VALUES (33, 'Editorial I', 55, '8887771234', '2014-06-08', 'info@i.com', 'www.i.com', 180);
INSERT INTO `editorial` VALUES (34, 'Editorial 1', 80, '1234567890', '2000-01-15', 'editorial1@example.com', 'www.editorial1.com', 500);
INSERT INTO `editorial` VALUES (35, 'Editorial 2', 70, '9876543210', '1995-03-22', 'editorial2@example.com', 'www.editorial2.com', 300);
INSERT INTO `editorial` VALUES (36, 'Editorial 3', 90, '5555555555', '2008-12-10', 'editorial3@example.com', 'www.editorial3.com', 800);
INSERT INTO `editorial` VALUES (37, 'Editorial 4', 60, '1111222233', '2010-05-05', 'editorial4@example.com', 'www.editorial4.com', 200);
INSERT INTO `editorial` VALUES (38, 'Editorial 5', 85, '4444444444', '1998-08-28', 'editorial5@example.com', 'www.editorial5.com', 600);
INSERT INTO `editorial` VALUES (39, 'Editorial 6', 75, '7777777777', '2005-11-18', 'editorial6@example.com', 'www.editorial6.com', 450);
INSERT INTO `editorial` VALUES (40, 'Editorial 7', 95, '9999999999', '1990-02-14', 'editorial7@example.com', 'www.editorial7.com', 1000);
INSERT INTO `editorial` VALUES (41, 'Editorial 8', 65, '6666666666', '2002-07-30', 'editorial8@example.com', 'www.editorial8.com', 250);
INSERT INTO `editorial` VALUES (42, 'Editorial 9', 78, '8888888888', '1993-06-25', 'editorial9@example.com', 'www.editorial9.com', 700);
INSERT INTO `editorial` VALUES (43, 'Editorial 10', 87, '2222222222', '2003-09-05', 'editorial10@example.com', 'www.editorial10.com', 900);
INSERT INTO `editorial` VALUES (44, 'Editorial 11', 73, '3333333333', '2012-04-12', 'editorial11@example.com', 'www.editorial11.com', 350);
INSERT INTO `editorial` VALUES (45, 'Editorial 12', 92, '4444444444', '2007-07-17', 'editorial12@example.com', 'www.editorial12.com', 750);
INSERT INTO `editorial` VALUES (46, 'Editorial 13', 68, '7777777777', '1997-10-20', 'editorial13@example.com', 'www.editorial13.com', 150);
INSERT INTO `editorial` VALUES (47, 'Editorial 14', 82, '5555555555', '2009-06-08', 'editorial14@example.com', 'www.editorial14.com', 550);
INSERT INTO `editorial` VALUES (48, 'Editorial 15', 79, '9999999999', '2001-08-03', 'editorial15@example.com', 'www.editorial15.com', 950);
INSERT INTO `editorial` VALUES (49, 'LibroUno', 85, '5551237890', '2000-02-10', 'librouno@example.com', 'www.librouno.com', 750);
INSERT INTO `editorial` VALUES (50, 'EdiCorta', 70, '9876549876', '1998-04-05', 'edicorta@example.com', 'www.edicorta.com', 400);
INSERT INTO `editorial` VALUES (51, 'PubliIncre', 95, '4445556666', '2005-12-20', 'publiincre@example.com', 'www.publiincre.com', 900);
INSERT INTO `editorial` VALUES (52, 'EdiCiencia', 60, '1122334455', '2011-03-15', 'ediciencia@example.com', 'www.ediciencia.com', 150);
INSERT INTO `editorial` VALUES (53, 'LibroFut', 80, '5559871234', '1995-06-22', 'librofut@example.com', 'www.librofut.com', 600);
INSERT INTO `editorial` VALUES (54, 'EdiEstel', 75, '7771234567', '2007-08-25', 'ediestel@example.com', 'www.ediestel.com', 450);
INSERT INTO `editorial` VALUES (55, 'EdiInnova', 90, '9998887777', '1990-11-30', 'ediinnova@example.com', 'www.ediinnova.com', 1000);
INSERT INTO `editorial` VALUES (56, 'EdiVision', 65, '6669993333', '2003-07-12', 'edivision@example.com', 'www.edivision.com', 250);
INSERT INTO `editorial` VALUES (57, 'LibroFan', 78, '8885551111', '1993-09-18', 'librofan@example.com', 'www.librofan.com', 700);
INSERT INTO `editorial` VALUES (58, 'EdiFutur', 87, '2224446666', '2002-04-03', 'edifutur@example.com', 'www.edifutur.com', 950);
INSERT INTO `editorial` VALUES (59, 'EdiCreat', 73, '3337771111', '2013-01-25', 'edicreat@example.com', 'www.edicreat.com', 350);
INSERT INTO `editorial` VALUES (60, 'LibroVis', 92, '4447773333', '2008-09-10', 'librovis@example.com', 'www.librovis.com', 800);
INSERT INTO `editorial` VALUES (61, 'EdiProgre', 68, '7773338888', '1997-02-15', 'ediprogre@example.com', 'www.ediprogre.com', 200);
INSERT INTO `editorial` VALUES (62, 'EdiSorpr', 82, '5551113333', '2010-05-30', 'edisorpr@example.com', 'www.edisorpr.com', 550);
INSERT INTO `editorial` VALUES (63, 'LibroInsp', 79, '9995558888', '2001-07-08', 'libroinsp@example.com', 'www.libroinsp.com', 400);
INSERT INTO `editorial` VALUES (64, 'EdiRevol', 75, '5553339999', '2004-10-01', 'edirevol@example.com', 'www.edirevol.com', 650);
INSERT INTO `editorial` VALUES (65, 'EdiImagi', 88, '2226669999', '1996-12-05', 'ediimagi@example.com', 'www.ediimagi.com', 300);
INSERT INTO `editorial` VALUES (66, 'LibroSobr', 72, '7771118888', '2009-08-22', 'librosobr@example.com', 'www.librosobr.com', 250);
INSERT INTO `editorial` VALUES (67, 'EdiSingul', 91, '4448882222', '1994-03-19', 'edisingul@example.com', 'www.edisingul.com', 850);
INSERT INTO `editorial` VALUES (68, 'EdiExtra', 67, '5552224444', '2006-06-14', 'ediextra@example.com', 'www.ediextra.com', 550);
INSERT INTO `editorial` VALUES (69, 'EdiUno', 70, '5551237890', '2001-01-10', 'ediuno@example.com', 'www.ediuno.com', 600);
INSERT INTO `editorial` VALUES (70, 'LibroCorto', 60, '9876549876', '1999-02-15', 'librocorto@example.com', 'www.librocorto.com', 300);
INSERT INTO `editorial` VALUES (71, 'EdiRápida', 80, '4445556666', '2006-03-20', 'edirapida@example.com', 'www.edirapida.com', 900);
INSERT INTO `editorial` VALUES (72, 'EdiTech', 75, '1122334455', '2010-04-25', 'editech@example.com', 'www.editech.com', 400);
INSERT INTO `editorial` VALUES (73, 'LibroFácil', 90, '5559871234', '1997-05-30', 'librofacil@example.com', 'www.librofacil.com', 800);
INSERT INTO `editorial` VALUES (74, 'EdiExpress', 65, '7771234567', '2002-06-05', 'ediexpress@example.com', 'www.ediexpress.com', 200);
INSERT INTO `editorial` VALUES (75, 'EdiGlobal', 85, '9998887777', '1995-07-10', 'ediglobal@example.com', 'www.ediglobal.com', 750);
INSERT INTO `editorial` VALUES (76, 'EdiSmart', 68, '6669993333', '2008-08-15', 'edismart@example.com', 'www.edismart.com', 150);
INSERT INTO `editorial` VALUES (77, 'LibroCreativo', 78, '8885551111', '1994-09-20', 'librocreativo@example.com', 'www.librocreativo.com', 500);
INSERT INTO `editorial` VALUES (78, 'EdiVisionaria', 95, '2224446666', '2009-10-25', 'edivisionaria@example.com', 'www.edivisionaria.com', 1000);
INSERT INTO `editorial` VALUES (79, 'EdiIdeas', 72, '3337771111', '2012-11-30', 'ediideas@example.com', 'www.ediideas.com', 350);
INSERT INTO `editorial` VALUES (80, 'LibroMagia', 88, '4447773333', '2007-12-05', 'libromagia@example.com', 'www.libromagia.com', 650);
INSERT INTO `editorial` VALUES (81, 'EdiFutura', 74, '7773338888', '1993-01-10', 'edifutura@example.com', 'www.edifutura.com', 250);
INSERT INTO `editorial` VALUES (82, 'EdiArte', 82, '5551113333', '2004-02-15', 'ediarte@example.com', 'www.ediarte.com', 550);
INSERT INTO `editorial` VALUES (83, 'LibroRaro', 79, '9995558888', '1996-03-20', 'libroraro@example.com', 'www.libroraro.com', 450);
INSERT INTO `editorial` VALUES (84, 'EdiInnovación', 73, '5553339999', '2003-04-25', 'ediinnovacion@example.com', 'www.ediinnovacion.com', 700);
INSERT INTO `editorial` VALUES (85, 'LibroMisterio', 89, '2226669999', '1998-05-30', 'libromisterio@example.com', 'www.libromisterio.com', 300);
INSERT INTO `editorial` VALUES (86, 'EdiActual', 66, '7771118888', '2005-06-05', 'ediactual@example.com', 'www.ediactual.com', 350);
INSERT INTO `editorial` VALUES (87, 'LibroSecreto', 94, '4448882222', '1992-07-10', 'librosecreto@example.com', 'www.librosecreto.com', 850);
INSERT INTO `editorial` VALUES (88, 'EdiGenial', 71, '5552224444', '2001-08-15', 'edigenial@example.com', 'www.edigenial.com', 550);
INSERT INTO `editorial` VALUES (89, 'Lib1', 70, '5551237890', '2001-01-10', 'lib1@example.com', 'www.lib1.com', 600);
INSERT INTO `editorial` VALUES (90, 'Edi2', 65, '9876549876', '1999-02-15', 'edi2@example.com', 'www.edi2.com', 300);
INSERT INTO `editorial` VALUES (91, 'Edi3', 88, '4445556666', '2006-03-20', 'edi3@example.com', 'www.edi3.com', 900);
INSERT INTO `editorial` VALUES (92, 'Lib4', 75, '1122334455', '2010-04-25', 'lib4@example.com', 'www.lib4.com', 400);
INSERT INTO `editorial` VALUES (93, 'Edi5', 92, '5559871234', '1997-05-30', 'edi5@example.com', 'www.edi5.com', 800);
INSERT INTO `editorial` VALUES (94, 'Edi6', 68, '7771234567', '2002-06-05', 'edi6@example.com', 'www.edi6.com', 200);
INSERT INTO `editorial` VALUES (95, 'Edi7', 85, '9998887777', '1995-07-10', 'edi7@example.com', 'www.edi7.com', 750);
INSERT INTO `editorial` VALUES (96, 'Edi8', 72, '6669993333', '2008-08-15', 'edi8@example.com', 'www.edi8.com', 150);
INSERT INTO `editorial` VALUES (97, 'Lib9', 78, '8885551111', '1994-09-20', 'lib9@example.com', 'www.lib9.com', 500);
INSERT INTO `editorial` VALUES (98, 'Edi10', 95, '2224446666', '2009-10-25', 'edi10@example.com', 'www.edi10.com', 1000);
INSERT INTO `editorial` VALUES (99, 'Edi11', 73, '3337771111', '2012-11-30', 'edi11@example.com', 'www.edi11.com', 350);
INSERT INTO `editorial` VALUES (100, 'Lib12', 88, '4447773333', '2007-12-05', 'lib12@example.com', 'www.lib12.com', 650);
INSERT INTO `editorial` VALUES (101, 'Lib1', 70, '5551237890', '2001-01-10', 'lib1@example.com', 'www.lib1.com', 600);
INSERT INTO `editorial` VALUES (102, 'Edi2', 65, '9876549876', '1999-02-15', 'edi2@example.com', 'www.edi2.com', 300);
INSERT INTO `editorial` VALUES (103, 'Edi3', 88, '4445556666', '2006-03-20', 'edi3@example.com', 'www.edi3.com', 900);
INSERT INTO `editorial` VALUES (104, 'Lib4', 75, '1122334455', '2010-04-25', 'lib4@example.com', 'www.lib4.com', 400);
INSERT INTO `editorial` VALUES (105, 'Edi5', 92, '5559871234', '1997-05-30', 'edi5@example.com', 'www.edi5.com', 800);
INSERT INTO `editorial` VALUES (106, 'Edi6', 68, '7771234567', '2002-06-05', 'edi6@example.com', 'www.edi6.com', 200);
INSERT INTO `editorial` VALUES (107, 'Edi7', 85, '9998887777', '1995-07-10', 'edi7@example.com', 'www.edi7.com', 750);
INSERT INTO `editorial` VALUES (108, 'Edi8', 72, '6669993333', '2008-08-15', 'edi8@example.com', 'www.edi8.com', 150);
INSERT INTO `editorial` VALUES (109, 'Lib9', 78, '8885551111', '1994-09-20', 'lib9@example.com', 'www.lib9.com', 500);
INSERT INTO `editorial` VALUES (110, 'Edi10', 95, '2224446666', '2009-10-25', 'edi10@example.com', 'www.edi10.com', 1000);
INSERT INTO `editorial` VALUES (111, 'Edi11', 73, '3337771111', '2012-11-30', 'edi11@example.com', 'www.edi11.com', 350);
INSERT INTO `editorial` VALUES (112, 'Lib12', 88, '4447773333', '2007-12-05', 'lib12@example.com', 'www.lib12.com', 650);

-- ----------------------------
-- Table structure for editorial_libro
-- ----------------------------
DROP TABLE IF EXISTS `editorial_libro`;
CREATE TABLE `editorial_libro`  (
  `edilib_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id Editorial_Libros',
  `edilib_fkeditorial` int(11) NOT NULL COMMENT 'Llave a Editorial',
  `edilib_fklibro` int(11) NOT NULL COMMENT 'Llave a Libros',
  PRIMARY KEY (`edilib_id`) USING BTREE,
  INDEX `edilib_fkeditorial`(`edilib_fkeditorial`) USING BTREE,
  INDEX `edilib_fklibro`(`edilib_fklibro`) USING BTREE,
  CONSTRAINT `editorial_libro_ibfk_1` FOREIGN KEY (`edilib_fkeditorial`) REFERENCES `editorial` (`edi_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `editorial_libro_ibfk_2` FOREIGN KEY (`edilib_fklibro`) REFERENCES `libro` (`lib_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of editorial_libro
-- ----------------------------

-- ----------------------------
-- Table structure for genero
-- ----------------------------
DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero`  (
  `gen_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID Genero',
  `gen_tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Generos de los libros',
  PRIMARY KEY (`gen_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of genero
-- ----------------------------
INSERT INTO `genero` VALUES (1, 'Ficción');
INSERT INTO `genero` VALUES (2, 'No ficción');
INSERT INTO `genero` VALUES (3, 'Poesía');
INSERT INTO `genero` VALUES (4, 'Drama');
INSERT INTO `genero` VALUES (5, 'Ciencia ficción');
INSERT INTO `genero` VALUES (6, 'Fantasía');
INSERT INTO `genero` VALUES (7, 'Terror');
INSERT INTO `genero` VALUES (8, 'Misterio');
INSERT INTO `genero` VALUES (9, 'Romance');
INSERT INTO `genero` VALUES (10, 'Aventura');
INSERT INTO `genero` VALUES (11, 'Histórico');
INSERT INTO `genero` VALUES (12, 'Realismo mágico');
INSERT INTO `genero` VALUES (13, 'Literatura infantil y juvenil');
INSERT INTO `genero` VALUES (14, 'Ciencia y divulgación científica');
INSERT INTO `genero` VALUES (15, 'Ensayo filosófico');
INSERT INTO `genero` VALUES (16, 'Política y sociedad');
INSERT INTO `genero` VALUES (17, 'Religión y espiritualidad');
INSERT INTO `genero` VALUES (18, 'Autoayuda y desarrollo personal');
INSERT INTO `genero` VALUES (19, 'Viajes');
INSERT INTO `genero` VALUES (20, 'Humor');

-- ----------------------------
-- Table structure for libro
-- ----------------------------
DROP TABLE IF EXISTS `libro`;
CREATE TABLE `libro`  (
  `lib_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `lib_titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Titulo Libro',
  `lib_publicacion` date NOT NULL COMMENT 'Año\r\n\r\nAño Publicado',
  `lib_isbn` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Identificacion libro',
  `lib_pagina` int(4) NOT NULL COMMENT 'Cantidad Paginas',
  `lib_idioma` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Idioma\r\n',
  `lib_fkautor` int(11) NOT NULL COMMENT 'FK a Autor',
  `lib_fkgenero` int(11) NOT NULL COMMENT 'FK a Generos',
  `lib_fkeditorial` int(11) NOT NULL COMMENT 'Fk a Editorial',
  `lib_fkclasificacion` int(11) NOT NULL COMMENT 'FK a Clasificacion',
  PRIMARY KEY (`lib_id`) USING BTREE,
  INDEX `lib_fkgenero`(`lib_fkgenero`) USING BTREE,
  INDEX `lib_fkeditorial`(`lib_fkeditorial`) USING BTREE,
  INDEX `lib_fkclasificacion`(`lib_fkclasificacion`) USING BTREE,
  INDEX `libro_ibfk_5`(`lib_fkautor`) USING BTREE,
  CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`lib_fkgenero`) REFERENCES `genero` (`gen_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`lib_fkeditorial`) REFERENCES `editorial` (`edi_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `libro_ibfk_4` FOREIGN KEY (`lib_fkclasificacion`) REFERENCES `clasificacion` (`cla_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of libro
-- ----------------------------
INSERT INTO `libro` VALUES (1, 'El Gran Gatsby', '2020-05-15', '978-2020-05-15-1-1', 192, 'inglés', 1, 1, 1, 1);
INSERT INTO `libro` VALUES (2, 'Cien Años de Soledad', '2005-10-20', '978-2005-10-20-2-2', 432, 'español', 2, 2, 2, 2);
INSERT INTO `libro` VALUES (3, '1984', '2010-03-10', '978-2010-03-10-3-3', 328, 'inglés', 3, 3, 3, 3);
INSERT INTO `libro` VALUES (4, 'Crimen y Castigo', '2008-07-05', '978-2008-07-05-4-4', 545, 'español', 4, 4, 4, 4);
INSERT INTO `libro` VALUES (5, 'Los Juegos del Hambre', '2014-02-18', '978-2014-02-18-5-5', 400, 'español', 5, 5, 5, 5);
INSERT INTO `libro` VALUES (6, 'Don Quijote de la Mancha', '2000-12-01', '978-2000-12-01-6-6', 983, 'español', 6, 6, 6, 1);
INSERT INTO `libro` VALUES (7, 'Matar un Ruiseñor', '2015-09-30', '978-2015-09-30-7-7', 384, 'inglés', 7, 7, 7, 2);
INSERT INTO `libro` VALUES (8, 'Crimen en el Expreso de Oriente', '2019-06-15', '978-2019-06-15-8-8', 256, 'español', 8, 8, 8, 3);
INSERT INTO `libro` VALUES (9, 'Harry Potter y la Piedra Filosofal', '2001-03-28', '978-2001-03-28-9-9', 223, 'español', 9, 9, 9, 4);
INSERT INTO `libro` VALUES (10, 'Cazadores de Sombras: Ciudad de Hueso', '2012-11-08', '978-2012-11-08-10-10', 512, 'español', 10, 10, 10, 5);
INSERT INTO `libro` VALUES (11, 'Evolución de la Bombilla', '2005-08-15', '978-2005-08-15-11-11', 992, 'español', 11, 11, 11, 1);
INSERT INTO `libro` VALUES (12, 'Primera Linea', '2011-10-03', '978-2011-10-03-12-12', 328, 'inglés', 12, 12, 12, 2);
INSERT INTO `libro` VALUES (13, 'Justo a Tiempo', '2007-04-10', '978-2007-04-10-13-13', 417, 'español', 13, 13, 13, 3);
INSERT INTO `libro` VALUES (14, 'Las Motivaciones del Méxicano', '2015-09-02', '978-2015-09-02-14-14', 464, 'español', 14, 14, 14, 4);
INSERT INTO `libro` VALUES (15, 'El Gran Vendedor', '2012-07-08', '978-2012-07-08-15-15', 384, 'español', 15, 15, 15, 5);
INSERT INTO `libro` VALUES (16, 'La Parabola', '2001-06-26', '978-2001-06-26-16-16', 320, 'inglés', 16, 16, 16, 1);
INSERT INTO `libro` VALUES (17, 'La Mancha', '2009-12-15', '978-2009-12-15-17-17', 545, 'español', 17, 17, 17, 2);
INSERT INTO `libro` VALUES (18, 'Historia de mis Putas Tristes', '2008-03-20', '978-2008-03-20-18-18', 416, 'inglés', 18, 18, 18, 3);
INSERT INTO `libro` VALUES (19, 'Ulises', '2013-01-02', '978-2013-01-02-19-19', 648, 'inglés', 19, 19, 19, 4);
INSERT INTO `libro` VALUES (20, 'La Odisea', '2016-11-30', '978-2016-11-30-20-20', 416, 'español', 20, 20, 20, 5);
INSERT INTO `libro` VALUES (21, 'Moby-Dick', '2010-05-15', '978-2010-05-15-21-21', 654, 'inglés', 21, 1, 21, 1);
INSERT INTO `libro` VALUES (22, 'Las Aventuras de Sherlock Holmes', '2018-02-09', '978-2018-02-09-22-22', 320, 'inglés', 22, 2, 22, 2);
INSERT INTO `libro` VALUES (23, 'Historia de la ', '2006-09-20', '978-2006-09-20-23-23', 541, 'español', 23, 3, 23, 3);
INSERT INTO `libro` VALUES (24, 'Anna Karenina', '2015-04-01', '978-2015-04-01-24-24', 864, 'inglés', 24, 4, 24, 4);
INSERT INTO `libro` VALUES (25, 'Cronica de una Muerte Anunciada', '2013-10-12', '978-2013-10-12-25-25', 400, 'español', 25, 5, 25, 5);
INSERT INTO `libro` VALUES (27, 'Los Crímenes de la Calle Morgue', '2003-07-07', '978-2003-07-07-27-27', 320, 'español', 27, 2, 27, 2);
INSERT INTO `libro` VALUES (28, 'Historia de un Emprendedor', '2017-12-02', '978-2017-12-02-28-28', 448, 'español', 28, 3, 28, 3);
INSERT INTO `libro` VALUES (29, 'El Caballero de la Armadura Oxidada', '2014-11-15', '978-2014-11-15-29-29', 200, 'español', 29, 4, 29, 4);
INSERT INTO `libro` VALUES (30, 'El Hobbit', '2016-03-30', '978-2016-03-30-30-30', 320, 'español', 30, 5, 30, 5);
INSERT INTO `libro` VALUES (31, 'La isla del tesoro', '1883-05-23', '978-1883-05-23-31-31', 311, 'inglés', 31, 7, 31, 1);
INSERT INTO `libro` VALUES (32, 'El retrato de Dorian Gray', '1890-07-01', '978-1890-07-01-32-32', 238, 'inglés', 32, 6, 32, 2);
INSERT INTO `libro` VALUES (33, 'La casa de los espíritus', '1982-01-01', '978-1982-01-01-33-33', 507, 'español', 33, 3, 33, 3);
INSERT INTO `libro` VALUES (34, 'El amor en los tiempos del cólera', '1985-01-01', '978-1985-01-01-34-34', 368, 'español', 34, 5, 34, 4);
INSERT INTO `libro` VALUES (35, 'La sombra del viento', '2001-01-01', '978-2001-01-01-35-35', 537, 'español', 35, 3, 35, 5);
INSERT INTO `libro` VALUES (40, 'La Amazona Oculta', '1966-01-01', '978-1966-01-01-1-40', 343, 'inglés', 61, 4, 1, 5);
INSERT INTO `libro` VALUES (43, 'El mundo es plano', '2005-01-01', '978-2005-01-01-4-43', 656, 'inglés', 94, 10, 4, 3);
INSERT INTO `libro` VALUES (45, 'El código Da Vinci', '2003-01-01', '978-2003-01-01-6-45', 689, 'inglés', 116, 7, 6, 5);
INSERT INTO `libro` VALUES (48, 'La historia del mundo en 6 copas', '2005-01-01', '978-2005-01-01-9-48', 384, 'inglés', 149, 5, 9, 3);
INSERT INTO `libro` VALUES (49, 'El Historia de la Guerra', '1883-11-14', '978-1883-11-14-55-49', 300, 'español', 20, 2, 55, 4);
INSERT INTO `libro` VALUES (50, 'Secretos de la Guerra', '1890-07-03', '978-1890-07-03-65-50', 250, 'inglés', 12, 7, 65, 2);
INSERT INTO `libro` VALUES (53, 'La Contra Cultara en México', '2001-05-25', '978-2001-05-25-88-53', 480, 'español', 13, 6, 88, 5);
INSERT INTO `libro` VALUES (56, 'La Tregua', '1876-12-10', '978-1876-12-10-19-56', 320, 'inglés', 14, 2, 19, 1);
INSERT INTO `libro` VALUES (58, 'A sangre fría', '1966-09-26', '978-1966-09-26-100-58', 360, 'inglés', 8, 8, 100, 5);
INSERT INTO `libro` VALUES (60, 'El señor de los anillos', '1954-07-29', '978-1954-07-29-12-60', 600, 'inglés', 8, 1, 12, 3);
INSERT INTO `libro` VALUES (61, 'El viaje de Chihiro', '2001-07-20', '978-2001-07-20-80-61', 400, 'español', 29, 9, 80, 5);
INSERT INTO `libro` VALUES (62, 'El camino', '1987-05-05', '978-1987-05-05-62-62', 250, 'español', 22, 7, 62, 4);
INSERT INTO `libro` VALUES (68, 'El secreto', '2006-11-26', '978-2006-11-26-62-68', 198, 'inglés', 18, 1, 62, 3);
INSERT INTO `libro` VALUES (69, 'La Biblia', '1000-01-01', '978-1000-01-01-104-69', 1100, 'español', 23, 6, 104, 2);
INSERT INTO `libro` VALUES (72, 'El Alquimista', '0520-05-20', '978-0520-05-20-93-72', 750, 'español', 67, 15, 93, 1);
INSERT INTO `libro` VALUES (73, 'El Libro de los muertos', '1706-12-17', '978-1706-12-17-80-73', 420, 'español', 110, 19, 80, 5);
INSERT INTO `libro` VALUES (74, 'El origen de las especies', '1859-11-24', '978-1859-11-24-75-74', 100, 'inglés', 180, 12, 75, 4);
INSERT INTO `libro` VALUES (79, 'Crepúsculo', '2005-10-05', '978-2005-10-05-80-79', 498, 'inglés', 98, 8, 80, 3);
INSERT INTO `libro` VALUES (80, 'Los puentes de Madison', '1992-06-02', '978-1992-06-02-105-80', 220, 'inglés', 72, 6, 105, 5);
INSERT INTO `libro` VALUES (81, 'Cumbres borrascosas', '1847-12-29', '978-1847-12-29-92-81', 328, 'inglés', 84, 9, 92, 2);
INSERT INTO `libro` VALUES (82, 'Un Grito Desesperado', '1813-01-28', '978-1813-01-28-49-82', 432, 'inglés', 51, 8, 49, 1);
INSERT INTO `libro` VALUES (83, '50 sombras de Grey', '2011-05-25', '978-2011-05-25-110-83', 514, 'inglés', 111, 11, 110, 3);
INSERT INTO `libro` VALUES (84, 'El diario de Bridget Jones', '1996-11-01', '978-1996-11-01-67-84', 320, 'inglés', 41, 10, 67, 4);
INSERT INTO `libro` VALUES (85, 'El Hombre en Busca del Sentido', '1985-03-06', '978-1985-03-06-78-85', 350, 'español', 17, 6, 78, 1);
INSERT INTO `libro` VALUES (86, 'Jane Eyre', '1847-10-16', '978-1847-10-16-7-86', 412, 'inglés', 96, 9, 7, 2);
INSERT INTO `libro` VALUES (89, 'La guía del autoestopista galáctico', '1979-04-19', '978-1979-04-19-78-89', 215, 'inglés', 63, 4, 78, 1);
INSERT INTO `libro` VALUES (92, 'Moby Dick', '1851-10-18', '978-1851-10-18-1-92', 330, 'inglés', 22, 10, 1, 4);
INSERT INTO `libro` VALUES (93, 'Percy Jackson y los dioses del Olimpo', '2005-06-28', '978-2005-06-28-33-93', 390, 'español', 123, 9, 33, 2);
INSERT INTO `libro` VALUES (94, 'Las aventuras de Huckleberry Finn', '1884-12-10', '978-1884-12-10-18-94', 305, 'inglés', 56, 2, 18, 1);
INSERT INTO `libro` VALUES (96, 'Viaje al centro de la Tierra', '1864-11-25', '978-1864-11-25-66-96', 280, 'español', 34, 7, 66, 5);
INSERT INTO `libro` VALUES (99, 'La caída de Constantinopla', '1965-12-08', '978-1965-12-08-98-99', 320, 'inglés', 5, 8, 98, 4);
INSERT INTO `libro` VALUES (101, 'La Guerra Civil Española', '1961-09-05', '978-1961-09-05-99-101', 550, 'español', 18, 8, 99, 3);
INSERT INTO `libro` VALUES (102, 'La Segunda Guerra Mundial', '1998-11-10', '978-1998-11-10-96-102', 750, 'inglés', 4, 8, 96, 2);
INSERT INTO `libro` VALUES (104, 'La Guerra Fría', '2000-06-30', '978-2000-06-30-93-104', 720, 'inglés', 3, 8, 93, 5);
INSERT INTO `libro` VALUES (105, 'El Imperio Romano', '2005-04-25', '978-2005-04-25-92-105', 610, 'inglés', 6, 8, 92, 4);
INSERT INTO `libro` VALUES (106, 'La llamada de Cthulhu', '1928-08-20', '978-1928-08-20-55-106', 200, 'inglés', 19, 8, 55, 5);
INSERT INTO `libro` VALUES (107, 'Frankenstein', '1818-01-01', '978-1818-01-01-78-107', 250, 'inglés', 9, 8, 78, 4);
INSERT INTO `libro` VALUES (110, 'Carrie', '1974-04-05', '978-1974-04-05-45-110', 280, 'inglés', 10, 4, 45, 1);
INSERT INTO `libro` VALUES (112, 'La colonizacion', '1890-07-03', '978-1890-07-03-100-112', 320, 'inglés', 12, 7, 100, 3);
INSERT INTO `libro` VALUES (113, 'El resplandor', '1977-01-28', '978-1977-01-28-88-113', 400, 'inglés', 16, 3, 88, 5);
INSERT INTO `libro` VALUES (114, 'El extraño caso del doctor Jekyll y el señor Hyde', '1886-01-05', '978-1886-01-05-65-114', 200, 'inglés', 17, 8, 65, 1);

-- ----------------------------
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS `pais`;
CREATE TABLE `pais`  (
  `pai_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID Idiomas',
  `pai_nombre` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'Nombre del idioma',
  PRIMARY KEY (`pai_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pais
-- ----------------------------
INSERT INTO `pais` VALUES (1, 'Colombia');
INSERT INTO `pais` VALUES (2, 'Peru');
INSERT INTO `pais` VALUES (3, 'Estados Unidos');
INSERT INTO `pais` VALUES (4, 'Canadá');
INSERT INTO `pais` VALUES (5, 'México');
INSERT INTO `pais` VALUES (6, 'Brasil');
INSERT INTO `pais` VALUES (7, 'Argentina');
INSERT INTO `pais` VALUES (8, 'Francia');
INSERT INTO `pais` VALUES (9, 'Alemania');
INSERT INTO `pais` VALUES (10, 'Reino Unido');
INSERT INTO `pais` VALUES (11, 'España');
INSERT INTO `pais` VALUES (12, 'Japón');
INSERT INTO `pais` VALUES (13, 'Corea del Sur');
INSERT INTO `pais` VALUES (14, 'China');
INSERT INTO `pais` VALUES (15, 'India');
INSERT INTO `pais` VALUES (16, 'Rusia');
INSERT INTO `pais` VALUES (17, 'Sudáfrica');
INSERT INTO `pais` VALUES (18, 'Egipto');
INSERT INTO `pais` VALUES (19, 'Nigeria');
INSERT INTO `pais` VALUES (20, 'Kenia');
INSERT INTO `pais` VALUES (21, 'Uganda');
INSERT INTO `pais` VALUES (22, 'Ghana');
INSERT INTO `pais` VALUES (23, 'Costa de Marfil');
INSERT INTO `pais` VALUES (24, 'Túnez');
INSERT INTO `pais` VALUES (25, 'Marruecos');
INSERT INTO `pais` VALUES (26, 'Argelia');
INSERT INTO `pais` VALUES (27, 'Mauritania');
INSERT INTO `pais` VALUES (28, 'Senegal');
INSERT INTO `pais` VALUES (29, 'Camerún');
INSERT INTO `pais` VALUES (30, 'Madagascar');
INSERT INTO `pais` VALUES (31, 'Malasia');
INSERT INTO `pais` VALUES (32, 'Tailandia');
INSERT INTO `pais` VALUES (33, 'Vietnam');
INSERT INTO `pais` VALUES (34, 'Filipinas');
INSERT INTO `pais` VALUES (35, 'Indonesia');
INSERT INTO `pais` VALUES (36, 'Singapur');
INSERT INTO `pais` VALUES (37, 'Brunei');
INSERT INTO `pais` VALUES (38, 'Myanmar (Birmania)');
INSERT INTO `pais` VALUES (39, 'Laos');
INSERT INTO `pais` VALUES (40, 'Camboya');
INSERT INTO `pais` VALUES (41, 'Bangladés');
INSERT INTO `pais` VALUES (42, 'Pakistán');
INSERT INTO `pais` VALUES (43, 'Sri Lanka');
INSERT INTO `pais` VALUES (44, 'Maldivas');
INSERT INTO `pais` VALUES (45, 'Nepal');
INSERT INTO `pais` VALUES (46, 'Bután');
INSERT INTO `pais` VALUES (47, 'Afganistán');
INSERT INTO `pais` VALUES (48, 'Irán');
INSERT INTO `pais` VALUES (49, 'Iraq');
INSERT INTO `pais` VALUES (50, 'Armenia');
INSERT INTO `pais` VALUES (51, 'Azerbaiyán');
INSERT INTO `pais` VALUES (52, 'Georgia');
INSERT INTO `pais` VALUES (53, 'Turkmenistán');
INSERT INTO `pais` VALUES (54, 'Uzbekistán');
INSERT INTO `pais` VALUES (55, 'Kazajistán');
INSERT INTO `pais` VALUES (56, 'Kirguistán');
INSERT INTO `pais` VALUES (57, 'Tayikistán');
INSERT INTO `pais` VALUES (58, 'Mongolia');
INSERT INTO `pais` VALUES (59, 'Albania');
INSERT INTO `pais` VALUES (60, 'Andorra');
INSERT INTO `pais` VALUES (61, 'Arabia Saudita');
INSERT INTO `pais` VALUES (62, 'Bolivia');
INSERT INTO `pais` VALUES (63, 'Angola');
INSERT INTO `pais` VALUES (64, 'Belgica');
INSERT INTO `pais` VALUES (65, 'Bulgaria');
INSERT INTO `pais` VALUES (66, 'Chile');
INSERT INTO `pais` VALUES (67, 'Chirpe');
INSERT INTO `pais` VALUES (68, 'Republica del Congo');
INSERT INTO `pais` VALUES (69, 'Croacia');
INSERT INTO `pais` VALUES (70, 'Cuba');
INSERT INTO `pais` VALUES (71, 'Dinamarca');
INSERT INTO `pais` VALUES (72, 'Dominica');
INSERT INTO `pais` VALUES (73, 'Republica Dominicana');
INSERT INTO `pais` VALUES (74, 'Emiratos Árabes Unidos');
INSERT INTO `pais` VALUES (75, 'Eslovaquia');
INSERT INTO `pais` VALUES (76, 'Letonia');
INSERT INTO `pais` VALUES (77, 'Eslovenia');
INSERT INTO `pais` VALUES (78, 'Finlandia');
INSERT INTO `pais` VALUES (79, 'Grecia');
INSERT INTO `pais` VALUES (80, 'Guinea Ecuatorial');
INSERT INTO `pais` VALUES (81, 'Haití');
INSERT INTO `pais` VALUES (82, 'Hungría');
INSERT INTO `pais` VALUES (83, 'Irlanda');
INSERT INTO `pais` VALUES (84, 'Islandia');
INSERT INTO `pais` VALUES (85, 'Israel');
INSERT INTO `pais` VALUES (86, 'Italia');
INSERT INTO `pais` VALUES (87, 'Jamaica');
INSERT INTO `pais` VALUES (88, 'Líbano');
INSERT INTO `pais` VALUES (89, 'Liberia');
INSERT INTO `pais` VALUES (90, 'Luxemburgo');
INSERT INTO `pais` VALUES (91, 'Macedonia del Norte');
INSERT INTO `pais` VALUES (92, 'Mónaco');
INSERT INTO `pais` VALUES (93, 'Montenegro');
INSERT INTO `pais` VALUES (94, 'Noruega');
INSERT INTO `pais` VALUES (95, 'Omán');
INSERT INTO `pais` VALUES (96, 'Países Bajos');
INSERT INTO `pais` VALUES (97, 'Palestina');
INSERT INTO `pais` VALUES (98, 'Paraguay');
INSERT INTO `pais` VALUES (99, 'Polonia');
INSERT INTO `pais` VALUES (100, 'Portugal');

-- ----------------------------
-- Table structure for prestamo
-- ----------------------------
DROP TABLE IF EXISTS `prestamo`;
CREATE TABLE `prestamo`  (
  `pre_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pre_fkusuario` int(11) NOT NULL COMMENT 'ID Usuario',
  `pre_fkserie` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'ID Libro',
  `pre_fecha` date NOT NULL COMMENT 'Fecha de Prestamo',
  `pre_prevista` date NOT NULL COMMENT 'Fecha de Devolucion Prevista',
  `pre_real` date NOT NULL COMMENT 'Fecha de Devolucion Real',
  `pre_estatus` enum('PRESTADO','DEVUELTO','RETRASADO') CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'ID prestamo',
  `pre_devolucion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Comentario sobre la devolucion del libro',
  PRIMARY KEY (`pre_id`) USING BTREE,
  INDEX `pre_fkusuario`(`pre_fkusuario`) USING BTREE,
  INDEX `pre_fkserie`(`pre_fkserie`) USING BTREE,
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`pre_fkusuario`) REFERENCES `usuario` (`usu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`pre_fkserie`) REFERENCES `copia` (`cop_serie`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prestamo
-- ----------------------------
INSERT INTO `prestamo` VALUES (1, 51, '001001', '2023-06-17', '2023-06-19', '2023-06-19', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (2, 52, '002009', '2023-07-06', '2023-07-08', '2023-07-08', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (3, 53, '005033', '2024-01-06', '2024-01-08', '2024-01-08', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (4, 54, '006072', '2023-05-19', '2023-05-21', '2023-05-21', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (5, 55, '007010', '2023-09-11', '2023-09-13', '2023-09-13', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (6, 56, '008002', '2023-03-06', '2023-03-08', '2023-03-08', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (7, 57, '009089', '2023-08-18', '2023-08-20', '2023-08-20', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (8, 58, '010014', '2023-06-17', '2023-06-19', '2023-06-19', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (9, 59, '011062', '2023-04-01', '2023-04-03', '2023-04-03', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (10, 60, '014027', '2023-09-14', '2023-09-16', '2023-02-17', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (11, 61, '015092', '2023-08-03', '2023-08-05', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (12, 62, '016030', '2023-10-01', '2023-10-03', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (13, 63, '017099', '2023-10-31', '2023-11-02', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (14, 64, '020015', '2023-10-10', '2023-10-12', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (15, 65, '021007', '2023-03-27', '2023-03-29', '2023-02-17', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (16, 66, '022005', '2023-09-17', '2023-09-19', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (17, 67, '023023', '2023-09-13', '2023-09-15', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (18, 68, '024022', '2023-03-26', '2023-03-28', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (19, 69, '027096', '2023-11-29', '2023-12-01', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (20, 70, '030003', '2023-09-20', '2023-09-22', '2023-02-17', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (21, 71, '031012', '2023-09-22', '2023-09-24', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (22, 72, '032011', '2023-04-27', '2023-04-29', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (23, 73, '034019', '2023-04-11', '2023-04-13', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (24, 74, '035008', '2023-04-15', '2023-04-17', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (25, 75, '036020', '2023-06-15', '2023-06-17', '2023-06-17', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (26, 76, '037029', '2023-04-09', '2023-04-11', '2023-04-11', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (27, 77, '038050', '2023-11-06', '2023-11-08', '2023-11-08', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (28, 78, '039004', '2023-04-13', '2023-04-15', '2023-04-15', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (29, 79, '040032', '2023-09-22', '2023-09-24', '2023-09-24', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (30, 80, '042094', '2023-08-19', '2023-08-21', '2023-08-21', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (31, 81, '043021', '2023-11-06', '2023-11-08', '2023-11-08', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (32, 82, '045024', '2023-03-15', '2023-03-17', '2023-03-17', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (33, 83, '046093', '2023-04-28', '2023-04-30', '2023-04-30', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (34, 84, '048013', '2023-11-12', '2023-11-14', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (35, 85, '053101', '2023-03-18', '2023-03-20', '2023-02-17', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (36, 86, '055017', '2023-04-27', '2023-04-29', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (37, 87, '056018', '2023-10-27', '2023-10-29', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (38, 88, '057016', '2023-12-31', '2024-01-02', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (39, 89, '058058', '2023-05-22', '2023-05-24', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (40, 90, '060028', '2023-10-19', '2023-10-21', '2023-02-17', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (41, 91, '062102', '2023-09-11', '2023-09-13', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (42, 92, '064060', '2023-12-06', '2023-12-08', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (43, 93, '065083', '2023-06-06', '2023-06-08', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (44, 94, '066049', '2023-03-18', '2023-03-20', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (45, 95, '068073', '2023-08-13', '2023-08-15', '2023-02-17', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (46, 96, '070031', '2023-04-21', '2023-04-23', '2023-02-16', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (47, 97, '072105', '2023-07-12', '2023-07-14', '2023-07-14', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (48, 98, '076082', '2023-08-01', '2023-08-03', '2023-08-03', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (49, 99, '077048', '2023-03-10', '2023-03-12', '2023-03-12', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (50, 100, '078053', '2024-01-21', '2024-01-23', '2024-01-23', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (52, 102, '080035', '2023-07-28', '2023-07-30', '2023-07-30', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (53, 103, '082106', '2023-07-12', '2023-07-14', '2023-07-14', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (54, 104, '084061', '2023-10-11', '2023-10-13', '2023-10-13', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (55, 105, '085025', '2023-02-25', '2023-02-27', '2023-02-27', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (56, 106, '086084', '2023-04-16', '2023-04-18', '2023-02-17', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (57, 107, '088110', '2023-10-31', '2023-11-02', '2023-02-17', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (58, 108, '090034', '2023-02-25', '2023-02-27', '2023-02-17', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (59, 109, '092107', '2024-02-10', '2024-02-12', '2023-02-17', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (60, 110, '093045', '2023-12-15', '2023-12-17', '2023-02-18', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (61, 111, '094006', '2023-04-15', '2023-04-17', '2023-02-17', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (62, 112, '096085', '2023-06-03', '2023-06-05', '2023-02-17', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (63, 113, '098086', '2024-02-06', '2024-02-08', '2024-02-08', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (64, 114, '099081', '2024-02-02', '2024-02-04', '2024-02-04', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (65, 115, '100080', '2024-01-01', '2024-01-03', '2024-01-03', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (66, 116, '101079', '2023-08-02', '2023-08-04', '2023-08-04', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (67, 117, '104074', '2023-10-10', '2023-10-12', '2023-10-12', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (68, 118, '105068', '2023-12-19', '2023-12-21', '2023-12-21', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (69, 119, '106069', '2023-05-11', '2023-05-13', '2023-05-13', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (70, 120, '107112', '2023-09-28', '2023-09-30', '2023-09-30', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (71, 121, '108113', '2023-06-29', '2023-07-01', '2023-07-01', 'RETRASADO', 'dañado');
INSERT INTO `prestamo` VALUES (72, 122, '109114', '2024-01-31', '2024-02-02', '2024-02-02', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (73, 123, '110040', '2023-10-20', '2023-10-22', '2023-10-22', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (74, 124, '112043', '2023-08-08', '2023-08-10', '2023-08-10', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (75, 125, '113056', '2023-06-18', '2023-06-20', '2023-02-17', 'DEVUELTO', 'bueno');
INSERT INTO `prestamo` VALUES (196, 192, '114104', '2023-11-16', '2023-11-21', '2023-11-16', 'PRESTADO', 'PRESTADO');
INSERT INTO `prestamo` VALUES (197, 192, '114104', '2023-11-16', '2023-11-21', '2023-11-16', 'PRESTADO', 'PRESTADO');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `usu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `usu_nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Nombre',
  `usu_paterno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Paterno',
  `usu_materno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Materno',
  `usu_nacimiento` date NOT NULL,
  `usu_correo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Correo',
  `usu_registro` date NOT NULL COMMENT 'Registro',
  `usu_visita` date NOT NULL COMMENT 'Ultima Visita',
  `usu_direccion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Direccion Casa',
  `usu_celular` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Telefono',
  `usu_fkcredencial` int(11) NOT NULL COMMENT 'Tipo de Credencial',
  PRIMARY KEY (`usu_id`) USING BTREE,
  INDEX `usu_fkcredencial`(`usu_fkcredencial`) USING BTREE,
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usu_fkcredencial`) REFERENCES `credencial` (`cre_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 196 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'Juan', 'Pérez', 'Gómez', '1980-05-15', 'juan.perez@email.com', '2023-01-15', '2023-09-12', '123 Calle Principal, Ciudad', '5551234567', 1);
INSERT INTO `usuario` VALUES (2, 'María', 'García', 'López', '1975-08-22', 'maria.garcia@email.com', '2022-11-10', '2023-09-12', '456 Avenida Central, Ciudad', '5552345678', 2);
INSERT INTO `usuario` VALUES (3, 'Carlos', 'Rodríguez', 'Fernández', '1990-03-10', 'carlos.rod@email.com', '2023-03-05', '2023-09-12', '789 Calle Secundaria, Ciudad', '5553456789', 3);
INSERT INTO `usuario` VALUES (4, 'Luisa', 'Martínez', 'Ortega', '1988-11-30', 'luisa.martinez@email.com', '2023-02-20', '2023-09-12', '1010 Calle Principal, Ciudad', '5554567890', 4);
INSERT INTO `usuario` VALUES (5, 'Pedro', 'Hernández', 'Sánchez', '1972-02-08', 'pedro.hernandez@email.com', '2023-04-15', '2023-09-12', '111 Avenida Principal, Ciudad', '5555678901', 5);
INSERT INTO `usuario` VALUES (6, 'Ana', 'López', 'Gutiérrez', '1995-09-20', 'ana.lopez@email.com', '2023-05-12', '2023-09-12', '2222 Calle Secundaria, Ciudad', '5556789012', 1);
INSERT INTO `usuario` VALUES (7, 'Raul', 'Gómez', 'Hernández', '1984-07-12', 'raul.gomez@email.com', '2023-06-08', '2023-09-12', '3333 Avenida Secundaria, Ciudad', '5557890123', 2);
INSERT INTO `usuario` VALUES (8, 'Sofía', 'Fernández', 'González', '1982-04-25', 'sofia.fernandez@email.com', '2023-07-17', '2023-09-12', '4444 Calle Principal, Ciudad', '5558901234', 3);
INSERT INTO `usuario` VALUES (9, 'Javier', 'Ramírez', 'Soto', '1978-06-19', 'javier.ramirez@email.com', '2023-08-22', '2023-09-12', '5555 Avenida Central, Ciudad', '5559012345', 4);
INSERT INTO `usuario` VALUES (10, 'Isabel', 'Díaz', 'López', '1992-12-03', 'isabel.diaz@email.com', '2023-09-01', '2023-09-12', '6789 Calle Secundaria, Ciudad', '5550123456', 5);
INSERT INTO `usuario` VALUES (11, 'Luis', 'González', 'Martínez', '1987-10-15', 'luis.gonzalez@email.com', '2023-09-05', '2023-09-12', '7777 Avenida Principal, Ciudad', '5551234567', 1);
INSERT INTO `usuario` VALUES (12, 'Elena', 'Sánchez', 'Fernández', '1993-01-28', 'elena.sanchez@email.com', '2023-09-10', '2023-09-12', '8888 Calle Secundaria, Ciudad', '5552345678', 2);
INSERT INTO `usuario` VALUES (13, 'Manuel', 'Martínez', 'Gómez', '1985-06-12', 'manuel.martinez@email.com', '2023-09-02', '2023-09-12', '9999 Avenida Principal, Ciudad', '5553456789', 3);
INSERT INTO `usuario` VALUES (14, 'Laura', 'Fernández', 'Rodríguez', '1990-09-08', 'laura.fernandez@email.com', '2023-09-03', '2023-09-12', '10101 Calle Principal, Ciudad', '5554567890', 4);
INSERT INTO `usuario` VALUES (15, 'Ricardo', 'López', 'Hernández', '1983-04-01', 'ricardo.lopez@email.com', '2023-09-07', '2023-09-12', '11111 Avenida Secundaria, Ciudad', '5555678901', 5);
INSERT INTO `usuario` VALUES (16, 'Gabriel', 'López', 'Rojas', '1993-10-08', 'gabriel.lopez@example.com', '2022-12-20', '2023-09-12', 'Calle I #789', '5551234567', 3);
INSERT INTO `usuario` VALUES (17, 'Marta', 'Díaz', 'Fernández', '1986-12-15', 'marta.diaz@example.com', '2022-10-22', '2023-09-11', 'Av. Paseo #234', '5559876543', 2);
INSERT INTO `usuario` VALUES (18, 'David', 'García', 'Sánchez', '1997-05-30', 'david.garcia@example.com', '2023-03-05', '2023-09-10', 'Calle J #567', '5557891234', 5);
INSERT INTO `usuario` VALUES (19, 'Silvia', 'Rodríguez', 'Pérez', '1984-09-18', 'silvia.rodriguez@example.com', '2021-11-03', '2023-09-09', 'Av. Principal #123', '5554567890', 4);
INSERT INTO `usuario` VALUES (20, 'Hugo', 'Fernández', 'Gómez', '1979-07-25', 'hugo.fernandez@example.com', '2020-08-12', '2023-09-08', 'Calle K #432', '5559876543', 1);
INSERT INTO `usuario` VALUES (21, 'Laura', 'Gutiérrez', 'Hernández', '1992-04-10', 'laura.gutierrez@example.com', '2023-02-22', '2023-09-07', 'Av. Secundaria #876', '5551234567', 2);
INSERT INTO `usuario` VALUES (22, 'Oscar', 'Martínez', 'Ramírez', '1988-08-02', 'oscar.martinez@example.com', '2023-04-10', '2023-09-06', 'Calle L #654', '5557891234', 3);
INSERT INTO `usuario` VALUES (23, 'Elena', 'López', 'Soto', '1991-01-14', 'elena.lopez@example.com', '2022-12-01', '2023-09-05', 'Av. Norte #321', '5553217890', 5);
INSERT INTO `usuario` VALUES (24, 'Fernando', 'Sánchez', 'Gómez', '1985-06-20', 'fernando.sanchez@example.com', '2023-05-15', '2023-09-04', 'Calle M #789', '5559876543', 4);
INSERT INTO `usuario` VALUES (25, 'Luis', 'García', 'Pérez', '1995-03-02', 'luis.garcia@example.com', '2022-09-10', '2023-09-03', 'Av. Sur #567', '5557891234', 1);
INSERT INTO `usuario` VALUES (26, 'Sara', 'Pérez', 'Gutiérrez', '1990-11-27', 'sara.perez@example.com', '2023-04-05', '2023-09-02', 'Calle N #234', '5551234567', 3);
INSERT INTO `usuario` VALUES (27, 'Raúl', 'Gómez', 'Ramírez', '1983-03-10', 'raul.gomez@example.com', '2023-06-08', '2023-09-01', 'Av. Este #876', '5559876543', 2);
INSERT INTO `usuario` VALUES (28, 'Natalia', 'Torres', 'Sánchez', '1998-07-15', 'natalia.torres@example.com', '2022-08-28', '2023-08-31', 'Calle O #432', '5553217890', 4);
INSERT INTO `usuario` VALUES (29, 'Pedro', 'Hernández', 'López', '1981-09-05', 'pedro.hernandez@example.com', '2023-03-20', '2023-08-30', 'Av. Oeste #789', '5557891234', 5);
INSERT INTO `usuario` VALUES (30, 'Andrea', 'García', 'Fernández', '1994-12-12', 'andrea.garcia@example.com', '2022-06-18', '2023-08-29', 'Calle P #654', '5551234567', 1);
INSERT INTO `usuario` VALUES (31, 'Alejandro', 'Martínez', 'Gómez', '1986-06-10', 'alejandro.martinez@example.com', '2021-11-15', '2023-09-12', 'Calle X #789', '5551234567', 2);
INSERT INTO `usuario` VALUES (32, 'Sara', 'Ramírez', 'Fernández', '1993-02-18', 'sara.ramirez@example.com', '2020-09-22', '2023-09-11', 'Av. Y #123', '5559876543', 4);
INSERT INTO `usuario` VALUES (33, 'Daniel', 'López', 'Sánchez', '1980-09-25', 'daniel.lopez@example.com', '2022-05-08', '2023-09-10', 'Calle Z #456', '5557891234', 5);
INSERT INTO `usuario` VALUES (34, 'Laura', 'González', 'Pérez', '1998-04-30', 'laura.gonzalez@example.com', '2023-03-12', '2023-09-09', 'Av. Principal #654', '5554567890', 1);
INSERT INTO `usuario` VALUES (35, 'Héctor', 'Hernández', 'Gutiérrez', '1982-08-07', 'hector.hernandez@example.com', '2022-10-20', '2023-09-08', 'Calle W #321', '5559876543', 3);
INSERT INTO `usuario` VALUES (36, 'Ana', 'Gómez', 'Martínez', '1991-03-15', 'ana.gomez@example.com', '2022-12-15', '2023-09-07', 'Av. Secundaria #567', '5551234567', 2);
INSERT INTO `usuario` VALUES (37, 'Pedro', 'Rodríguez', 'López', '1989-11-22', 'pedro.rodriguez@example.com', '2021-09-05', '2023-09-06', 'Calle V #890', '5557891234', 4);
INSERT INTO `usuario` VALUES (38, 'Isabel', 'Soto', 'Fernández', '1994-07-18', 'isabel.soto@example.com', '2023-04-02', '2023-09-05', 'Av. Norte #432', '5553217890', 3);
INSERT INTO `usuario` VALUES (39, 'Fernando', 'Gutiérrez', 'Ramírez', '1987-12-03', 'fernando.gutierrez@example.com', '2022-08-10', '2023-09-04', 'Calle U #234', '5559876543', 5);
INSERT INTO `usuario` VALUES (40, 'Carla', 'López', 'González', '1995-01-28', 'carla.lopez@example.com', '2023-01-20', '2023-09-03', 'Av. Sur #876', '5551234567', 1);
INSERT INTO `usuario` VALUES (41, 'Roberto', 'Sánchez', 'Martínez', '1984-05-12', 'roberto.sanchez@example.com', '2022-06-15', '2023-09-02', 'Calle T #543', '5557891234', 2);
INSERT INTO `usuario` VALUES (42, 'Elena', 'Ramírez', 'Gómez', '1990-10-07', 'elena.ramirez@example.com', '2023-03-30', '2023-09-01', 'Av. Este #765', '5553217890', 4);
INSERT INTO `usuario` VALUES (43, 'Javier', 'Martínez', 'López', '1978-03-25', 'javier.martinez@example.com', '2023-07-18', '2023-08-31', 'Calle S #678', '5559876543', 3);
INSERT INTO `usuario` VALUES (44, 'María', 'Gómez', 'Sánchez', '1992-09-15', 'maria.gomez@example.com', '2023-02-05', '2023-08-30', 'Av. Oeste #321', '5557891234', 1);
INSERT INTO `usuario` VALUES (45, 'Luis', 'Fernández', 'Ramírez', '1983-04-22', 'luis.fernandez@example.com', '2021-05-10', '2023-08-29', 'Calle R #987', '5553217890', 5);
INSERT INTO `usuario` VALUES (46, 'Fernando', 'Martínez', 'García', '1984-08-12', 'fernando.martinez@example.com', '2023-07-10', '2023-09-12', 'Calle I #789', '5551234567', 3);
INSERT INTO `usuario` VALUES (47, 'Silvia', 'López', 'Rodríguez', '1979-12-05', 'silvia.lopez@example.com', '2023-05-20', '2023-09-11', 'Av. Principal #12', '5559876543', 2);
INSERT INTO `usuario` VALUES (48, 'Raúl', 'Gutiérrez', 'Fernández', '1992-03-18', 'raul.gutierrez@example.com', '2022-02-28', '2023-09-10', 'Calle J #345', '5557891234', 5);
INSERT INTO `usuario` VALUES (49, 'Carmen', 'Soto', 'Hernández', '1981-06-25', 'carmen.soto@example.com', '2021-11-03', '2023-09-09', 'Av. Secundaria #678', '5553217890', 1);
INSERT INTO `usuario` VALUES (50, 'Pablo', 'Ramírez', 'Pérez', '1993-02-01', 'pablo.ramirez@example.com', '2020-10-15', '2023-09-08', 'Calle K #234', '5559876543', 4);
INSERT INTO `usuario` VALUES (51, 'Lorena', 'Hernández', 'Gómez', '1998-09-20', 'lorena.hernandez@example.com', '2023-04-22', '2023-09-07', 'Av. Norte #567', '5553217890', 3);
INSERT INTO `usuario` VALUES (52, 'Diego', 'Gómez', 'Sánchez', '1986-07-02', 'diego.gomez@example.com', '2023-01-15', '2023-09-06', 'Calle L #123', '5557891234', 1);
INSERT INTO `usuario` VALUES (53, 'Alicia', 'Rodríguez', 'Pérez', '1990-05-15', 'alicia.rodriguez@example.com', '2022-08-30', '2023-09-05', 'Av. Sur #432', '5551234567', 2);
INSERT INTO `usuario` VALUES (54, 'Roberto', 'García', 'Gómez', '1987-11-10', 'roberto.garcia@example.com', '2023-03-20', '2023-09-04', 'Calle M #789', '5559876543', 5);
INSERT INTO `usuario` VALUES (55, 'Elena', 'López', 'Soto', '1982-02-03', 'elena.lopez@example.com', '2023-02-10', '2023-09-03', 'Av. Este #654', '5553217890', 4);
INSERT INTO `usuario` VALUES (56, 'José', 'Sánchez', 'Martínez', '1995-10-28', 'jose.sanchez@example.com', '2022-06-12', '2023-09-02', 'Calle N #876', '5557891234', 3);
INSERT INTO `usuario` VALUES (57, 'Sara', 'Gómez', 'Hernández', '1988-04-15', 'sara.gomez@example.com', '2023-06-25', '2023-09-01', 'Av. Oeste #321', '5551234567', 2);
INSERT INTO `usuario` VALUES (58, 'Hugo', 'Martínez', 'Ramírez', '1997-03-07', 'hugo.martinez@example.com', '2023-03-10', '2023-08-31', 'Calle O #543', '5559876543', 1);
INSERT INTO `usuario` VALUES (59, 'Paola', 'Fernández', 'López', '1983-12-02', 'paola.fernandez@example.com', '2023-04-18', '2023-08-30', 'Av. Pueblo #234', '5553217890', 4);
INSERT INTO `usuario` VALUES (60, 'Andrés', 'Ramírez', 'Gutiérrez', '1990-01-14', 'andres.ramirez@example.com', '2023-07-15', '2023-08-29', 'Calle P #987', '5557891234', 5);
INSERT INTO `usuario` VALUES (61, 'Gustavo', 'López', 'Martínez', '1981-04-10', 'gustavo.lopez@example.com', '2021-12-10', '2023-09-28', 'Calle I #987', '5551234567', 3);
INSERT INTO `usuario` VALUES (62, 'Fernanda', 'Torres', 'González', '1993-08-15', 'fernanda.torres@example.com', '2023-01-15', '2023-09-27', 'Av. Norte #234', '5559876543', 1);
INSERT INTO `usuario` VALUES (63, 'Mario', 'Ramírez', 'Soto', '1989-11-22', 'mario.ramirez@example.com', '2022-10-05', '2023-09-26', 'Calle J #654', '5557891234', 1);
INSERT INTO `usuario` VALUES (64, 'Lucía', 'Sánchez', 'Fernández', '1985-06-30', 'lucia.sanchez@example.com', '2023-03-25', '2023-09-25', 'Av. Este #321', '5553217890', 4);
INSERT INTO `usuario` VALUES (65, 'Diego', 'Gómez', 'Rodríguez', '1996-02-18', 'diego.gomez@example.com', '2023-06-18', '2023-09-24', 'Calle K #876', '5551234567', 1);
INSERT INTO `usuario` VALUES (66, 'Carmen', 'Hernández', 'López', '1980-07-12', 'carmen.hernandez@example.com', '2023-04-30', '2023-09-23', 'Av. Oeste #543', '5559876543', 3);
INSERT INTO `usuario` VALUES (67, 'Roberto', 'Martínez', 'Gutiérrez', '1990-05-25', 'roberto.martinez@example.com', '2021-11-15', '2023-09-22', 'Calle L #432', '5557891234', 2);
INSERT INTO `usuario` VALUES (68, 'Sara', 'García', 'Pérez', '1994-09-03', 'sara.garcia@example.com', '2023-02-28', '2023-09-21', 'Av. Sur #789', '5553217890', 1);
INSERT INTO `usuario` VALUES (69, 'Miguel', 'Rodríguez', 'Hernández', '1987-03-08', 'miguel.rodriguez@example.com', '2020-12-20', '2023-09-20', 'Calle M #765', '5551234567', 4);
INSERT INTO `usuario` VALUES (70, 'Isabel', 'López', 'Fernández', '1983-12-14', 'isabel.lopez@example.com', '2023-03-10', '2023-09-19', 'Av. Central #321', '5559876543', 5);
INSERT INTO `usuario` VALUES (71, 'Andrés', 'Soto', 'Gómez', '1998-01-28', 'andres.soto@example.com', '2023-08-05', '2023-09-18', 'Calle N #876', '5557891234', 3);
INSERT INTO `usuario` VALUES (72, 'Ana', 'González', 'Martínez', '1991-07-07', 'ana.gonzalez@example.com', '2023-06-15', '2023-09-17', 'Av. Poniente #654', '5553217890', 2);
INSERT INTO `usuario` VALUES (73, 'Pablo', 'Gómez', 'Torres', '1988-11-02', 'pablo.gomez@example.com', '2023-04-18', '2023-09-16', 'Calle O #321', '5551234567', 1);
INSERT INTO `usuario` VALUES (74, 'Lorena', 'Hernández', 'Sánchez', '1984-03-17', 'lorena.hernandez@example.com', '2023-01-29', '2023-09-15', 'Av. Q #543', '5559876543', 4);
INSERT INTO `usuario` VALUES (75, 'Javier', 'Torres', 'Ramírez', '1995-10-20', 'javier.torres@example.com', '2023-07-10', '2023-09-14', 'Calle P #432', '5553217890', 3);
INSERT INTO `usuario` VALUES (76, 'Gabriel', 'López', 'Hernández', '1993-06-08', 'gabriel.lopez@example.com', '2022-12-20', '2023-09-28', 'Calle I #789', '5551234567', 2);
INSERT INTO `usuario` VALUES (77, 'Laura', 'Gómez', 'Martínez', '1986-11-15', 'laura.gomez@example.com', '2023-01-10', '2023-09-27', 'Av. Norte #567', '5559876543', 3);
INSERT INTO `usuario` VALUES (78, 'Santiago', 'Fernández', 'Soto', '1992-04-30', 'santiago.fernandez@example.com', '2023-03-18', '2023-09-26', 'Calle J #321', '5557891234', 4);
INSERT INTO `usuario` VALUES (79, 'Valentina', 'Torres', 'Gutiérrez', '1981-08-05', 'valentina.torres@example.com', '2023-04-22', '2023-09-25', 'Av. Este #654', '5553217890', 5);
INSERT INTO `usuario` VALUES (80, 'Carlos', 'García', 'Ortega', '1989-02-18', 'carlos.garcia@example.com', '2023-05-15', '2023-09-24', 'Calle K #432', '5557891234', 1);
INSERT INTO `usuario` VALUES (81, 'Mariana', 'Díaz', 'Ramírez', '1996-12-10', 'mariana.diaz@example.com', '2023-06-30', '2023-09-23', 'Av. Oeste #987', '5551234567', 3);
INSERT INTO `usuario` VALUES (82, 'Andrés', 'Hernández', 'López', '1984-09-22', 'andres.hernandez@example.com', '2023-07-25', '2023-09-22', 'Calle L #543', '5559876543', 2);
INSERT INTO `usuario` VALUES (83, 'Isabella', 'Sánchez', 'Pérez', '1990-03-28', 'isabella.sanchez@example.com', '2023-08-10', '2023-09-21', 'Av. Sur #876', '5557891234', 4);
INSERT INTO `usuario` VALUES (84, 'Fernando', 'Martínez', 'Gómez', '1978-07-12', 'fernando.martinez@example.com', '2023-09-01', '2023-09-20', 'Calle M #123', '5553217890', 5);
INSERT INTO `usuario` VALUES (85, 'Ana', 'Ramírez', 'Fernández', '1993-05-25', 'ana.ramirez@example.com', '2023-09-15', '2023-09-19', 'Av. Centro #789', '5551234567', 1);
INSERT INTO `usuario` VALUES (86, 'Luis', 'Gutiérrez', 'Torres', '1987-12-03', 'luis.gutierrez@example.com', '2023-09-10', '2023-09-18', 'Calle N #567', '5559876543', 3);
INSERT INTO `usuario` VALUES (87, 'Valeria', 'Ortega', 'Díaz', '1998-01-20', 'valeria.ortega@example.com', '2023-09-05', '2023-09-17', 'Av. Principal #432', '5557891234', 2);
INSERT INTO `usuario` VALUES (88, 'Diego', 'López', 'Sánchez', '1980-10-28', 'diego.lopez@example.com', '2023-09-02', '2023-09-16', 'Calle O #321', '5553217890', 4);
INSERT INTO `usuario` VALUES (89, 'Lucía', 'González', 'Hernández', '1995-02-15', 'lucia.gonzalez@example.com', '2023-09-18', '2023-09-15', 'Av. Este #654', '5551234567', 5);
INSERT INTO `usuario` VALUES (90, 'Felipe', 'Ramírez', 'Gómez', '1983-11-08', 'felipe.ramirez@example.com', '2023-09-12', '2023-09-14', 'Calle P #876', '5559876543', 1);
INSERT INTO `usuario` VALUES (91, 'Camila', 'Soto', 'Hernández', '1990-07-14', 'camila.soto@example.com', '2023-09-09', '2023-09-13', 'Av. Oeste #987', '5557891234', 3);
INSERT INTO `usuario` VALUES (92, 'Jorge', 'Hernández', 'Martínez', '1989-09-30', 'jorge.hernandez@example.com', '2023-09-06', '2023-09-12', 'Calle Q #123', '5553217890', 2);
INSERT INTO `usuario` VALUES (93, 'Paola', 'Torres', 'García', '1987-04-22', 'paola.torres@example.com', '2023-09-03', '2023-09-11', 'Av. Centro #567', '5551234567', 4);
INSERT INTO `usuario` VALUES (94, 'Eduardo', 'Gómez', 'López', '1993-03-18', 'eduardo.gomez@example.com', '2023-09-01', '2023-09-10', 'Calle R #432', '5559876543', 5);
INSERT INTO `usuario` VALUES (95, 'Valentina', 'Fernández', 'Sánchez', '1988-08-05', 'valentina.fernandez@example.com', '2023-08-25', '2023-09-09', 'Av. Principal #321', '5557891234', 1);
INSERT INTO `usuario` VALUES (96, 'Daniel', 'Gómez', 'Ramírez', '1994-04-10', 'daniel.gomez@example.com', '2023-08-20', '2023-09-12', 'Calle I #234', '5551234567', 2);
INSERT INTO `usuario` VALUES (97, 'Sara', 'Martínez', 'Hernández', '1986-11-28', 'sara.martinez@example.com', '2023-07-15', '2023-09-11', 'Av. Principal #567', '5559876543', 5);
INSERT INTO `usuario` VALUES (98, 'Pablo', 'Fernández', 'López', '1992-09-03', 'pablo.fernandez@example.com', '2023-03-08', '2023-09-10', 'Calle J #789', '5557891234', 1);
INSERT INTO `usuario` VALUES (99, 'Carmen', 'Sánchez', 'García', '1980-02-15', 'carmen.sanchez@example.com', '2023-01-03', '2023-09-09', 'Av. Norte #432', '5554567890', 3);
INSERT INTO `usuario` VALUES (100, 'Roberto', 'López', 'Gómez', '1997-06-22', 'roberto.lopez@example.com', '2022-12-12', '2023-09-08', 'Calle K #876', '5559876543', 4);
INSERT INTO `usuario` VALUES (101, 'Elena', 'Ramírez', 'Soto', '1985-08-30', 'elena.ramirez@example.com', '2022-11-20', '2023-09-07', 'Av. Central #321', '5551234567', 5);
INSERT INTO `usuario` VALUES (102, 'Miguel', 'Hernández', 'Pérez', '1990-03-25', 'miguel.hernandez@example.com', '2023-04-01', '2023-09-06', 'Calle L #654', '5557891234', 2);
INSERT INTO `usuario` VALUES (103, 'Lorena', 'González', 'Martínez', '1993-07-14', 'lorena.gonzalez@example.com', '2022-10-05', '2023-09-05', 'Av. Este #765', '5553217890', 1);
INSERT INTO `usuario` VALUES (104, 'Andrés', 'Torres', 'Gómez', '1988-05-02', 'andres.torres@example.com', '2021-12-15', '2023-09-04', 'Calle M #876', '5559876543', 3);
INSERT INTO `usuario` VALUES (105, 'Isabel', 'Díaz', 'Ramírez', '1983-01-08', 'isabel.diaz@example.com', '2021-11-30', '2023-09-03', 'Av. Sur #987', '5551234567', 4);
INSERT INTO `usuario` VALUES (106, 'Jorge', 'García', 'López', '1995-12-14', 'jorge.garcia@example.com', '2022-12-10', '2023-09-02', 'Calle N #432', '5557891234', 2);
INSERT INTO `usuario` VALUES (107, 'Cecilia', 'Fernández', 'Sánchez', '1987-03-19', 'cecilia.fernandez@example.com', '2023-02-10', '2023-09-01', 'Av. Oeste #765', '5553217890', 5);
INSERT INTO `usuario` VALUES (108, 'Diego', 'Ramírez', 'Hernández', '1991-09-22', 'diego.ramirez@example.com', '2022-10-15', '2023-08-31', 'Calle O #543', '5559876543', 3);
INSERT INTO `usuario` VALUES (109, 'Marina', 'Soto', 'Martínez', '1989-06-08', 'marina.soto@example.com', '2022-12-20', '2023-08-30', 'Av. Principal #654', '5551234567', 1);
INSERT INTO `usuario` VALUES (110, 'Manuel', 'Gómez', 'Fernández', '1998-04-17', 'manuel.gomez@example.com', '2023-01-08', '2023-08-29', 'Calle P #876', '5557891234', 4);
INSERT INTO `usuario` VALUES (111, 'Patricia', 'López', 'Hernández', '1984-11-29', 'patricia.lopez@example.com', '2023-05-05', '2023-08-28', 'Av. Central #321', '5553217890', 2);
INSERT INTO `usuario` VALUES (112, 'Gonzalo', 'Martínez', 'Torres', '1980-07-15', 'gonzalo.martinez@example.com', '2023-07-20', '2023-08-27', 'Calle Q #654', '5559876543', 1);
INSERT INTO `usuario` VALUES (113, 'Laura', 'Hernández', 'García', '1986-12-03', 'laura.hernandez@example.com', '2023-04-30', '2023-08-26', 'Av. Norte #765', '5551234567', 5);
INSERT INTO `usuario` VALUES (114, 'Javier', 'Gómez', 'Ramírez', '1992-10-10', 'javier.gomez@example.com', '2023-08-10', '2023-08-25', 'Calle R #432', '5557891234', 3);
INSERT INTO `usuario` VALUES (115, 'Sofía', 'Fernández', 'Sánchez', '1987-06-18', 'sofia.fernandez@example.com', '2023-08-05', '2023-08-24', 'Av. Este #987', '5553217890', 2);
INSERT INTO `usuario` VALUES (116, 'Alejandro', 'Martínez', 'Soto', '1993-08-10', 'alejandro.martinez@example.com', '2023-07-15', '2023-09-28', 'Calle I #789', '5551234567', 2);
INSERT INTO `usuario` VALUES (117, 'Silvia', 'López', 'González', '1986-05-25', 'silvia.lopez@example.com', '2023-03-18', '2023-09-27', 'Av. Sur #654', '5559876543', 4);
INSERT INTO `usuario` VALUES (118, 'Raúl', 'Gutiérrez', 'Hernández', '1990-12-01', 'raul.gutierrez@example.com', '2023-02-05', '2023-09-26', 'Calle J #543', '5553217890', 5);
INSERT INTO `usuario` VALUES (119, 'Marina', 'Fernández', 'Díaz', '1982-11-30', 'marina.fernandez@example.com', '2022-09-12', '2023-09-25', 'Av. Norte #876', '5557891234', 1);
INSERT INTO `usuario` VALUES (120, 'Andrés', 'Ramírez', 'Torres', '1997-07-15', 'andres.ramirez@example.com', '2022-08-23', '2023-09-24', 'Calle K #432', '5551234567', 3);
INSERT INTO `usuario` VALUES (121, 'Lorena', 'Hernández', 'Gómez', '1988-04-20', 'lorena.hernandez@example.com', '2023-06-05', '2023-09-23', 'Av. Este #765', '5559876543', 2);
INSERT INTO `usuario` VALUES (122, 'Héctor', 'García', 'Sánchez', '1992-01-05', 'hector.garcia@example.com', '2023-01-30', '2023-09-22', 'Calle L #321', '5553217890', 4);
INSERT INTO `usuario` VALUES (123, 'Valeria', 'Soto', 'Pérez', '1995-09-22', 'valeria.soto@example.com', '2022-11-11', '2023-09-21', 'Av. Oeste #987', '5557891234', 5);
INSERT INTO `usuario` VALUES (124, 'Mariano', 'Pérez', 'Rodríguez', '1984-03-12', 'mariano.perez@example.com', '2023-03-08', '2023-09-20', 'Calle M #234', '5551234567', 1);
INSERT INTO `usuario` VALUES (125, 'Carolina', 'Gómez', 'Martínez', '1991-06-18', 'carolina.gomez@example.com', '2022-12-09', '2023-09-19', 'Av. Central #678', '5559876543', 3);
INSERT INTO `usuario` VALUES (126, 'Antonio', 'López', 'Hernández', '1989-02-08', 'antonio.lopez@example.com', '2023-04-01', '2023-09-18', 'Calle N #567', '5553217890', 2);
INSERT INTO `usuario` VALUES (127, 'Sara', 'Martínez', 'Fernández', '1998-10-30', 'sara.martinez@example.com', '2023-06-20', '2023-09-17', 'Av. Secundaria #321', '5557891234', 4);
INSERT INTO `usuario` VALUES (128, 'Jorge', 'Fernández', 'García', '1983-12-15', 'jorge.fernandez@example.com', '2023-02-28', '2023-09-16', 'Calle O #654', '5551234567', 5);
INSERT INTO `usuario` VALUES (129, 'Camila', 'Gómez', 'Ramírez', '1990-07-05', 'camila.gomez@example.com', '2023-01-12', '2023-09-15', 'Av. Principal #45', '5559876543', 1);
INSERT INTO `usuario` VALUES (130, 'Roberto', 'Hernández', 'López', '1986-08-28', 'roberto.hernandez@example.com', '2022-09-25', '2023-09-14', 'Calle P #789', '5553217890', 3);
INSERT INTO `usuario` VALUES (131, 'Laura', 'Sánchez', 'González', '1994-04-04', 'laura.sanchez@example.com', '2023-05-30', '2023-09-13', 'Av. Central #987', '5557891234', 2);
INSERT INTO `usuario` VALUES (132, 'Rosa', 'Gómez', 'Hernández', '1993-08-14', 'rosa.gomez@example.com', '2023-07-10', '2023-09-12', 'Calle I #345', '5551234567', 3);
INSERT INTO `usuario` VALUES (133, 'Alejandro', 'Fernández', 'González', '1981-06-05', 'alejandro.fernandez@example.com', '2023-01-20', '2023-09-11', 'Av. Principal #98', '5559876543', 2);
INSERT INTO `usuario` VALUES (134, 'Carmen', 'Torres', 'Pérez', '1989-11-22', 'carmen.torres@example.com', '2023-02-28', '2023-09-10', 'Calle J #567', '5557891234', 1);
INSERT INTO `usuario` VALUES (135, 'Diego', 'Sánchez', 'Martínez', '1996-04-30', 'diego.sanchez@example.com', '2022-12-03', '2023-09-09', 'Av. Secundaria #123', '5553217890', 4);
INSERT INTO `usuario` VALUES (136, 'Sara', 'López', 'Ramírez', '1987-10-15', 'sara.lopez@example.com', '2022-08-20', '2023-09-08', 'Calle K #432', '5559876543', 5);
INSERT INTO `usuario` VALUES (137, 'Hugo', 'Ramírez', 'Soto', '1985-03-19', 'hugo.ramirez@example.com', '2022-10-10', '2023-09-07', 'Av. Norte #789', '5551234567', 1);
INSERT INTO `usuario` VALUES (138, 'Lorena', 'Díaz', 'Gómez', '1992-12-10', 'lorena.diaz@example.com', '2023-01-05', '2023-09-06', 'Calle L #654', '5557891234', 3);
INSERT INTO `usuario` VALUES (139, 'Mario', 'González', 'Hernández', '1986-07-25', 'mario.gonzalez@example.com', '2023-03-10', '2023-09-05', 'Av. Sur #234', '5553217890', 2);
INSERT INTO `usuario` VALUES (140, 'Eva', 'Martínez', 'Fernández', '1990-11-03', 'eva.martinez@example.com', '2023-04-22', '2023-09-04', 'Calle M #876', '5559876543', 1);
INSERT INTO `usuario` VALUES (141, 'Andrés', 'Hernández', 'López', '1978-09-18', 'andres.hernandez@example.com', '2023-05-05', '2023-09-03', 'Av. Este #345', '5551234567', 4);
INSERT INTO `usuario` VALUES (142, 'Clara', 'Gómez', 'Ramírez', '1997-02-12', 'clara.gomez@example.com', '2023-06-15', '2023-09-02', 'Calle N #987', '5557891234', 5);
INSERT INTO `usuario` VALUES (143, 'Manuel', 'Ramírez', 'Sánchez', '1982-05-09', 'manuel.ramirez@example.com', '2023-07-29', '2023-09-01', 'Av. Oeste #567', '5553217890', 2);
INSERT INTO `usuario` VALUES (144, 'Luis', 'Torres', 'Gómez', '1984-01-28', 'luis.torres@example.com', '2023-08-10', '2023-08-31', 'Calle O #654', '5559876543', 3);
INSERT INTO `usuario` VALUES (145, 'Paula', 'Martínez', 'Hernández', '1994-09-20', 'paula.martinez@example.com', '2023-09-18', '2023-08-30', 'Av. Central #123', '5551234567', 1);
INSERT INTO `usuario` VALUES (146, 'Adrián', 'López', 'González', '1988-03-05', 'adrian.lopez@example.com', '2023-10-22', '2023-08-29', 'Calle P #432', '5557891234', 5);
INSERT INTO `usuario` VALUES (147, 'Nora', 'González', 'Soto', '1991-07-11', 'nora.gonzalez@example.com', '2023-11-15', '2023-08-28', 'Av. Este #789', '5553217890', 2);
INSERT INTO `usuario` VALUES (148, 'Pablo', 'Ramírez', 'Fernández', '1983-12-09', 'pablo.ramirez@example.com', '2023-12-20', '2023-08-27', 'Calle Q #567', '5559876543', 4);
INSERT INTO `usuario` VALUES (149, 'Luisa', 'Sánchez', 'Martínez', '1990-04-14', 'luisa.sanchez@example.com', '2024-01-03', '2023-08-26', 'Av. Oeste #234', '5551234567', 3);
INSERT INTO `usuario` VALUES (150, 'Roberto', 'Hernández', 'Gómez', '1976-08-27', 'roberto.hernandez@example.com', '2024-02-18', '2023-08-25', 'Calle R #876', '5557891234', 2);
INSERT INTO `usuario` VALUES (151, 'Mónica', 'Gómez', 'Fernández', '1989-06-15', 'monica.gomez@example.com', '2024-03-10', '2023-08-24', 'Av. Principal #345', '5553217890', 1);
INSERT INTO `usuario` VALUES (152, 'Gustavo', 'Vargas', 'López', '1983-03-18', 'gustavo.vargas@example.com', '2022-09-10', '2023-09-12', 'Calle I #765', '5551234567', 2);
INSERT INTO `usuario` VALUES (153, 'Laura', 'González', 'Soto', '1991-05-25', 'laura.gonzalez@example.com', '2023-02-20', '2023-09-11', 'Av. Principal #432', '5559876543', 3);
INSERT INTO `usuario` VALUES (154, 'Carlos', 'Hernández', 'Pérez', '1980-11-08', 'carlos.hernandez@example.com', '2021-12-15', '2023-09-10', 'Calle J #987', '5557891234', 4);
INSERT INTO `usuario` VALUES (155, 'Sara', 'López', 'Martínez', '1995-09-30', 'sara.lopez@example.com', '2020-08-22', '2023-09-09', 'Av. Secundaria #567', '5554567890', 5);
INSERT INTO `usuario` VALUES (156, 'Pedro', 'Ramírez', 'Fernández', '1987-07-08', 'pedro.ramirez@example.com', '2022-05-30', '2023-09-08', 'Calle K #321', '5559876543', 1);
INSERT INTO `usuario` VALUES (157, 'Carmen', 'García', 'Hernández', '1990-12-20', 'carmen.garcia@example.com', '2023-04-10', '2023-09-07', 'Av. Norte #678', '5551234567', 4);
INSERT INTO `usuario` VALUES (158, 'Alejandro', 'Torres', 'Gómez', '1986-03-14', 'alejandro.torres@example.com', '2022-11-18', '2023-09-06', 'Calle L #543', '5557891234', 3);
INSERT INTO `usuario` VALUES (159, 'Isabel', 'Martínez', 'Sánchez', '1993-01-28', 'isabel.martinez@example.com', '2021-07-05', '2023-09-05', 'Av. Sur #876', '5553217890', 2);
INSERT INTO `usuario` VALUES (160, 'Jorge', 'Gómez', 'López', '1989-08-02', 'jorge.gomez@example.com', '2020-04-12', '2023-09-04', 'Calle M #234', '5559876543', 1);
INSERT INTO `usuario` VALUES (161, 'María', 'Díaz', 'Fernández', '1997-02-14', 'maria.diaz@example.com', '2022-12-05', '2023-09-03', 'Av. Oeste #654', '5551234567', 5);
INSERT INTO `usuario` VALUES (162, 'Luis', 'Fernández', 'Soto', '1984-10-07', 'luis.fernandez@example.com', '2023-05-22', '2023-09-02', 'Calle N #789', '5557891234', 2);
INSERT INTO `usuario` VALUES (163, 'Silvia', 'Soto', 'Ramírez', '1992-09-05', 'silvia.soto@example.com', '2023-03-18', '2023-09-01', 'Av. Este #432', '5553217890', 4);
INSERT INTO `usuario` VALUES (164, 'Fernando', 'Martínez', 'García', '1981-04-22', 'fernando.martinez@example.com', '2022-10-15', '2023-08-31', 'Calle O #876', '5559876543', 3);
INSERT INTO `usuario` VALUES (165, 'Natalia', 'González', 'López', '1998-07-17', 'natalia.gonzalez@example.com', '2023-01-20', '2023-08-30', 'Av. Central #765', '5551234567', 1);
INSERT INTO `usuario` VALUES (166, 'Diego', 'Sánchez', 'Hernández', '1986-11-12', 'diego.sanchez@example.com', '2022-08-30', '2023-08-29', 'Calle P #321', '5557891234', 5);
INSERT INTO `usuario` VALUES (167, 'Cecilia', 'López', 'Gómez', '1987-05-10', 'cecilia.lopez@example.com', '2023-03-05', '2023-08-28', 'Av. Sur #543', '5553217890', 4);
INSERT INTO `usuario` VALUES (168, 'Hugo', 'Ramírez', 'Martínez', '1990-02-03', 'hugo.ramirez@example.com', '2023-01-28', '2023-08-27', 'Calle Q #234', '5559876543', 3);
INSERT INTO `usuario` VALUES (169, 'Marta', 'García', 'Soto', '1994-12-15', 'marta.garcia@example.com', '2022-07-10', '2023-08-26', 'Av. Norte #654', '5551234567', 2);
INSERT INTO `usuario` VALUES (170, 'Roberto', 'Fernández', 'Hernández', '1988-06-08', 'roberto.fernandez@example.com', '2023-04-02', '2023-08-25', 'Calle R #789', '5557891234', 1);
INSERT INTO `usuario` VALUES (171, 'Lorena', 'Gómez', 'Ramírez', '1996-08-25', 'lorena.gomez@example.com', '2021-11-15', '2023-08-24', 'Av. Este #876', '5553217890', 4);
INSERT INTO `usuario` VALUES (172, 'Luis', 'González', 'Hernández', '1984-08-14', 'luis.gonzalez@example.com', '2023-05-10', '2023-09-28', 'Calle I #1234', '5551237890', 2);
INSERT INTO `usuario` VALUES (173, 'Carmen', 'Ramírez', 'Fernández', '1993-03-25', 'carmen.ramirez@example.com', '2022-11-20', '2023-09-27', 'Av. Paseo #5678', '5559874567', 4);
INSERT INTO `usuario` VALUES (174, 'Manuel', 'López', 'Martínez', '1989-12-01', 'manuel.lopez@example.com', '2023-04-02', '2023-09-26', 'Calle J #9876', '5553216543', 1);
INSERT INTO `usuario` VALUES (175, 'Patricia', 'Martínez', 'García', '1996-06-08', 'patricia.martinez@example.com', '2021-09-15', '2023-09-25', 'Av. Principal #4321', '5557891230', 3);
INSERT INTO `usuario` VALUES (176, 'Diego', 'Soto', 'Hernández', '1987-07-20', 'diego.soto@example.com', '2020-12-03', '2023-09-24', 'Calle K #8765', '5551237890', 5);
INSERT INTO `usuario` VALUES (177, 'Lorena', 'García', 'Ramírez', '1992-01-10', 'lorena.garcia@example.com', '2023-03-19', '2023-09-23', 'Av. Sur #9876', '5559876541', 2);
INSERT INTO `usuario` VALUES (178, 'Héctor', 'Fernández', 'Gómez', '1978-11-27', 'hector.fernandez@example.com', '2022-08-14', '2023-09-22', 'Calle L #2345', '5553214567', 4);
INSERT INTO `usuario` VALUES (179, 'Alejandra', 'Gómez', 'López', '1983-04-18', 'alejandra.gomez@example.com', '2023-01-30', '2023-09-21', 'Av. Este #5678', '5557891232', 3);
INSERT INTO `usuario` VALUES (180, 'Pablo', 'Hernández', 'Sánchez', '1990-09-05', 'pablo.hernandez@example.com', '2023-05-07', '2023-09-20', 'Calle M #6543', '5551234569', 1);
INSERT INTO `usuario` VALUES (181, 'Raquel', 'López', 'Ramírez', '1995-02-22', 'raquel.lopez@example.com', '2022-10-12', '2023-09-19', 'Av. Oeste #1234', '5559877890', 5);
INSERT INTO `usuario` VALUES (182, 'Fernando', 'Sánchez', 'García', '1982-06-30', 'fernando.sanchez@example.com', '2023-03-25', '2023-09-18', 'Calle N #8765', '5553216540', 2);
INSERT INTO `usuario` VALUES (183, 'Elena', 'Martínez', 'Fernández', '1998-08-03', 'elena.martinez@example.com', '2022-06-18', '2023-09-17', 'Av. Central #4321', '5557891233', 4);
INSERT INTO `usuario` VALUES (184, 'Antonio', 'Ramírez', 'Gómez', '1980-10-11', 'antonio.ramirez@example.com', '2020-11-29', '2023-09-16', 'Calle O #9876', '5551234568', 1);
INSERT INTO `usuario` VALUES (185, 'Isabella', 'Gómez', 'Hernández', '1993-03-08', 'isabella.gomez@example.com', '2023-03-14', '2023-09-15', 'Av. Secundaria #5678', '5559877891', 3);
INSERT INTO `usuario` VALUES (186, 'Joaquín', 'Hernández', 'Soto', '1991-07-14', 'joaquin.hernandez@example.com', '2022-09-22', '2023-09-14', 'Calle P #2345', '5553216542', 2);
INSERT INTO `usuario` VALUES (187, 'Alicia', 'García', 'Martínez', '1985-12-19', 'alicia.garcia@example.com', '2023-05-30', '2023-09-13', 'Av. Norte #6543', '5557891234', 4);
INSERT INTO `usuario` VALUES (188, 'Gabriel', 'Martínez', 'Ramírez', '1994-09-28', 'gabriel.martinez@example.com', '2021-10-08', '2023-09-12', 'Calle Q #8765', '5551234567', 5);
INSERT INTO `usuario` VALUES (189, 'Verónica', 'Gómez', 'López', '1988-04-27', 'veronica.gomez@example.com', '2020-07-15', '2023-09-11', 'Av. Sur #1234', '5559877892', 1);
INSERT INTO `usuario` VALUES (190, 'Andrés', 'López', 'Fernández', '1996-02-15', 'andres.lopez@example.com', '2023-01-05', '2023-09-10', 'Calle R #5678', '5553216541', 3);
INSERT INTO `usuario` VALUES (191, 'Mariana', 'Ramírez', 'Sánchez', '1981-11-10', 'mariana.ramirez@example.com', '2022-12-12', '2023-09-09', 'Av. Este #6543', '5557891235', 2);
INSERT INTO `usuario` VALUES (192, 'Janny Leticia', 'García', 'Mendoza', '2003-06-07', 'janny.garcia703@gmail.com', '2023-08-24', '2023-09-12', 'Calle Elena Garro #60', '9932394800', 1);
INSERT INTO `usuario` VALUES (193, 'Rosa', 'López', 'Gómez', '1993-06-18', 'rosa.lopez@example.com', '2023-01-20', '2023-09-12', 'Calle I #789', '5551234567', 2);
INSERT INTO `usuario` VALUES (194, 'Diego', 'Martínez', 'Ramírez', '1986-04-07', 'diego.martinez@example.com', '2023-02-25', '2023-09-11', 'Av. Noroeste #432', '5559876543', 3);
INSERT INTO `usuario` VALUES (195, 'Lorena', 'Gutiérrez', 'Sánchez', '1990-11-12', 'lorena.gutierrez@example.com', '2023-03-15', '2023-09-10', 'Calle J #654', '5557891234', 1);

-- ----------------------------
-- View structure for vwa_cantidad_autores_genero
-- ----------------------------
DROP VIEW IF EXISTS `vwa_cantidad_autores_genero`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwa_cantidad_autores_genero` AS SELECT (gen_tipo) AS Genero_Autor, COUNT(*) AS Autores FROM libro RIGHT JOIN autor ON lib_fkautor = aut_id INNER JOIN genero ON aut_fkgenero = gen_id WHERE lib_fkautor IS NULL GROUP BY gen_tipo ;

-- ----------------------------
-- View structure for vwa_info_general_libros_español
-- ----------------------------
DROP VIEW IF EXISTS `vwa_info_general_libros_español`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwa_info_general_libros_español` AS select `libro`.`lib_titulo` AS `Titulo`,`libro`.`lib_publicacion` AS `Año_Publicado`,`libro`.`lib_isbn` AS `ISBN`,`libro`.`lib_idioma` AS `Idioma`,`clasificacion`.`cla_tipo` AS `Clasificacion_Edad`,`copia`.`cop_condicion` AS `Condicion`,`adquisicion`.`adq_tipo` AS `Adquisicion`,`editorial`.`edi_nombre` AS `Nombre_editorial`,`autor`.`aut_pseudonimo` AS `Apodo_Autor`,`autor`.`aut_nombre` AS `Nombre_Autor` from ((((`copia` left join (`libro` join `clasificacion` on(`libro`.`lib_fkclasificacion` = `clasificacion`.`cla_id`)) on(`copia`.`cop_fklibro` = `libro`.`lib_id`)) join `adquisicion` on(`copia`.`cop_fkadquisicion` = `adquisicion`.`adq_id`)) left join `editorial` on(`libro`.`lib_fkeditorial` = `editorial`.`edi_id`)) left join `autor` on(`libro`.`lib_fkautor` = `autor`.`aut_id`)) order by `clasificacion`.`cla_tipo`,`copia`.`cop_condicion`;

-- ----------------------------
-- View structure for vwa_libros_por_editoriales
-- ----------------------------
DROP VIEW IF EXISTS `vwa_libros_por_editoriales`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwa_libros_por_editoriales` AS SELECT (edi_nombre) AS Editorial, (pai_nombre) AS Pais_Editorial,(aut_nombre) AS Autor,(lib_titulo) AS Título, (gen_tipo) AS Genero FROM editorial INNER JOIN pais ON edi_fkpais = pai_id  RIGHT JOIN libro ON lib_fkeditorial = edi_id LEFT JOIN autor ON lib_fkautor = aut_id INNER JOIN genero ON lib_fkgenero = gen_id ;

-- ----------------------------
-- View structure for vwh_copia_malas
-- ----------------------------
DROP VIEW IF EXISTS `vwh_copia_malas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwh_copia_malas` AS SELECT (cop_id) as ID,(lib_titulo) AS Titulo_Libro, (cop_estatus) AS Estatus, (cop_condicion) AS Condicion, (cop_serie) AS Serie_Unica
FROM copia INNER JOIN libro ON cop_fklibro = lib_id WHERE cop_Condicion = 'MALA' ;

-- ----------------------------
-- View structure for vwh_fecha_prestado
-- ----------------------------
DROP VIEW IF EXISTS `vwh_fecha_prestado`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwh_fecha_prestado` AS SELECT * FROM copia WHERE cop_estatus = 'PRESTADO' AND  cop_fecha > '2000-01-01' AND cop_fecha < '2023-01-01' ;

-- ----------------------------
-- View structure for vwh_libros_español_comunes
-- ----------------------------
DROP VIEW IF EXISTS `vwh_libros_español_comunes`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwh_libros_español_comunes` AS select `libro`.`lib_titulo` AS `Titulo`,`libro`.`lib_publicacion` AS `Publicacion`,`libro`.`lib_idioma` AS `Idioma`,`genero`.`gen_tipo` AS `Genero` from (`libro` join `genero` on(`libro`.`lib_fkgenero` = `genero`.`gen_id`)) where `genero`.`gen_tipo` in ('Terror','Misterio','Poesía','No Ficción') and `libro`.`lib_idioma` = 'español';

-- ----------------------------
-- View structure for vwh_libros_grandes_publicados
-- ----------------------------
DROP VIEW IF EXISTS `vwh_libros_grandes_publicados`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwh_libros_grandes_publicados` AS SELECT * FROM libro WHERE lib_publicacion > '2000-01-01' AND lib_pagina > 500 ;

-- ----------------------------
-- View structure for vwv_autores_con_libro
-- ----------------------------
DROP VIEW IF EXISTS `vwv_autores_con_libro`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwv_autores_con_libro` AS SELECT (aut_nombre) AS Autor, (aut_pseudonimo) AS Apodo, (pai_nombre) AS Pais_Autor, (gen_tipo) AS Genero_Autor FROM libro RIGHT JOIN autor ON lib_fkautor = aut_id INNER JOIN pais ON aut_fkpais = pai_id INNER JOIN genero ON aut_fkgenero = gen_id WHERE pai_nombre IN ('españa','mexico','peru','colombia') ;

-- ----------------------------
-- View structure for vwv_datos_copia
-- ----------------------------
DROP VIEW IF EXISTS `vwv_datos_copia`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwv_datos_copia` AS SELECT (cop_fklibro) AS ID_Libro, (cop_estatus) AS Estado, (cop_condicion) AS Condicion, (cop_serie) AS Serie FROM copia ;

-- ----------------------------
-- View structure for vwv_info_adicional_copia
-- ----------------------------
DROP VIEW IF EXISTS `vwv_info_adicional_copia`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwv_info_adicional_copia` AS SELECT (cop_serie) AS Serie, (lib_titulo) AS Titulo, (cop_fecha) AS Ultimo_Prestamo, (adq_tipo) AS Adquisicion FROM copia LEFT JOIN adquisicion ON cop_fkadquisicion = adq_id INNER JOIN libro ON cop_fklibro = lib_id ORDER BY Titulo ;

-- ----------------------------
-- View structure for vwv_info_copias_disponibles
-- ----------------------------
DROP VIEW IF EXISTS `vwv_info_copias_disponibles`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vwv_info_copias_disponibles` AS SELECT (cop_fklibro) AS ID_Libro, (cop_estatus) AS Estado, (cop_condicion) AS Condicion, (cop_serie) AS Serie FROM copia WHERE cop_estatus = 'DISPONIBLE' ;

-- ----------------------------
-- View structure for vw_cantidad_prestamos_usuario
-- ----------------------------
DROP VIEW IF EXISTS `vw_cantidad_prestamos_usuario`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_cantidad_prestamos_usuario` AS SELECT (lib_titulo) AS Titulo, (aut_nombre) AS Autor, COUNT(*) AS prestados FROM prestamo LEFT JOIN usuario ON pre_fkusuario = usu_id INNER JOIN copia ON pre_fkserie = cop_serie LEFT JOIN libro ON cop_fklibro = lib_id INNER JOIN autor ON lib_fkautor = aut_id GROUP BY lib_titulo ;

-- ----------------------------
-- View structure for vw_detalles_totales_libro
-- ----------------------------
DROP VIEW IF EXISTS `vw_detalles_totales_libro`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_detalles_totales_libro` AS SELECT (lib_titulo) AS Titulo, (lib_publicacion) AS Año_Publicado, (lib_isbn) AS ISBN, (lib_idioma) AS Idioma, (cla_tipo) AS Clasificacion_Edad, (cop_condicion) AS Condicion, (adq_tipo) AS Adquisicion, (edi_nombre) AS Nombre_editorial, (aut_pseudonimo) AS Apodo_Autor, (aut_nombre) AS Nombre_Autor FROM libro 
INNER JOIN clasificacion ON lib_fkclasificacion = cla_id 
RIGHT JOIN copia ON cop_fklibro = lib_id 
INNER JOIN adquisicion ON cop_fkadquisicion = adq_id
LEFT JOIN editorial ON lib_fkeditorial = edi_id
LEFT JOIN autor ON lib_fkautor = aut_id
ORDER BY Clasificacion_Edad, Condicion ;

-- ----------------------------
-- View structure for vw_editorial_pais_libros
-- ----------------------------
DROP VIEW IF EXISTS `vw_editorial_pais_libros`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_editorial_pais_libros` AS SELECT (edi_nombre) AS Editorial, (pai_nombre) AS Pais_Editorial,(aut_nombre) AS Autor,(lib_titulo) AS Título, (gen_tipo) AS Genero FROM editorial INNER JOIN pais ON edi_fkpais = pai_id  RIGHT JOIN libro ON lib_fkeditorial = edi_id LEFT JOIN autor ON lib_fkautor = aut_id INNER JOIN genero ON lib_fkgenero = gen_id WHERE pai_nombre = 'Cuba' ;

-- ----------------------------
-- View structure for vw_libros_español_datos
-- ----------------------------
DROP VIEW IF EXISTS `vw_libros_español_datos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_libros_español_datos` AS select `libro`.`lib_titulo` AS `Titulo`,`libro`.`lib_publicacion` AS `Publicacion`,`libro`.`lib_isbn` AS `ISBN`,`libro`.`lib_idioma` AS `Idioma` from `libro` where `libro`.`lib_idioma` = 'español';

-- ----------------------------
-- View structure for vw_libros_prestamos_usuario
-- ----------------------------
DROP VIEW IF EXISTS `vw_libros_prestamos_usuario`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_libros_prestamos_usuario` AS SELECT usu_nombre,usu_celular, lib_titulo, aut_nombre, pre_fecha, pre_prevista, pre_real, pre_devolucion FROM prestamo LEFT JOIN usuario ON pre_fkusuario = usu_id INNER JOIN copia ON pre_fkserie = cop_serie LEFT JOIN libro ON cop_fklibro = lib_id INNER JOIN autor ON lib_fkautor = aut_id ;

-- ----------------------------
-- View structure for vw_publicaciones_maximas_editorial
-- ----------------------------
DROP VIEW IF EXISTS `vw_publicaciones_maximas_editorial`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_publicaciones_maximas_editorial` AS SELECT (edi_nombre) AS Editorial, (pai_nombre) AS Pais_Editorial,(aut_nombre) AS Autor,(lib_titulo) AS Título, (gen_tipo) AS Genero, edi_cantidad AS Cantidad_libros FROM editorial INNER JOIN pais ON edi_fkpais = pai_id RIGHT JOIN libro ON lib_fkeditorial = edi_id LEFT JOIN autor ON lib_fkautor = aut_id INNER JOIN genero ON lib_fkgenero = gen_id WHERE edi_cantidad = (SELECT MAX(edi_cantidad) FROM editorial) ;

-- ----------------------------
-- View structure for vw_puntuacion_libros_usuario
-- ----------------------------
DROP VIEW IF EXISTS `vw_puntuacion_libros_usuario`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_puntuacion_libros_usuario` AS SELECT usu_nombre, usu_registro, cre_tipo,com_puntuacion, com_comentario,  lib_titulo FROM USUARIO INNER JOIN credencial ON usu_fkcredencial = cre_id RIGHT JOIN comentario ON com_fkusuario = usu_id LEFT JOIN libro ON com_fklibro = lib_id ;

-- ----------------------------
-- Procedure structure for ActualizarEstatusCopia
-- ----------------------------
DROP PROCEDURE IF EXISTS `ActualizarEstatusCopia`;
delimiter ;;
CREATE PROCEDURE `ActualizarEstatusCopia`(INOUT copia_id INT,
    OUT condicion_actual ENUM('BUENA', 'MALA'))
BEGIN
    
    DECLARE temp_estatus ENUM('PRESTADO', 'DEVUELTO', 'RETRASADO');

    
    SELECT cop_estatus, cop_condicion
    INTO temp_estatus, condicion_actual
    FROM copia
    WHERE cop_id = copia_id;

    
    UPDATE copia
    SET cop_estatus = 'DEVUELTO'
    WHERE cop_id = copia_id;

    
    UPDATE copia
    SET cop_condicion = 'BUENA'
    WHERE cop_id = copia_id;

    
    SET copia_id = temp_estatus;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ConsultaLibros
-- ----------------------------
DROP PROCEDURE IF EXISTS `ConsultaLibros`;
delimiter ;;
CREATE PROCEDURE `ConsultaLibros`()
BEGIN
	SELECT lib_id,lib_titulo FROM libro WHERE id IN (1,2,3,4,5);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ConsultaLibrosDos
-- ----------------------------
DROP PROCEDURE IF EXISTS `ConsultaLibrosDos`;
delimiter ;;
CREATE PROCEDURE `ConsultaLibrosDos`()
BEGIN
	SELECT lib_id,lib_titulo FROM libro WHERE lib_id IN (1,2,3,4,5);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for nuevo_prestamo
-- ----------------------------
DROP PROCEDURE IF EXISTS `nuevo_prestamo`;
delimiter ;;
CREATE PROCEDURE `nuevo_prestamo`(IN usuario INT(3), IN serie VARCHAR(6))
BEGIN
    INSERT INTO prestamo (pre_fkusuario, pre_fkserie, pre_fecha, pre_prevista, pre_real, pre_estatus, pre_devolucion)
    VALUES (usuario, serie, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY), NOW(), 'PRESTADO', 'PRESTADO');
    SELECT * FROM prestamo;
    UPDATE copia
    SET cop_estatus = 'PRESTADO'
    WHERE cop_serie = serie;  
    SELECT * FROM copia;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
