-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Paź 2016, 20:56
-- Wersja serwera: 5.6.26
-- Wersja PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `miejsca_warte_odwiedzenia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejsca`
--

CREATE TABLE IF NOT EXISTS `miejsca` (
  `Id_miejsca` int(11) NOT NULL,
  `Nazwa` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Typ` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Miasto` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Lokalizacja` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `miejsca`
--

INSERT INTO `miejsca` (`Id_miejsca`, `Nazwa`, `Typ`, `Miasto`, `Lokalizacja`) VALUES
(16, 'Aleja Platanowa', 'Pomnik przyrody', 'Legnica', 'https://www.google.pl/maps/place/aleja+Platanowa,+59-200+Legnica/@51.2117954,16.1655204,17z/data=!4m5!3m4!1s0x470f129964251067:0x8e8d6927101fd169!8m2!3d51.2117345!4d16.1671731'),
(17, 'Minieuroland', 'Rozrywka', 'Kłodzko', 'https://www.google.pl/maps/place/Minieuroland/@50.4544433,16.6301789,17z/data=!4m5!3m4!1s0x470e165adc4c63eb:0x835f6fc8134e6450!8m2!3d50.4544433!4d16.6323676'),
(18, 'Białowieski Park Narodowy', 'Rozrywka', 'Białowieża', 'https://www.google.pl/maps/place/Bia%C5%82owieski+Park+Narodowy/@52.7131324,23.8312277,13z/data=!4m5!3m4!1s0x472067e4d3c6b6f1:0x90e6a5ccc7870028!8m2!3d52.7160077!4d23.8449079'),
(19, 'Muzeum Górnictwa w Nowej Rudzie', 'Muzeum', 'Nowa Ruda', 'https://www.google.pl/maps/place/Turystyczna+Kopalnia+W%C4%99gla+w+Nowej+Rudzie/@50.590592,16.5122123,17z/data=!4m5!3m4!1s0x470e4734e94134b1:0xc6bba5d6ca2a665a!8m2!3d50.590592!4d16.514401'),
(20, 'Muzeum Narodowe w Krakowie', 'Muzeum', 'Kraków', 'https://www.google.pl/maps/place/Muzeum+Narodowe+w+Krakowie/@50.060469,19.9215477,17z/data=!3m1!4b1!4m5!3m4!1s0x47165b0ae81fa85d:0x3965c07586ade85a!8m2!3d50.0604656!4d19.9237364'),
(21, 'Galeria Sztuki Polskiej XIX wieku w Sukiennicach', 'Galeria sztuki', 'Kraków', 'https://www.google.pl/maps/place/Muzeum+Narodowe+w+Krakowie+Galeria+Sztuki+Polskiej+XIX+wieku+w+Sukiennicach/@50.0616692,19.9356256,17z/data=!4m5!3m4!1s0x47165b0e077b0fdd:0xbff092d1c74fbf8e!8m2!3d50.0616632!4d19.9374661'),
(22, 'Zamek Królewski na Wawelu', 'Zamek', 'Kraków', 'https://www.google.pl/maps/place/Zamek+Kr%C3%B3lewski+na+Wawelu/@50.0543313,19.9318028,15.5z/data=!4m5!3m4!1s0x47165b6d053619f5:0xacb9dfc4d67fa598!8m2!3d50.0540495!4d19.9354123'),
(23, 'Zamek Książ', 'Zamek', 'Wałbrzych', 'https://www.google.pl/maps/place/Zamek+Ksi%C4%85%C5%BC/@50.8422581,16.2896684,17z/data=!3m1!4b1!4m5!3m4!1s0x470e54f179a0cfff:0x17344ef1ec089738!8m2!3d50.8422547!4d16.2918571'),
(24, 'Twierdz Kłodzka', 'Twierdza', 'Kłodzko', 'https://www.google.pl/maps/place/Twierdza+K%C5%82odzko/@50.4405581,16.6503153,17z/data=!3m1!4b1!4m5!3m4!1s0x470e1700ad4c2811:0xf802139e1ba8809b!8m2!3d50.4405547!4d16.652504'),
(25, 'Pałac w Wilanowie', 'Pałac', 'Wilanów', 'https://www.google.pl/maps/place/Muzeum+Pa%C5%82acu+Kr%C3%B3la+Jana+III+w+Wilanowie/@52.1651749,21.0883197,17z/data=!3m1!4b1!4m5!3m4!1s0x47192d40e99c18eb:0x507f944c08a85521!8m2!3d52.1651749!4d21.0905084');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

CREATE TABLE IF NOT EXISTS `typy` (
  `Id_typu` int(11) NOT NULL,
  `Typ` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `typy`
--

INSERT INTO `typy` (`Id_typu`, `Typ`) VALUES
(1, 'Pomnik przyrody'),
(2, 'Twierdza'),
(3, 'Zamek'),
(4, 'Pałac'),
(5, 'Muzeum'),
(6, 'Galeria sztuki'),
(8, 'Rozrywka');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `miejsca`
--
ALTER TABLE `miejsca`
  ADD PRIMARY KEY (`Id_miejsca`);

--
-- Indexes for table `typy`
--
ALTER TABLE `typy`
  ADD PRIMARY KEY (`Id_typu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `miejsca`
--
ALTER TABLE `miejsca`
  MODIFY `Id_miejsca` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT dla tabeli `typy`
--
ALTER TABLE `typy`
  MODIFY `Id_typu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
