-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 03:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_prodaja_namirnica`
--

-- --------------------------------------------------------

--
-- Table structure for table `box_paket`
--

CREATE TABLE `box_paket` (
  `id_porudzbine` int(11) NOT NULL,
  `naziv` varchar(40) NOT NULL,
  `cena` decimal(10,0) NOT NULL,
  `pdv` decimal(10,0) NOT NULL,
  `id_recepta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `box_paket`
--

INSERT INTO `box_paket` (`id_porudzbine`, `naziv`, `cena`, `pdv`, `id_recepta`) VALUES
(1, 'Tofu omlet', '2150', '2300', 1),
(2, 'Pohovana piletina', '1600', '1712', 6),
(3, 'Sushi', '3500', '3990', 2),
(4, 'Sarma', '2000', '2400', 3),
(5, 'Voćna salata', '700', '840', 7),
(6, 'Tofu supa', '740', '888', 8),
(7, 'Kuvani pasulj', '500', '600', 9),
(8, 'Špagete karbonara', '570', '684', 10),
(9, 'Burek sa sirom', '530', '636', 11),
(10, 'Gulaš', '430', '516', 12),
(11, 'Čokoladni sufle', '1400', '1680', 5),
(12, 'Američke palačinke', '1860', '2232', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cine`
--

CREATE TABLE `cine` (
  `id_porudzbine` int(11) NOT NULL,
  `sifra_namirnice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cine`
--

INSERT INTO `cine` (`id_porudzbine`, `sifra_namirnice`) VALUES
(1, 2222),
(3, 2222),
(4, 3333);

-- --------------------------------------------------------

--
-- Table structure for table `firma`
--

CREATE TABLE `firma` (
  `pib` int(11) NOT NULL,
  `naziv` varchar(30) NOT NULL,
  `ulica_i_broj` varchar(50) DEFAULT NULL,
  `ptt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `firma`
--

INSERT INTO `firma` (`pib`, `naziv`, `ulica_i_broj`, `ptt`) VALUES
(814777373, 'Blue Apron', 'Svetosavska 34', 11000);

-- --------------------------------------------------------

--
-- Table structure for table `internacionalna_jela`
--

CREATE TABLE `internacionalna_jela` (
  `id_porudzbine` int(11) NOT NULL,
  `naziv_drzave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `internacionalna_jela`
--

INSERT INTO `internacionalna_jela` (`id_porudzbine`, `naziv_drzave`) VALUES
(3, 'Japan'),
(8, 'Italija'),
(10, 'Mađarska'),
(12, 'Amerika');

-- --------------------------------------------------------

--
-- Table structure for table `isporucuje`
--

CREATE TABLE `isporucuje` (
  `jmbg` char(13) NOT NULL,
  `pib` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `isporucuje`
--

INSERT INTO `isporucuje` (`jmbg`, `pib`) VALUES
('0202999789522', 1122334455);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `jmbg` char(13) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `ulica_i_broj` varchar(50) NOT NULL,
  `ptt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`jmbg`, `ime`, `prezime`, `ulica_i_broj`, `ptt`) VALUES
('0101001645293', 'Stevan', 'Stefanović', 'Kralja Petra 80', 11000),
('0202999789522', 'Jovana', 'Jovanović', 'Carice Milice 9', 23000),
('0928987897752', 'Marko', 'Marković', 'Ive Lole Ribara 3', 23000),
('1112990993671', 'Konstantin', 'Kostić', 'Laze Lazarevića 11', 23000),
('1306998000000', 'Petar', 'Petrović', 'Cara Dušana 43', 21000);

-- --------------------------------------------------------

--
-- Table structure for table `kurirska_sluzba`
--

CREATE TABLE `kurirska_sluzba` (
  `pib` int(11) NOT NULL,
  `naziv_firme` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kurirska_sluzba`
--

INSERT INTO `kurirska_sluzba` (`pib`, `naziv_firme`) VALUES
(1122334455, 'AKS express'),
(1234567891, 'City express'),
(2143165482, 'Post express');

-- --------------------------------------------------------

--
-- Table structure for table `mesto`
--

CREATE TABLE `mesto` (
  `ptt` int(11) NOT NULL,
  `naziv_mesta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mesto`
--

INSERT INTO `mesto` (`ptt`, `naziv_mesta`) VALUES
(11000, 'Beograd'),
(21000, 'Novi Sad'),
(23000, 'Zrenjanin'),
(23300, 'Kikinda');

-- --------------------------------------------------------

--
-- Table structure for table `namirnice`
--

CREATE TABLE `namirnice` (
  `sifra_namirnice` int(11) NOT NULL,
  `naziv_namirnice` varchar(20) NOT NULL,
  `gramaza` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `namirnice`
--

INSERT INTO `namirnice` (`sifra_namirnice`, `naziv_namirnice`, `gramaza`) VALUES
(1111, 'Tofu', 100),
(1235, 'Tortilje', 150),
(1382, 'Kore za pitu', 165),
(2222, 'Pirinač', 190),
(2348, 'Jaje', 50),
(3333, 'Kupus', 500),
(3451, 'Kukuruz', 90),
(7866, 'Grčki jogurt', 360),
(7946, 'Čokolada', 125),
(7954, 'Jagode', 100),
(8423, 'Kivi', 85),
(9327, 'Banane', 90);

-- --------------------------------------------------------

--
-- Table structure for table `online_prodavnica`
--

CREATE TABLE `online_prodavnica` (
  `id_online_prodavnice` int(11) NOT NULL,
  `inbox` varchar(30) NOT NULL,
  `naziv` varchar(15) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `online_prodavnica`
--

INSERT INTO `online_prodavnica` (`id_online_prodavnice`, `inbox`, `naziv`, `url`) VALUES
(1234, 'press@blueapron.com', 'Blue Apron', 'www.blueapron.com');

-- --------------------------------------------------------

--
-- Table structure for table `porucuje`
--

CREATE TABLE `porucuje` (
  `id_porudzbine` int(11) NOT NULL,
  `id_online_prodavnice` int(11) NOT NULL,
  `jmbg` char(13) NOT NULL,
  `datum_porudzbine` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `porucuje`
--

INSERT INTO `porucuje` (`id_porudzbine`, `id_online_prodavnice`, `jmbg`, `datum_porudzbine`) VALUES
(3, 1234, '0202999789522', '2023-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `predaje`
--

CREATE TABLE `predaje` (
  `id_online_prodavnice` int(13) NOT NULL,
  `id_porudzbine` int(11) NOT NULL,
  `pib` int(11) NOT NULL,
  `datum_predaje` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `predaje`
--

INSERT INTO `predaje` (`id_online_prodavnice`, `id_porudzbine`, `pib`, `datum_predaje`) VALUES
(1234, 3, 1122334455, '2023-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `pripada`
--

CREATE TABLE `pripada` (
  `id_online_prodavnice` int(11) NOT NULL,
  `pib` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pripada`
--

INSERT INTO `pripada` (`id_online_prodavnice`, `pib`) VALUES
(1234, 814777373);

-- --------------------------------------------------------

--
-- Table structure for table `pristupa`
--

CREATE TABLE `pristupa` (
  `id_online_prodavnice` int(11) NOT NULL,
  `jmbg` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pristupa`
--

INSERT INTO `pristupa` (`id_online_prodavnice`, `jmbg`) VALUES
(1234, '0101001645293'),
(1234, '0202999789522'),
(1234, '0928987897752'),
(1234, '1112990993671'),
(1234, '1306998000000');

-- --------------------------------------------------------

--
-- Table structure for table `prodaje`
--

CREATE TABLE `prodaje` (
  `id_online_prodavnice` int(11) NOT NULL,
  `id_porudzbine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `prodaje`
--

INSERT INTO `prodaje` (`id_online_prodavnice`, `id_porudzbine`) VALUES
(1234, 1),
(1234, 2),
(1234, 3),
(1234, 4);

-- --------------------------------------------------------

--
-- Table structure for table `recept`
--

CREATE TABLE `recept` (
  `id_recepta` int(11) NOT NULL,
  `uputstvo` text DEFAULT NULL,
  `broj_sastojaka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `recept`
--

INSERT INTO `recept` (`id_recepta`, `uputstvo`, `broj_sastojaka`) VALUES
(1, 'SASTOJCI:\r\n\r\n200g tofu sira (najbolje natural, ne dimljeni)\r\n1 paprika iseckana na kolutove\r\n1 veća šargarepa iseckana na kolutuće\r\n3 struka mladog crnog luka\r\n3 veća šampinjona\r\n1/4 kafene kašičice himalajske soli\r\n1/4 kašičice crne vulkanske soli (daje karakterističan “jajast” ukus i miris. Ukoliko nemate, povećajte himalajsku so)\r\n1/4 kašičice kurkume\r\n1/4 kašičice karija\r\n“na vrh” kašičice mlevene slatke paprike\r\n2 češnja belog luka, potisnuta\r\nprstohvat čilija – opciono\r\nprstohvat bibera\r\n\r\nPRIPREMA:\r\n\r\n1. Tofu sir ocedite pa viljuškom izgnječite “na krupno”.\r\n2. Povrće iseckajte i na malo maslinovog ulja i jačoj vatri kratko propržite dok ne omekša ali ipak zadrži blagu krckavost.\r\n3. Dodajte izdrobljeni tofu sir, promešajte i propržite još par minuta.\r\n4. U medjuvremenu, sve začine i potisnuti beli luk sjedinite, dodajte par kašika vode tek toliko da dobijete sos (ne previše redak).\r\n5. Prelijte sos preko povrća i tofua, promešajte i pržite još par minuta.\r\n6. Poslužite posuto svežim peršunom i grilovanom tortiljom (ovom kajganom i svežim povrćem možete i napuniti tortilju, ako i mi nekad).\r\n7. Ili jedite iz tiganja, ukoliko ste nestrpljivi.', 13),
(2, 'SASTOJCI:\r\n\r\n200 gr pirinča za sushi\r\n2 lista nori alge\r\nwasabi pasta\r\ndimljeni losos\r\n3 kašike pirinčanog sirćeta\r\n2 1/2 kašike smeđeg šećera\r\n2 k.k. morske soli\r\nshoyu sosa\r\n\r\nPRIPREMA:\r\n\r\n1. Pirinač staviti u veliku činiju i dobro isprati, sve dok voda ne bude bistra.\r\n2. Sipati pirinač u cediljku i ostaviti sat vremena da se dobro ocedi.\r\n3. Pirinač zatim držati u hladnoj vodi 10-15 minuta. Nakon toka odliti vodu.\r\n4. Prebaciti pirinač u lonac sa debljim dnom i dodati 230 ml vode. Poklopiti i kuvati na jakoj vatri 5 minuta. Smanjiti vatru i kuvati poklopljeno jos desetak minuta, sve dok voda nestane. Skloniti sa šporeta i ostaviti poklopljeno da odstoji jos 10-15 minuta.\r\n5. Pirinčano sirće, šećer i so mešati sve dok se šećer ne otopi. Mešavinu dodati u pirinač i lagano promešati.\r\n6. U međuvremenu, dok proces sa pirinčem traje, skuvati šargarepu i iseći na prutiće. Na isti način iseći i losos.\r\n7. Kada se pirinač ohladi na temperaturu tela možete krenuti sa pravljenjem sushia.\r\n8. Položite nori algu na bambusovu podlogu, poređajte pirinač tako što ćete ostaviti praznu traku širine 1 cm po dužoj ivici alge (ivica na kojoj će se rolanje završiti). Po sredini pirinča namažite wasabi pastu, ali bez preterivanja jer je prilično ljuta (nešto kao naš ren). Zatim poređajte štapiće šargarepe i lososa.\r\n9. Sada možete krenuti sa rolanjem i to prema slobodnoj ivici bez pirinča, ujedno skupljajući i pritiščćući sadržaj tj. pirinač sa filom. Slobodnu ivicu alge malo nakvasiti vodom kako biste je prilepili za rolnicu i dobro izrolajte zajednos sa bambusovom podlogom kako bi se formirao lep valjak. Uh, baš je naporno …\r\n10. Dobijene valjke secite na šest do osam delova. Servirajte sa shoyu sosom i wasabi pastom.\r\n\r\n', 8),
(3, 'SASTOJCI:\n\nFil: 1 kg mesanog grubljeg mlevenog mesa\n100 gr slanine narezane na kockice (5x5 mm)\n100 gr crvenog luka (naribatajte ga)\n1 rezanj belog luka (protisnite kroz presu)\n1 jaje\n80 gr rize\n1 zlicica vegete\n1 zlicica crvene paprike\n1/2 do 1 zlicica soli\n1/2 zlicice papra/bibera\n1 zlica ulja\n1 zlica seckanog persuna\nmalo suhe kobasice naseckane\nUmak: 1 zlica ostrog brasna\n1 limenka pasiranog paradajza\nsupa od 3 kocke\n1 zlica masnoce\nDodaci: nesto suhog mesa\nsuva kobasica\nsuva rebra\n3 lovorova lista\n1.5 kg glavica kiselog kupusa\n\nPRIPREMA:\n\n1. Glavicu kupusa oslobodite u sredini od tvrdog dela, tako ce te lakse odvojiti listove.\n2. Kupus dobro isperite.\n3. Koristite samo cele listove, potrgane zajedno sa ostatkom kupusa narezite na trakice sirine 3-5 mm. za dodatak umaku za sarmu.\n4. Na otopljenoj masnoci dodajte slaninu, seckanu suhu kobasicu i naribani luk.\n5. Poprzite tek toliko da se slanina zarumeni i crveni luk zamirisi.\n6. Dodajte rizu i propirajte nekih 3 minuta.\n7. U drugu posudu dodajte mleveno meso, jaje, propasirani beli luk, slatku papriku, sol, vegetu, papar, ulje, seckani persun.\n8. Na kraju u nadev za sarmu dodajte przeni luk, slaninu i kobasicu.\n9. Izradite smesu da bude glatka, ali da ne bude pre cvrsta jer onda na kraju sarma bude tvrda.\n10. Nadevanje sarme: List kupusa okrenite sa debljim delom prema gore.\n11. Uzmite nadjeva za sarmu toliko da stvori na listu hrpicu koja od leve i desne strane ima 2 cm prostora, te stavite meso na gornju trecinu lista.\n12. Levi i desni rub kiselog kupusa preklopite prema sredini.\n13. Uhvatite gornji kraj sa obe ruke i zarolajte prema dole, uvek sa prstima sa strane gurajte list kupusa prema unutra ( da se ne otvori ).\n14. Kolicina mesa za sarmu je taman kada pri rolanju zadnju polovicu rolate sami kiseli kupus.\n15. Da je sarma dobro zarolana vidjet ce te po tome da je list neostecen i sarma sa svih strana zatvorena.\n16. Sarmu slozite sa rubom na dole na pogodni tanjir.\n17. Priprema umaka za sarmu: Pripremite laganu zaprsku tako sto ce te u posudu u kojoj ste dinstali luk, slaninu i kobasicu dodati 1 zlicu svinjske masnoce ili ulja.\n18. Dok se masnoca jos nije do kraja otopila dodajte ostro brasno i dobro promesajte.\n19. Brasno mora samo malo da zapeni.\n20. Dodajte pasirani paradajz i samo malo promesajte.\n21. Maknite sa vatre i dodajte juhu od 2 do 3 kocke ( istopili kocke za supu u 0.5 litar vruce vode ) te sve dobro izradite pjenacom da ne bi ostala koja grudica.\n22. U umak za sarmu stavite prvo polovicu kiselog kupusa nasecenog na trakice, na to poslazite sarme sa rubom na dole. Preko toga dodajte suvo meso, sarma, prekrijte ostatkom kiselog kupusa i na vrh listove lovora.\n23. Dolijte vode po potrebi, tek toliko da sarma ogrozne,do visine sarme (nikako preko).\n24. Na jakoj vatri pustite da zakipi, smanjite na 1/4 i sarmu kuvajte poklopljenu 90 minuta, povremeneo protresite, ne mesajte, posle 90 minuta, jos smanjite vatru i neka se krcka 1.5 sat, da ispari sto vuse tecnosti, tada ce sarma biti jako socna ..', 20),
(4, 'SASTOJCI:\n\n2 čaše (od 2 dl) mleka\n1/2 čaše jogurta\n1/2 čaše ulja\n1/2 čaše šećera\n2,5 čaše brašna\n1 kesica praška za pecivo\n1 prstohvat soli\n2 veća jajeta\n\nPRIPREMA:\n\n1. Posebno umutiti belanke sa šećerom u čvrst sneg, zatim dodati žumanke, onda sve tečne sastojke, pa mutiti jos malo mikserom, onda dodati brašno, prašak za pecivo, so, i mutiti još malo mikserom na najsporijoj brzini, da smesa nema grudvice...\n\n2. Tiganj mora da bude vreo, čim stavite prvu palačinku smanjite temperaturu na polovinu. Palačinku okrenuti kad počnu da izlaze balončići.\n\n3. Za početnike je bolje da peku po jednu palačinku, a ko je malo spretniji, može i po tri od jednom.', 8),
(5, 'SASTOJCI:\n240 g maslaca ili margarina\n300 g šećera\n6 kom jaja\n2 kesice vanilin šećera\n120 g brašna\n240 g crne čokolade (može obična za kuvanje, ali ja volim da koristim sa 70% kakaoa)\n\nNa početku, stavite čokoladu da se topi. Ja je topim u mikrotalasnoj na oko 350W snage. Možete i na šporetu, samo pažljivo i na laganoj vatri.\n\nMikserom penasto umutiti maslac sa šećerom i vanilin šećerom, pa dodati jaja, jedno po jedno. Dobro umutiti  i lagano dodavati brašno. Na kraju dodajte otopljenu čokoladu.\n\nSufle se sprema u posebnim posudama, mogu se kupiti ali su jako skupe. Naravno, nemam posude za sufle, te sam trebao da nađem alternativu. Odluka je pala da probam sa šoljom za kafu, i moram priznati da je idealna zamena. Štaviše, pošto je uža i dublja od posude, kolač izgleda lepše i „vitkije“ (nije reklama za kafu).\n\nNamastiti i pobrašniti kalupe/šolje i napuniti ih smesom do oko 3/4. Staviti kalupe u zagrejanu rernu. Ova količina je dovoljna da se napuni 6 ovakvih šolja. 6 kolača je izuzetno puno (retko ko može da pojede više od jednog kolača) pa slobodno skalirajte količinu (skoro sve vrednosti su deljive sa 6) ukoliko vam ne treba toliki broj.\n', 6),
(6, 'SASTOJCI:\n1/2 pilećeg filea\n1 jaje\n5-6 supenih kašika brašna\n5-6 supenih kašika prezle\n1/2 kašičice slatke paprike\nulje ili mast\nsuvi začini po želji\n\nPRIPREMA:\n\n1. Pileći file iseći na šnicle debljine oko pola santimetra ili na tračice. Po potrebi izlupati šnicle kako bi se stanjle, mada ne bi trebalo mnogo kako ne bi kasnije meso bilo previše suvo. Takođe, po potrebi meso možete prethodno držati u marinadi. Ja piletinu premažem senfom i ostavim oko sat vremena u frižider.\n2. Izlupati celo jaje u koje je dodata slatka paprika, prstohvat soli i začini po želji. U drugi sud sipati brašno, a u treći prezlu.\n3. Meso spuštati u jaje,brašno i u prezlu. U tiganju ugrejati ulje ili mast i spuštati meso. Pržiti oko 5-6 minuta sa svake strane. Stavljati na kuhinjski ubrus da se upije višak masnoće.', 7),
(7, NULL, 3),
(8, NULL, 9),
(9, NULL, 7),
(10, NULL, 5),
(11, NULL, 8),
(12, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tradicionalna_jela`
--

CREATE TABLE `tradicionalna_jela` (
  `id_porudzbine` int(11) NOT NULL,
  `naziv_regije` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tradicionalna_jela`
--

INSERT INTO `tradicionalna_jela` (`id_porudzbine`, `naziv_regije`) VALUES
(2, 'Vojvodina'),
(4, 'Banat'),
(9, 'Nišavski okrug');

-- --------------------------------------------------------

--
-- Table structure for table `veganska_jela`
--

CREATE TABLE `veganska_jela` (
  `id_porudzbine` int(11) NOT NULL,
  `naziv_veganskog_jela` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `veganska_jela`
--

INSERT INTO `veganska_jela` (`id_porudzbine`, `naziv_veganskog_jela`) VALUES
(1, 'Tofu omlet'),
(5, 'Voćna salata'),
(6, 'Tofu supa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `box_paket`
--
ALTER TABLE `box_paket`
  ADD PRIMARY KEY (`id_porudzbine`),
  ADD KEY `fk_box_paket_id_recepta` (`id_recepta`);

--
-- Indexes for table `cine`
--
ALTER TABLE `cine`
  ADD PRIMARY KEY (`id_porudzbine`,`sifra_namirnice`),
  ADD KEY `fk_cine_sifra_namirnice` (`sifra_namirnice`);

--
-- Indexes for table `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`pib`),
  ADD KEY `fk_firma_ptt` (`ptt`);

--
-- Indexes for table `internacionalna_jela`
--
ALTER TABLE `internacionalna_jela`
  ADD PRIMARY KEY (`id_porudzbine`);

--
-- Indexes for table `isporucuje`
--
ALTER TABLE `isporucuje`
  ADD PRIMARY KEY (`jmbg`,`pib`),
  ADD KEY `fk_isporucuje_pib` (`pib`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`jmbg`),
  ADD KEY `fk_korisnik_ptt` (`ptt`);

--
-- Indexes for table `kurirska_sluzba`
--
ALTER TABLE `kurirska_sluzba`
  ADD PRIMARY KEY (`pib`);

--
-- Indexes for table `mesto`
--
ALTER TABLE `mesto`
  ADD PRIMARY KEY (`ptt`);

--
-- Indexes for table `namirnice`
--
ALTER TABLE `namirnice`
  ADD PRIMARY KEY (`sifra_namirnice`);

--
-- Indexes for table `online_prodavnica`
--
ALTER TABLE `online_prodavnica`
  ADD PRIMARY KEY (`id_online_prodavnice`);

--
-- Indexes for table `porucuje`
--
ALTER TABLE `porucuje`
  ADD PRIMARY KEY (`id_porudzbine`,`id_online_prodavnice`,`jmbg`),
  ADD KEY `fk_porucuje_id_online_prodavnice` (`id_online_prodavnice`),
  ADD KEY `fk_porucuje_jmbg` (`jmbg`);

--
-- Indexes for table `predaje`
--
ALTER TABLE `predaje`
  ADD PRIMARY KEY (`id_online_prodavnice`,`pib`,`id_porudzbine`),
  ADD KEY `fk_predaje_id_porudzbine` (`id_porudzbine`),
  ADD KEY `fk_predaje_pib` (`pib`);

--
-- Indexes for table `pripada`
--
ALTER TABLE `pripada`
  ADD PRIMARY KEY (`pib`,`id_online_prodavnice`),
  ADD KEY `fk_pripada_id_online_prodavnice` (`id_online_prodavnice`);

--
-- Indexes for table `pristupa`
--
ALTER TABLE `pristupa`
  ADD PRIMARY KEY (`jmbg`,`id_online_prodavnice`),
  ADD KEY `fk_pristupa_id_online_prodavnice` (`id_online_prodavnice`);

--
-- Indexes for table `prodaje`
--
ALTER TABLE `prodaje`
  ADD PRIMARY KEY (`id_porudzbine`,`id_online_prodavnice`),
  ADD KEY `fk_prodaje_id_online_prodavnice` (`id_online_prodavnice`);

--
-- Indexes for table `recept`
--
ALTER TABLE `recept`
  ADD PRIMARY KEY (`id_recepta`);

--
-- Indexes for table `tradicionalna_jela`
--
ALTER TABLE `tradicionalna_jela`
  ADD PRIMARY KEY (`id_porudzbine`);

--
-- Indexes for table `veganska_jela`
--
ALTER TABLE `veganska_jela`
  ADD PRIMARY KEY (`id_porudzbine`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `box_paket`
--
ALTER TABLE `box_paket`
  MODIFY `id_porudzbine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `online_prodavnica`
--
ALTER TABLE `online_prodavnica`
  MODIFY `id_online_prodavnice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1235;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `box_paket`
--
ALTER TABLE `box_paket`
  ADD CONSTRAINT `fk_box_paket_id_recepta` FOREIGN KEY (`id_recepta`) REFERENCES `recept` (`id_recepta`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `cine`
--
ALTER TABLE `cine`
  ADD CONSTRAINT `fk_cine_id_porudzbine` FOREIGN KEY (`id_porudzbine`) REFERENCES `box_paket` (`id_porudzbine`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cine_sifra_namirnice` FOREIGN KEY (`sifra_namirnice`) REFERENCES `namirnice` (`sifra_namirnice`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `firma`
--
ALTER TABLE `firma`
  ADD CONSTRAINT `fk_firma_ptt` FOREIGN KEY (`ptt`) REFERENCES `mesto` (`ptt`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `internacionalna_jela`
--
ALTER TABLE `internacionalna_jela`
  ADD CONSTRAINT `fk_internacionalna_jela_id_porudzbine` FOREIGN KEY (`id_porudzbine`) REFERENCES `box_paket` (`id_porudzbine`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `isporucuje`
--
ALTER TABLE `isporucuje`
  ADD CONSTRAINT `fk_isporucuje_jmbg` FOREIGN KEY (`jmbg`) REFERENCES `korisnik` (`jmbg`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_isporucuje_pib` FOREIGN KEY (`pib`) REFERENCES `kurirska_sluzba` (`pib`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `fk_korisnik_ptt` FOREIGN KEY (`ptt`) REFERENCES `mesto` (`ptt`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `porucuje`
--
ALTER TABLE `porucuje`
  ADD CONSTRAINT `fk_porucuje_id_online_prodavnice` FOREIGN KEY (`id_online_prodavnice`) REFERENCES `pristupa` (`id_online_prodavnice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_porucuje_id_porudzbine` FOREIGN KEY (`id_porudzbine`) REFERENCES `box_paket` (`id_porudzbine`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_porucuje_jmbg` FOREIGN KEY (`jmbg`) REFERENCES `pristupa` (`jmbg`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `predaje`
--
ALTER TABLE `predaje`
  ADD CONSTRAINT `fk_predaje_id_online_prodavnice` FOREIGN KEY (`id_online_prodavnice`) REFERENCES `prodaje` (`id_online_prodavnice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_predaje_id_porudzbine` FOREIGN KEY (`id_porudzbine`) REFERENCES `prodaje` (`id_porudzbine`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_predaje_pib` FOREIGN KEY (`pib`) REFERENCES `kurirska_sluzba` (`pib`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `pripada`
--
ALTER TABLE `pripada`
  ADD CONSTRAINT `fk_pripada_id_online_prodavnice` FOREIGN KEY (`id_online_prodavnice`) REFERENCES `online_prodavnica` (`id_online_prodavnice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pripada_pib` FOREIGN KEY (`pib`) REFERENCES `firma` (`pib`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `pristupa`
--
ALTER TABLE `pristupa`
  ADD CONSTRAINT `fk_pristupa_id_online_prodavnice` FOREIGN KEY (`id_online_prodavnice`) REFERENCES `online_prodavnica` (`id_online_prodavnice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pristupa_jmbg` FOREIGN KEY (`jmbg`) REFERENCES `korisnik` (`jmbg`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `prodaje`
--
ALTER TABLE `prodaje`
  ADD CONSTRAINT `fk_prodaje_id_online_prodavnice` FOREIGN KEY (`id_online_prodavnice`) REFERENCES `online_prodavnica` (`id_online_prodavnice`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prodaje_id_porudzbine` FOREIGN KEY (`id_porudzbine`) REFERENCES `box_paket` (`id_porudzbine`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tradicionalna_jela`
--
ALTER TABLE `tradicionalna_jela`
  ADD CONSTRAINT `fk_tradicionalna_jela_id_porudzbine` FOREIGN KEY (`id_porudzbine`) REFERENCES `box_paket` (`id_porudzbine`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `veganska_jela`
--
ALTER TABLE `veganska_jela`
  ADD CONSTRAINT `fk_veganska_jela_id_porudzbine` FOREIGN KEY (`id_porudzbine`) REFERENCES `box_paket` (`id_porudzbine`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
