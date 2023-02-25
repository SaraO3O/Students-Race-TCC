-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 05-Out-2018 às 01:44
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students_race_db`
--
CREATE DATABASE IF NOT EXISTS `students_race_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_cs;
USE `students_race_db`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE IF NOT EXISTS `administradores` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) COLLATE latin1_general_cs NOT NULL,
  `nome_user` varchar(30) COLLATE latin1_general_cs DEFAULT NULL,
  `email` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `senha` varchar(128) COLLATE latin1_general_cs NOT NULL,
  `dataHora` datetime DEFAULT NULL,
  `CODadminRes` int(11) DEFAULT NULL,
  `datahoraEnd` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`ID`, `nome`, `nome_user`, `email`, `senha`, `dataHora`, `CODadminRes`, `datahoraEnd`, `status`) VALUES
(1, 'Diego', NULL, 'diego@mail.com', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', NULL, NULL, NULL, NULL),
(2, 'Camila', NULL, 'cami@mail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', NULL, NULL, NULL, NULL),
(3, 'Sara', 'sarao', 'sara@mail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', '2018-10-16 00:00:00', 1, '2018-10-19 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `amizades`
--

DROP TABLE IF EXISTS `amizades`;
CREATE TABLE IF NOT EXISTS `amizades` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODuser` int(11) NOT NULL,
  `CODuser2` int(11) NOT NULL,
  `StatusAmizade` int(11) NOT NULL,
  `datahoraStart` datetime NOT NULL,
  `dataHoraEnd` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dicionario`
--

DROP TABLE IF EXISTS `dicionario`;
CREATE TABLE IF NOT EXISTS `dicionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `palavra` varchar(60) COLLATE latin1_german1_ci NOT NULL,
  `traducao` varchar(70) COLLATE latin1_german1_ci DEFAULT NULL,
  `classe` varchar(30) COLLATE latin1_german1_ci NOT NULL,
  `definicao` varchar(500) COLLATE latin1_german1_ci NOT NULL,
  `exemplo` varchar(500) COLLATE latin1_german1_ci NOT NULL,
  `audio` varchar(60) COLLATE latin1_german1_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Extraindo dados da tabela `dicionario`
--

INSERT INTO `dicionario` (`id`, `palavra`, `traducao`, `classe`, `definicao`, `exemplo`, `audio`) VALUES
(1, 'automatic', 'Automático', 'adjective', 'working by itself with little or no direct human control.', 'This can be set as an automatic process, or you can do it manually.', 'automatic.mp3'),
(2, 'accurate', 'Preciso', 'adjective', 'correct in all details; exact.', 'The program was supposed to give a fully accurate output', 'accurate.mp3'),
(3, 'dsr', 'Diego\'s Students Race', 'noun', 'abbreviation for \"Diego\'s Students Race\", known for the best competition ever made in the studying field.', 'Antonio Felicio always wanted to make part of the DSR family.', 'dsr.mp3'),
(4, 'amr', 'A Morte Realística ', 'noun', 'abbreviation for \"Antonio\'s MiMiMi Race\", due to his jealousy about DSR, he created his own competition just for gloating.', 'AMR will never be like DSR.', NULL),
(5, 'website', 'Website', 'noun', 'A set of related web pages located under a single domain name.', 'everyone should share the website www.studentsrace.com ', 'website.mp3'),
(6, 'house', 'Casa', 'noun', 'A building for human habitation, especially one that consists of a ground floor and one or more upper storeys.', 'engineers and architects are developing new technologies for house building', 'house.mp3'),
(7, 'convoy', 'Comboio ', 'noun', 'A group of ships or vehicles travelling together, typically one accompanied by armed troops, warships, or other vehicles for protection.', 'The movie \"Convoy\" is about the biggest Convoy ever made in the USA lead by the trucker Rubber Duck.', 'convoy.mp3'),
(8, 'big', 'Grande', 'adjective (bigger, biggest)', 'Of considerable size or extent.', 'We have a big problem now.', 'big.mp3'),
(9, 'small', 'Pequeno', 'adjective(smaller, smallest)', 'Of a size that is less than normal or usual.', 'The car was small and clean.', 'small.mp3'),
(10, 'dictionary', 'Dicionário', 'noun', 'A book or eletronic resource that lists the words of a language and gives their meaning.', 'A lot of new words should be introduced into the dictionaries nowadays.', 'dictionary.mp3'),
(30, 'misunderstand', 'Mal Entendido', 'verb', 'Fail to interpret or understand (something) correctly.', 'he had misunderstood the police officer\'s hand signals', 'misunderstand.mp3'),
(31, 'my', 'Meu', 'possessive determiner', 'Belonging to or associated with the speaker.', 'my name is John, my friend', 'my.mp3'),
(33, 'little', 'Pequeno', 'adjective', 'Small in size, amount, or degree (often used to convey an appealing diminutiveness or express an affectionate or condescending attitude)', 'The plants will grow into little bushes', 'little.mp3'),
(34, 'pony', 'Pônei ', 'noun', 'A horse of a small breed, especially one below 15 hands (or 14 hands 2 inches).', 'He had been playing the ponies on the side', 'pony.mp3'),
(35, 'apple', 'Maçã', 'noun', 'The round fruit of a tree of the rose family, which typically has thin green or red skin and crisp flesh.', 'The apple never falls far from the tree', 'apple.mp3'),
(36, 'sorry', 'Desculpa', 'adjective', 'Feeling regret or penitence.', 'I\'m sorry if I was a bit brusque', 'sorry.mp3'),
(37, 'happy', 'Feliz', 'adjective', 'Feeling or showing pleasure or contentment.', 'I\'m happy with his performance', 'happy.mp3'),
(38, 'terrific', 'Ótimo', 'adjective', 'Of great size, amount, or intensity. \r\n[informal] Extremely good; excellent.', 'There was a terrific bang.\r\nYou look terrific.', 'terrific.mp3'),
(39, 'there', 'Lá', 'adverb', 'In, at, or to that place or position.\r\n', '[with infinitive] ‘at the end of the day we are there to make money’\r\n[after preposition] ‘I\'m not going in there—it\'s freezing’', 'there.mp3'),
(40, 'this', 'Esse', 'pronoun', 'Used to identify a specific person or thing close at hand or being indicated or experienced.\r\nReferring to the nearer of two things close to the speaker (the other, if specified, being identified by ‘that’)', 'Is this your bag?\r\nThis is different from that.', 'this.mp3'),
(41, 'that', 'Aquele(a)', 'pronoun', 'Used to identify a specific person or thing observed or heard by the speaker.', 'Hello, is that Ben?', 'that.mp3'),
(42, 'winter', 'Inverno', 'noun', 'The coldest season of the year, in the northern hemisphere from December to February and in the southern hemisphere from June to August.', 'The tree has a good crop of berries in winter', 'winter.mp3'),
(43, 'summer', 'Verão', 'noun', 'The warmest season of the year, in the northern hemisphere from June to August and in the southern hemisphere from December to February.', 'In the summer we go to the beach.', 'summer.mp3'),
(44, 'work', 'Trabalho', 'noun', 'The place where one is employed. Activity involving mental or physical effort done in order to achieve a purpose or result.', 'I work every day.', 'work.mp3'),
(45, 'tomorrow', 'Amanhã ', 'adverb', 'On the day after today.', 'Tomorrow I will go to a picnic.', 'tomorrow.mp3'),
(46, 'picnic', 'Piquenique', 'noun', 'An occasion when a packed meal is eaten outdoors, especially during an outing to the countryside.', 'I want to do a picnic!', 'picnic.mp3'),
(47, 'want', 'Quer', 'verb', 'Have a desire to possess or do (something); wish for.', 'I want a dog.', 'want.mp3'),
(48, 'gonna', 'Indo', 'contraction', '[Informal] Going to.', 'What are we gonna do now?', 'gonna.mp3'),
(49, 'wanna', 'Quero', 'contraction', '[Informal] Want to; want a.', 'I wanna pie.', 'wanna.mp3'),
(50, 'pie', 'Torta', 'noun', 'A baked dish of fruit, or meat and vegetables, typically with a top and base of pastry.', 'Your pie is so delicious! ', 'pie.mp3'),
(51, 'cake', 'Bolo', 'noun', 'An item of soft sweet food made from a mixture of flour, fat, eggs, sugar, and other ingredients, baked and sometimes iced or decorated.', 'A big chocolate cake.', 'cake.mp3'),
(52, 'dream', 'Sonho', 'noun', 'A series of thoughts, images, and sensations occurring in a person\'s mind during sleep.', 'I have a wonderful dream!', 'dream.mp3'),
(53, 'cute', 'Fofo', 'adjective', 'Attractive in a pretty or endearing way.', 'She is so cute!', 'cute.mp3'),
(54, 'tall', 'Alto', 'adjective', 'Of great or more than average height, especially (with reference to an object) relative to width.', 'A tall glass of iced coffee.', 'tall.mp3'),
(55, 'coffee', 'Café', 'noun', 'A hot drink made from the roasted and ground seeds (coffee beans) of a tropical shrub.', 'Can I get some coffee?', 'coffee.mp3'),
(56, 'pen', 'Caneta', 'noun', 'An instrument for writing or drawing with ink, typically consisting of a metal nib or ball, or a nylon tip, fitted into a metal or plastic holder.', 'The ink of my pen is blue.', 'pen.mp3'),
(57, 'pencil', 'Lápis', 'noun', 'An instrument for writing or drawing, consisting of a thin stick of graphite or a similar substance enclosed in a long thin piece of wood or fixed in a cylindrical case.', 'My pencil is red.', 'pencil.mp3'),
(58, 'eat', 'Comer', 'verb', 'Put (food) into the mouth and chew and swallow it.', 'I eat pizza today.', 'eat.mp3'),
(59, 'sleep', 'Dormir', 'noun', 'A condition of body and mind which typically recurs for several hours every night, in which the nervous system is inactive, the eyes closed, the postural muscles relaxed, and consciousness practically suspended.', 'I will sleep on my bed.', 'sleep.mp3'),
(60, 'autumn', 'Outono', 'noun', 'The season after summer and before winter, in the northern hemisphere from September to November and in the southern hemisphere from March to May.', 'The leaves fall in the autumn.', 'autumn.mp3'),
(61, 'book', 'Livro', 'noun', 'A written or printed work consisting of pages glued or sewn together along one side and bound in covers.', 'I have a book with poems.', 'book.mp3'),
(62, 'somebody', 'Alguém', 'pronoun', 'Some person; someone.', 'Somebody hit me.', 'somebody.mp3'),
(63, 'price', 'Preço', 'noun', 'The amount of money expected, required, or given in payment for something.', 'This price is expensive.', 'price.mp3'),
(64, 'expensive', 'Caro', 'adjective', 'Costing a lot of money.', 'This car is expensive.', 'expensive.mp3'),
(65, 'cheap', 'Barato', 'adjective', 'Low in price, especially in relation to similar items or services.', 'A cheap restaurant.', 'cheap.mp3'),
(66, 'money', 'Dinheiro', 'noun', 'A current medium of exchange in the form of coins and banknotes; coins and banknotes collectively.', 'I have a lot of money.', 'money.mp3'),
(67, 'strawberry', 'Morango', 'noun', 'A sweet soft red fruit with a seed-studded surface.', 'My favorite fruit is strawberry.', 'strawberry.mp3'),
(68, 'car', 'Carro', 'noun', 'A road vehicle, typically with four wheels, powered by an internal combustion engine and able to carry a small number of people.', 'My car crash.', 'car.mp3'),
(69, 'steal', 'Roubar', 'verb', 'Take (another person\'s property) without permission or legal right and without intending to return it.', 'Somebody steal my cellphone.', 'steal.mp3'),
(70, 'up', 'Em cima', 'adverb', 'Towards a higher place or position.', 'The boy jumped up.', 'up.mp3'),
(72, 'yesterday', 'Ontem', 'Adverb', 'On the day before today.', 'Everything seems to have been built yesterday.', 'yesterday.mp3'),
(86, 'back', 'Atrás', 'adverb', 'In the opposite direction from the one that one is facing or travelling towards.', 'She walked away without looking back.', 'back.mp3'),
(85, 'shout', 'Gritar', 'Verb', 'Say something very loudly.', '‘Come back!’ she shouted', 'shout.mp3'),
(71, 'greeting', 'Saudações', 'Noun', 'A polite word or sign of welcome or recognition.', 'Mandy shouted a greeting.', 'greeting.mp3'),
(81, 'land', 'Terra', 'Noun', 'The part of the earth\'s surface that is not covered by water.', 'The reptiles lay their eggs on land.', 'land.mp3'),
(87, 'mind', 'Mente', 'noun', 'The element of a person that enables them to be aware of the world and their experiences, to think, and to feel; the faculty of consciousness and thought.', 'A lot of thoughts ran through my mind.', 'mind.mp3'),
(88, 'heart', 'Coração', 'Noun', 'A hollow muscular organ that pumps the blood through the circulatory system by rhythmic contraction and dilation. In vertebrates there may be up to four chambers (as in humans), with two atria and two ventricles.', 'He has no heart.', 'heart.mp3'),
(89, 'hold', 'Segurar', 'verb', 'Grasp, carry, or support ', 'She was holding a pink dress.', 'hold.mp3'),
(90, 'vacation', 'Férias', 'noun', 'A fixed holiday or a period without class, work or something of this kind.', 'He took a vacation in the south of France.', 'vacation.mp3'),
(91, 'kind', 'Tipo', 'noun', 'A group of people or things having similar characteristics.', 'I like all kinds of music.', 'kind.mp3'),
(92, 'carrot', 'Cenoura', 'noun', 'A tapering orange-coloured root eaten as a vegetable.', 'I want to eat rice with grated carrot.', 'carrot.mp3'),
(93, 'Grated', 'Ralado', 'Adjective', 'Reduced to small shreds by being rubbed on a grater.', 'Grated cheese.', 'grated.mp3'),
(94, 'cheese', 'Queijo', 'noun', 'A food made from the pressed curds of milk, firm and elastic or soft and semi-liquid in texture.', 'I want a sandwich with cheese.', 'cheese.mp3'),
(95, 'soft', 'Macio', 'adjective', 'Easy to mould, cut, compress, or fold; not hard or firm to the touch.', 'This pillow is so soft!', 'soft.mp3'),
(96, 'pillow', 'Travesseiro', 'Noun', 'A rectangular cloth bag stuffed with feathers or other soft materials, used to support the head when lying or sleeping.', 'His head was on the soft pillow. ', 'pillow.mp3'),
(97, 'popcorn', 'Pipoca', 'Noun', 'Maize of a variety with hard kernels that swell up and burst open when heated.', 'Pop yourself some popcorn.', 'popcorn.mp3'),
(98, 'pop', 'Estourar', 'verb', 'Make or cause to make a light explosive sound.', 'Corks popped and glasses tinkled.', 'pop.mp3'),
(99, 'Dress', 'Vestido', 'noun', 'A one-piece garment for a woman or girl that covers the body and extends down over the legs.', 'A white cotton dress.', 'dress.mp3'),
(100, 'suit', 'Terno', 'noun', 'A set of outer clothes made of the same fabric and designed to be worn together, typically consisting of a jacket and trousers or a jacket and skirt.', 'I will keep the suit.', 'suit.mp3'),
(101, 'flip-flop', 'Chinelo', 'noun', 'A light sandal, typically of plastic or rubber, with a thong between the big and second toe.', 'Her flip-flop is pink.', 'flip-flop.mp3'),
(102, 'lettuce', 'Alface', 'noun', 'A cultivated plant of the daisy family, with edible leaves that are eaten in salads.', 'In the grandma\'s garden there are lettuces.', 'lettuce.mp3'),
(103, 'potato', 'Batata', 'noun', 'A starchy plant tuber which is one of the most important food crops, cooked and eaten as a vegetable.', 'I love mashed potatos.', 'potato.mp3'),
(104, 'tomato', 'Tomate', 'noun', 'A glossy red, or occasionally yellow, pulpy edible fruit that is eaten as a vegetable or in salad.', 'I used to eat tomato with salt.', 'tomato.mp3'),
(105, 'skirt', 'saia', 'noun', 'A woman\'s outer garment fastened around the waist and hanging down around the legs.', 'I don\'t like short skirt.', 'skirt.mp3'),
(106, 'shirt', 'Blusa', 'noun', 'A garment for the upper body made of cotton or a similar fabric, with a collar and sleeves, and with buttons down the front.', 'Tonight he\'s smartly dressed in shirt and tie.', 'shirt.mp3'),
(107, 'tonight', 'Esta noite', 'adverb', 'On the present or approaching evening or night.', 'Tonight I will to the restaurant. ', 'tonight.mp3'),
(108, 'anything', 'Qualquer coisa', 'pronoun', 'Used to refer to a thing, no matter what.', 'Nobody was saying anything.', 'anything.mp3'),
(109, 'like', 'Assim como', 'preposition', 'Having the same characteristics or qualities as; similar to.', 'She used to have a car like mine.', 'like.mp3'),
(110, 'look', 'veja', 'verb', 'Direct one\'s gaze in a specified direction.', 'People were looking at him.', 'look.mp3'),
(111, 'gaze', 'Olhar', 'verb', 'Look steadily and intently, especially in admiration, surprise, or thought.', 'He could only gaze at her in astonishment.', 'gaze.mp3'),
(112, 'power', 'Poder', 'noun', 'The ability or capacity to do something or act in a particular way.', 'His powers of concentration.', 'power.mp3'),
(113, 'table', 'Mesa', 'noun', 'A piece of furniture with a flat top and one or more legs, providing a level surface for eating, writing, or working at.', 'She put the plate on the table.', 'table.mp3'),
(114, 'eraser', 'Borracha', 'noun', 'A piece of soft rubber or plastic used to rub out something written.', 'I lose my eraser', 'eraser.mp3'),
(115, 'know', 'Conhecer', 'verb', 'Be aware of through observation, inquiry, or information.', 'I know what I\'m doing', 'know.mp3'),
(116, 'aware', 'Consciente', 'adjective', 'Having knowledge or perception of a situation or fact.', 'Most people are aware of the dangers of sunbathing.', 'aware.mp3'),
(117, 'woman', 'Mulher', 'noun', 'An adult human female.', 'That woman is a doctor. ', 'woman.mp3'),
(118, 'man', 'homem', 'noun', 'An adult human male.', 'I hear a voice of a man.', 'man.mp3'),
(119, 'arm', 'Braço', 'noun', 'Each of the two upper limbs of the human body from the shoulder to the hand.', 'He held the baby in his arms.', 'arm.mp3'),
(120, 'teeth', 'Dente', 'noun', 'Each of a set of hard, bony enamel-coated structures in the jaws of most vertebrates, used for biting and chewing.', 'Brush your teeth every day.', 'teeth.mp3'),
(121, 'engineer', 'Engenheiro', 'noun', 'A person who designs, builds, or maintains engines, machines, or structures.', 'The engineer is very smart.', 'engineer.mp3'),
(122, 'plumber', 'Encanador', 'noun', 'A person who fits and repairs the pipes, fittings, and other apparatus of water supply, sanitation, or heating systems.', 'Mario Bros looks like a plumber. ', 'plumber.mp3'),
(123, 'dot', 'ponto (.)', 'noun', 'A small round mark or spot.', 'In my email there\'s a dot in the middle of my name.', 'dot.mp3'),
(124, 'cup', 'Copo', 'noun', 'A small bowl-shaped container for drinking from, typically having a handle.', 'Take that cup for me. ', 'cup.mp3'),
(125, 'butter', 'Manteiga', 'noun', 'A pale yellow edible fatty substance made by churning cream and used as a spread or in cooking.', 'The breakfast today is bread with butter.', 'butter.mp3'),
(126, 'cookie', 'Biscoito', 'noun', 'A sweet biscuit.', 'I will buy cookies. ', 'cookie.mp3'),
(127, 'Phrases', 'Frase', 'noun', 'A small group of words, sometimes only one word, standing together as a conceptual unit, typically forming a component of a clause.', 'Not every phrase has a verb. ', 'phrases.mp3'),
(128, 'week', 'Semana', 'noun', 'A period of seven days.', 'This week will be very busy. ', 'week.mp3'),
(129, 'weed', 'Erva Daninha', 'noun', 'A wild plant growing where it is not wanted and in competition with cultivated plants.', 'Keep the seedlings clear of weeds.', 'weed.mp3'),
(130, 'wall', 'Parede', 'noun', 'A continuous vertical brick or stone structure that encloses or divides an area of land.', 'A garden wall.', 'wall.mp3'),
(131, 'firework', 'Fogos de Artificio ', 'noun', 'A device containing gunpowder and other combustible chemicals which causes spectacular effects and explosions when ignited, used for display or in celebrations.', 'This night we will watch fireworks.', 'firework.mp3'),
(132, 'blue', 'azul', 'adjective', 'Of the color blue. (Also is used to refer to a mood: sad, melancholic or depressed)', 'The Earth is blue.', 'blue.mp3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `licoes`
--

DROP TABLE IF EXISTS `licoes`;
CREATE TABLE IF NOT EXISTS `licoes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Licao` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `imagem` varchar(200) COLLATE latin1_general_cs DEFAULT NULL,
  `CODunidade` int(11) NOT NULL,
  `dataHora` datetime DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Extraindo dados da tabela `licoes`
--

INSERT INTO `licoes` (`ID`, `Licao`, `imagem`, `CODunidade`, `dataHora`, `admin`) VALUES
(1, 'Greetings', '0136eb1fe8c0e52cd9dcbfbc728953c8.jpg', 1, '2018-09-30 09:40:00', 1),
(2, 'Introductions', '9abc5a82af3c2e0f8951b5d56845a1d9.jpg', 1, '2018-09-30 09:41:00', 1),
(3, 'Verb To Be - Part 1', '74daf958a5d9a80257e0d918076f790d.jpg', 1, '2018-09-30 09:42:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
CREATE TABLE IF NOT EXISTS `mensagens` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODusuario` int(11) NOT NULL,
  `mensagem` varchar(250) COLLATE latin1_general_cs NOT NULL,
  `datahora` datetime NOT NULL,
  `resposta` varchar(250) COLLATE latin1_general_cs DEFAULT NULL,
  `datahoraresposta` datetime DEFAULT NULL,
  `visto` int(11) DEFAULT NULL,
  `acao` varchar(10) COLLATE latin1_general_cs DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Estrutura da tabela `online`
--

DROP TABLE IF EXISTS `online`;
CREATE TABLE IF NOT EXISTS `online` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `data_enter` datetime NOT NULL,
  `data_leave` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Extraindo dados da tabela `online`
--

INSERT INTO `online` (`ID`, `data_enter`, `data_leave`) VALUES
(1, '2018-10-04 22:21:06', '2018-10-05 00:30:04'),
(2, '2018-10-05 00:32:56', '2018-10-05 00:36:06'),
(3, '2018-10-05 00:46:36', '2018-10-05 00:56:16'),
(4, '2018-10-05 01:04:33', '2018-10-05 01:05:13'),
(5, '2018-10-05 01:06:58', '2018-10-05 01:07:58'),
(6, '2018-10-05 01:19:32', '2018-10-05 01:20:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `solicitante` int(11) NOT NULL,
  `solicitado` int(11) NOT NULL,
  `aceito` int(11) NOT NULL,
  `datahora` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
CREATE TABLE IF NOT EXISTS `perguntas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODlicao` int(11) NOT NULL,
  `pergunta` varchar(80) COLLATE latin1_general_cs NOT NULL,
  `alternativa1` varchar(60) COLLATE latin1_general_cs NOT NULL,
  `alternativa2` varchar(60) COLLATE latin1_general_cs NOT NULL,
  `alternativa3` varchar(60) COLLATE latin1_general_cs NOT NULL,
  `resposta` varchar(60) COLLATE latin1_general_cs NOT NULL,
  `admin` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Extraindo dados da tabela `perguntas`
--

INSERT INTO `perguntas` (`ID`, `CODlicao`, `pergunta`, `alternativa1`, `alternativa2`, `alternativa3`, `resposta`, `admin`) VALUES
(1, 1, 'Welcome to Students Race!', 'OlÃ¡, Students Race!', 'Prazer, Students Race!', 'Tchau, Students Race!', 'Bem-vindo a Students Race!', 1),
(2, 1, 'Hello, nice to meet you!', 'Oi, bom dia!', 'OlÃ¡, prazer em vÃª-lo!', 'OlÃ¡, tudo bem?', 'OlÃ¡, prazer em conhecÃª-lo!', 1),
(3, 1, 'How are you today?', 'Boa tarde!', 'Como vocÃª estava ontem?', 'Prazer em conhecÃª-lo!', 'Como vocÃª estÃ¡ hoje?', 1),
(4, 1, 'Bom dia.', 'Good afternoon.', 'Good evening.', 'Good night.', 'Good morning.', 1),
(5, 1, 'See you soon.', 'Adeus.', 'AtÃ© a prÃ³xima semana.', 'Boa noite.', 'VocÃª vocÃª em breve.', 1),
(6, 1, 'See you tomorrow.', 'AtÃ© breve!', 'Muito obrigado!', 'Foi um prazer!', 'AtÃ© amanhÃ£!', 1),
(7, 1, 'Have a nice day!', 'Tenha uma boa noite!', 'Tenha um dia!', 'AtÃ© amanhÃ£.', 'Tenha um bom dia!', 1),
(8, 1, 'I am great! Thank you!', 'Eu estava Ã³timo!', 'Muito obrigado.', 'AtÃ© mais!', 'Eu estou Ã³timo! Obrigado!', 1),
(9, 1, 'Goodbye!', 'AtÃ© mais!', 'Boa viagem!', 'Bom dia!', 'Adeus!', 1),
(10, 1, 'Bye!', 'Beijos!', 'Boa tarde!', 'AtÃ© amanhÃ£.', 'Tchau!', 1),
(11, 2, 'Hi, I am Greg!', 'Oi, eu estou Greg!', 'Bom dia! Eu sou Greg!', 'Tchau, Greg!', 'Oi, eu sou Greg!', 1),
(12, 2, 'My name is John, and yours?', 'Meus nomes sÃ£o John, e os seus?', 'Me chamo John.', 'OlÃ¡, sou John.', 'Meu nome Ã© John, e o seu?', 1),
(13, 2, 'What is your name?', 'Que horas sÃ£o?', 'Quais seus nomes?', 'OlÃ¡, qual Ã© a sua idade?', 'Qual Ã© o seu nome?', 1),
(14, 2, 'How old are you?', 'Quantas horas faltam?', 'Como vocÃª estÃ¡ hoje?', 'Vejo vocÃª amanhÃ£?', 'Quantos anos vocÃª tem?', 1),
(15, 2, 'Eu tenho 25 anos de idade.', 'I have 25 years of age.', 'I have 25 years old.', 'I am 25 old.', 'I am 25 years old.', 1),
(16, 2, 'Mary, this is John.', 'Mary, aqui era o John.', 'John, esta Ã© Mary.', 'Mary, este nÃ£o Ã© o John.', 'Mary, este Ã© John.', 1),
(17, 2, 'Where are you from?', 'Como vocÃª estÃ¡?', 'Onde vocÃª estÃ¡?', 'Aonde vocÃª vai?', 'De onde vocÃª Ã©?', 1),
(18, 2, 'I am from Brazil, I am Brazilian.', 'Eu sou do Brasil, vim de BrasÃ­lia.', 'Eu sou brasileiro.', 'Sou do Brasil.', 'Eu sou do Brasil, sou brasileiro.', 1),
(19, 2, 'Greg, that is Mary.', 'Greg, estÃ¡ Ã© Mary.', 'Mary, aquele Ã© o Greg.', 'Greg, aquela nÃ£o Ã© Mary.', 'Greg, aquela Ã© a Mary.', 1),
(20, 2, 'Prazer em conhecÃª-la, Mary!', 'Good morning, Mary!', 'How old are you, Mary?', 'See you, Mary!', 'Nice to meet you, Mary!', 1),
(21, 3, 'I am Janet.', 'Eu estou Janet.', 'Eu e Janet.', 'Eu estou com a Janet.', 'Eu sou Janet.', 1),
(22, 3, 'I am at school.', 'Eu sou a escola.', 'Eu fui na escola.', 'Eu faltei na escola.', 'Eu estou na escola.', 1),
(23, 3, 'Sorry, I am not Davis, I am Greg.', 'Desculpe, eu nÃ£o vi o Davis nem o Greg.', 'Desculpe, eu sou o Greg.', 'Desculpe, eu sou o Davis.', 'Desculpe, eu nÃ£o sou Davis, eu sou Greg.', 1),
(24, 3, 'She is my friend.', 'Ela estÃ¡ minha amiga.', 'Eu e a minha amiga.', 'Ela foi minha amiga.', 'Ela Ã© minha amiga.', 1),
(25, 3, 'I ___ Sara. What is your name?', 'is.', 'she.', 'are.', 'am.', 1),
(26, 3, 'Hello! ____ Camila!', 'I is.', 'I and.', 'I.', 'I am.', 1),
(27, 3, 'He is my partner.', 'Ele estÃ¡ como meu parceiro.', 'Eu e meu parceiro.', 'Ele foi meu parceiro.', 'Ele Ã© meu parceiro.', 1),
(28, 3, 'Students Race is the best platform!', 'Students Race estÃ¡ melhor plataforma!', 'Students Race nÃ£o Ã© plataforma!', 'Students Race e a melhor plataforma!', 'Students Race Ã© a melhor plataforma!', 1),
(29, 3, 'I am not at home.', 'Eu estou em casa.', 'Eu estava em casa.', 'Eu nÃ£o me casei.', 'Eu nÃ£o estou em casa.', 1),
(30, 3, 'Ela estÃ¡ na escola.', 'She is not at school.', 'She is at home.', 'She is the school.', 'She is at school.', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sugestoes`
--

DROP TABLE IF EXISTS `sugestoes`;
CREATE TABLE IF NOT EXISTS `sugestoes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODusuario` int(11) NOT NULL,
  `palavrasugerida` varchar(60) COLLATE latin1_general_cs NOT NULL,
  `datahora` datetime NOT NULL,
  `visto` int(11) DEFAULT NULL,
  `acao` varchar(10) COLLATE latin1_general_cs DEFAULT NULL,
  `admin` varchar(40) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidades`
--

DROP TABLE IF EXISTS `unidades`;
CREATE TABLE IF NOT EXISTS `unidades` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Unidade` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `imagem` varchar(200) COLLATE latin1_general_cs DEFAULT NULL,
  `dataHora` datetime DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Extraindo dados da tabela `unidades`
--

INSERT INTO `unidades` (`ID`, `Unidade`, `imagem`, `dataHora`, `admin`) VALUES
(1, 'Basic ', '6155eaab849671a158bbfa520fe56a07.png', '2018-09-30 09:39:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) COLLATE latin1_general_cs DEFAULT NULL,
  `sobrenome` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `nomeuser` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `email` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `senha` varchar(128) COLLATE latin1_general_cs NOT NULL,
  `estado` varchar(2) COLLATE latin1_general_cs DEFAULT NULL,
  `datanasc` date DEFAULT NULL,
  `foto` varchar(200) COLLATE latin1_general_cs DEFAULT NULL,
  `pontos` bigint(20) DEFAULT NULL,
  `datahora` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `nome`, `sobrenome`, `nomeuser`, `email`, `senha`, `estado`, `datanasc`, `foto`, `pontos`, `datahora`) VALUES
(1, 'Diego ', NULL, 'diego', 'diego@mail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'SP', NULL, NULL, 0, '2018-04-22 14:08:21'),
(3, 'Sara', NULL, 'saraf', 'sara@mail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'SP', NULL, NULL, 0, '2018-06-01 13:31:22'),
(4, 'Camila', NULL, 'cami', 'cami@mail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'SP', NULL, NULL, 0, '2018-06-01 13:32:58'),
(16, 'Diego', 'Oliveira', 'diegoo', 'oliveira@gmail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'MT', '2018-08-29', 'd39849358ec029f1fb8e7bb42670f541.jpg', 0, '2018-08-06 19:00:57'),
(14, 'Convoy', 'Oliveira', 'convoy', 'convoy@mail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'MG', '2018-08-18', '7be53c97a0be77fdbe38f575a8486344jpeg', 17, '2018-08-04 18:09:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
