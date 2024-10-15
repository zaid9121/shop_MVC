-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 04. Jul 2024 um 23:47
-- Server-Version: 10.11.6-MariaDB-0+deb12u1
-- PHP-Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `web_05`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_number` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `condition_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `books`
--

INSERT INTO `books` (`book_id`, `book_number`, `title`, `slug`, `author`, `publisher`, `isbn`, `publication_year`, `price`, `stock_quantity`, `description`, `image_url`, `condition_id`, `created_at`, `updated_at`) VALUES
(1, 'B001', 'Der große Gatsby', 'der-grosse-gatsby', 'F. Scott Fitzgerald', 'Scribner', '9780743273565', 1925, 10.99, 5, 'Ein Klassiker aus der Zeit des Jazz.', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR-hMJzWEQzFGIbF8jGzRgi67vQDy9TRbzfnnRUEZjzHBJpSzUj__E7wgZP3cNue1Z_vcCZvFpQI52ZzutMBEr5LZKhNLrw&usqp=CAc', 1, '2024-07-03 00:21:12', '2024-07-04 09:03:32'),
(2, 'B002', 'Wer die Nachtigall stört', 'wer-die-nachtigall-stoert', 'Harper Lee', 'J.B. Lippincott & Co.', '9780060935467', 1960, 7.99, 3, 'Ein Roman über die ernsten Themen Vergewaltigung und Rassendiskriminierung.', 'https://images.thalia.media/00/-/775544477741478da2f140a709a07bb3/wer-die-nachtigall-stoert-taschenbuch-harper-lee.jpeg', 2, '2024-07-03 00:21:12', '2024-07-04 09:06:09'),
(3, 'B003', '1984', '1984-george-orwell', 'George Orwell', 'Secker & Warburg', '9780451524935', 1949, 9.99, 4, 'Ein dystopischer Roman in einer totalitären Gesellschaft.', 'https://images.thalia.media/03/-/3c17840373004dc3a4aca6876d44ef8f/1984-taschenbuch-george-orwell.jpeg', 3, '2024-07-03 00:21:12', '2024-07-04 09:06:52'),
(4, 'B004', 'Schöne neue Welt', 'schoene-neue-welt', 'Aldous Huxley', 'Chatto & Windus', '9780060850524', 1932, 8.99, 6, 'Ein Roman, der Entwicklungen in der Reproduktionstechnologie und im Schlaflernen vorwegnimmt.', 'https://images.thalia.media/03/-/77cee1f93b3d4bc9bb4ea38df352ea04/schoene-neue-welt-taschenbuch-aldous-huxley.jpeg', 4, '2024-07-03 00:21:12', '2024-07-04 09:07:34'),
(5, 'B005', 'Die Verwandlung', 'die-verwandlung', 'Franz Kafka', 'Kurt Wolff Verlag', '9783150000014', 1915, 6.99, 8, 'Eine Novelle über die Verwandlung eines Mannes in ein Ungeziefer.', 'https://images.thalia.media/03/-/c1c5548728284e638fcbc269dea415c6/kafka-saemtliche-erzaehlungen-schmuckausgabe-mit-kupferpraegung-gebundene-ausgabe-franz-kafka.jpeg', 1, '2024-07-03 00:21:12', '2024-07-04 09:08:17'),
(6, 'B006', 'Fahrenheit 451', 'fahrenheit-451', 'Ray Bradbury', 'Ballantine Books', '9781451673319', 1953, 7.99, 7, 'Ein dystopischer Roman über eine Zukunft, in der Bücher verboten sind.', 'https://images.thalia.media/03/-/11c70f336314434db400dd916facddf7/fahrenheit-451-gebundene-ausgabe-ray-bradbury.jpeg', 2, '2024-07-03 00:21:12', '2024-07-04 09:08:57'),
(7, 'B007', 'Moby-Dick', 'moby-dick', 'Herman Melville', 'Harper & Brothers', '9780142437247', 1851, 12.99, 4, 'Ein Roman über die Reise des Walfangschiffs Pequod.', 'https://images.thalia.media/03/-/58d9e4acd2e144ad84b75022dfcd8e2f/gr-schmuckausgabe-h-melville-moby-dick-gebundene-ausgabe-herman-melville.jpeg', 3, '2024-07-03 00:21:12', '2024-07-04 09:09:28'),
(8, 'B008', 'Krieg und Frieden', 'krieg-und-frieden', 'Leo Tolstoy', 'The Russian Messenger', '9780199232765', 1869, 15.99, 2, 'Ein Roman, der das Leben mehrerer Adelsfamilien während der Napoleonischen Kriege schildert.', 'https://images.thalia.media/03/-/8a5b9ab738b84ae2bd8f920c7a1a48d3/krieg-und-frieden-gebundene-ausgabe-leo-n-tolstoi.jpeg', 4, '2024-07-03 00:21:12', '2024-07-04 09:09:56'),
(9, 'B009', 'Anna Karenina', 'anna-karenina', 'Leo Tolstoy', 'The Russian Messenger', '9780143035008', 1877, 10.49, 5, 'Eine tragische Liebesgeschichte im zaristischen Russland.', 'https://images.thalia.media/03/-/9c75944544984a888c6adfc17792b129/anna-karenina-gebundene-ausgabe-leo-n-tolstoi.jpeg', 1, '2024-07-03 00:21:12', '2024-07-04 09:10:19'),
(10, 'B010', 'Madame Bovary', 'madame-bovary', 'Gustave Flaubert', 'Revue de Paris', '9780199535651', 1857, 9.49, 6, 'Ein Roman über die unglückliche Ehe von Emma Bovary.', 'https://images.thalia.media/00/-/8d3e807073f8478d8cbb58e87b8360a5/madame-bovary-roman-gebundene-ausgabe-gustave-flaubert.jpeg', 2, '2024-07-03 00:21:12', '2024-07-04 09:11:12'),
(11, 'B011', 'Die Brüder Karamasow', 'die-brueder-karamasow', 'Fyodor Dostoyevsky', 'The Russian Messenger', '9780374528379', 1880, 14.99, 3, 'Ein Roman über die moralischen, spirituellen und intellektuellen Fragen des 19. Jahrhunderts in Russland.', 'https://images.thalia.media/03/-/908d27b9f3c34f58ab55ab415679eea5/dostojewskij-gebundene-ausgabe-andreas-guski.jpeg', 3, '2024-07-03 00:21:12', '2024-07-04 09:11:53'),
(12, 'B012', 'Ulysses', 'ulysses', 'James Joyce', 'Shakespeare and Company', '9780141182803', 1922, 13.99, 4, 'Ein moderner Klassiker, der einen Tag im Leben von Leopold Bloom beschreibt.', 'https://images.thalia.media/03/-/9f2b616def84411b88448d35bb71c6a3/ulysses-gebundene-ausgabe-james-joyce.jpeg', 4, '2024-07-03 00:21:12', '2024-07-04 09:12:23'),
(13, 'B013', 'Im Westen nichts Neues', 'im-westen-nichts-neues', 'Erich Maria Remarque', 'Propyläen Verlag', '9780449213940', 1929, 8.99, 7, 'Ein Anti-Kriegsroman aus dem Ersten Weltkrieg.', 'https://images.thalia.media/03/-/d98fa42d005a46a6ae1c8131c8f5ea01/im-westen-nichts-neues-gebundene-ausgabe-erich-maria-remarque.jpeg', 1, '2024-07-03 00:21:12', '2024-07-04 09:12:57'),
(14, 'B014', 'Auf der Suche nach der verlorenen Zeit', 'auf-der-suche-nach-der-verlorenen-zeit', 'Marcel Proust', 'Grasset', '9780307266286', 1913, 16.99, 3, 'Ein Roman über Erinnerung und Zeit.', 'https://images.thalia.media/03/-/4d20b3709572460db2ff877f557689d9/auf-der-suche-nach-der-verlorenen-zeit-gebundene-ausgabe-marcel-proust.jpeg', 2, '2024-07-03 00:21:12', '2024-07-04 09:13:26'),
(15, 'B015', 'Der Herr der Ringe', 'der-herr-der-ringe', 'J.R.R. Tolkien', 'Allen & Unwin', '9780618640157', 1954, 25.99, 10, 'Ein Fantasy-Epos über die Reise zur Zerstörung des Einen Rings.', 'https://images.thalia.media/03/-/ec8add02837140be8336a63c90dd1a67/der-herr-der-ringe-bd-3-die-rueckkehr-des-koenigs-der-herr-der-ringe-ausgabe-in-neuer-uebersetzung-und-rechtschreibung-bd-3-taschenbuch-j-r-r-tolkien.jpeg', 3, '2024-07-03 00:21:12', '2024-07-04 09:14:25'),
(16, 'B016', 'Harry Potter und der Stein der Weisen', 'harry-potter-und-der-stein-der-weisen', 'J.K. Rowling', 'Bloomsbury', '9780747532699', 1997, 19.99, 15, 'Der erste Band der berühmten Harry Potter Serie.', 'https://images.thalia.media/03/-/84ddd999f5bc4397bc04d289cf9e2a64/das-inoffizielle-harry-potter-buch-der-zaubersprueche-und-magischen-gegenstaende-taschenbuch-millicent-shacklebolt.jpeg', 4, '2024-07-03 00:21:12', '2024-07-04 09:14:59'),
(17, 'B017', 'Der Alchemist', 'der-alchemist', 'Paulo Coelho', 'HarperCollins', '9780061122415', 1988, 11.99, 8, 'Eine spirituelle Reise eines andalusischen Hirtenjungen.', 'https://images.thalia.media/03/-/6420d89d050a4e988e055e004bc91c2c/infinity-alchemist-gebundene-ausgabe-kacen-callender.jpeg', 1, '2024-07-03 00:21:12', '2024-07-04 09:15:34'),
(18, 'B018', 'Der Fänger im Roggen', 'der-faenger-im-roggen', 'J.D. Salinger', 'Little, Brown and Company', '9780316769488', 1951, 9.49, 6, 'Ein Roman über die Herausforderungen der Jugend und Entfremdung.', 'https://images.thalia.media/03/-/0e96ec2d64de4850a082159e0b418e19/der-faenger-im-roggen-gebundene-ausgabe-j-d-salinger.jpeg', 2, '2024-07-03 00:21:12', '2024-07-04 09:16:02'),
(19, 'B019', 'Hundert Jahre Einsamkeit', 'hundert-jahre-einsamkeit', 'Gabriel García Márquez', 'Harper & Row', '9780060883286', 1967, 13.99, 5, 'Ein magischer realistischer Roman über die Geschichte der Familie Buendía.', 'https://images.thalia.media/03/-/6b803cf1b14a42e2922977c6c8eaa858/hundert-jahre-einsamkeit-gebundene-ausgabe-gabriel-garcia-marquez.jpeg', 3, '2024-07-03 00:21:12', '2024-07-04 09:16:25'),
(20, 'B020', 'Per Anhalter durch die Galaxis', 'per-anhalter-durch-die-galaxis', 'Douglas Adams', 'Pan Books', '9780345391803', 1979, 8.99, 12, 'Ein Science-Fiction-Roman über die Abenteuer von Arthur Dent.', 'https://images.thalia.media/03/-/372d929b19434d168a61af9783b6095c/per-anhalter-durch-die-galaxis-taschenbuch-douglas-adams.jpeg', 4, '2024-07-03 00:21:12', '2024-07-04 09:16:56'),
(21, 'B021', 'Das Bildnis des Dorian Gray', 'das-bildnis-des-dorian-gray', 'Oscar Wilde', 'Lippincott\'s Monthly Magazine', '9780141439570', 1890, 7.99, 9, 'Ein Roman über Schönheit, Jugend und Verderbnis.', 'https://images.thalia.media/03/-/dd366495f9114b4784e57d19d0edeb3a/das-bildnis-des-dorian-gray-the-picture-of-dorian-gray-anaconda-paperback-taschenbuch-oscar-wilde.jpeg', 1, '2024-07-03 00:21:12', '2024-07-04 09:17:31'),
(22, 'B022', 'Die Abenteuer des Huckleberry Finn', 'die-abenteuer-des-huckleberry-finn', 'Mark Twain', 'Chatto & Windus', '9780486280615', 1884, 6.99, 10, 'Ein Klassiker über die Abenteuer eines Jungen entlang des Mississippi.', 'https://images.thalia.media/03/-/53afd872727f47c2960b25a3bbd568da/die-abenteuer-des-huckleberry-finn-taschenbuch-mark-twain.jpeg', 2, '2024-07-03 00:21:12', '2024-07-04 09:18:09'),
(23, 'B023', 'Der alte Mann und das Meer', 'der-alte-mann-und-das-meer', 'Ernest Hemingway', 'Charles Scribner\'s Sons', '9780684830490', 1952, 9.99, 7, 'Ein Roman über den Kampf eines alten Fischers mit einem riesigen Marlin.', 'https://images.thalia.media/03/-/0c194136750f4624bd5a4240acd216f9/der-alte-mann-und-das-meer-taschenbuch-ernest-hemingway.jpeg', 3, '2024-07-03 00:21:12', '2024-07-04 09:18:45'),
(24, 'B024', 'Frankenstein', 'frankenstein', 'Mary Shelley', 'Lackington, Hughes, Harding, Mavor & Jones', '9780141439471', 1818, 6.49, 8, 'Ein klassischer Horrorroman über den Wissenschaftler Victor Frankenstein.', 'https://images.thalia.media/03/-/e94c524b889f48a1b245c33dc6d9f419/die-unheimlichen-frankenstein-nach-mary-shelley-gebundene-ausgabe-ralf-koenig.jpeg', 4, '2024-07-03 00:21:12', '2024-07-04 09:19:11'),
(25, 'B025', 'Der Prozess', 'der-prozess', 'Franz Kafka', 'Verlag Die Schmiede', '9780805209990', 1925, 7.49, 5, 'Ein unvollendeter Roman über die geheimnisvolle Verhaftung von Josef K.', 'https://images.thalia.media/03/-/55ead98b7c46414d9d9faa1a1d11698e/franz-kafka-gesammelte-werke-iris-leinen-mit-goldener-schmuckpraegung-gebundene-ausgabe-franz-kafka.jpeg', 1, '2024-07-03 00:21:12', '2024-07-04 09:19:47'),
(26, 'B026', 'Der kleine Prinz', 'der-kleine-prinz', 'Antoine de Saint-Exupéry', 'Reynal & Hitchcock', '9780156012195', 1943, 5.99, 20, 'Ein poetisches Märchen über den kleinen Prinzen und seine Reisen.', 'https://images.thalia.media/03/-/7f55287c0a2a4e69bc3f44f9ced8287a/der-kleine-prinz-antoine-de-saint-exupery-mit-den-zeichnungen-des-verfassers-taschenbuch-antoine-de-saint-exupery.jpeg', 2, '2024-07-03 00:21:12', '2024-07-04 09:20:12'),
(27, 'B027', 'Die Odyssee', 'die-odyssee', 'Homer', 'Penguin Classics', '9780140268867', -800, 10.99, 10, 'Ein episches Gedicht über die Abenteuer von Odysseus.', 'https://images.thalia.media/03/-/91e1ab4a5d7b44ee965ab6e5cc527195/klassiker-to-go-jack-london-wolfsblut-die-goldschlucht-eine-odysee-des-nordens-mp3-fred-c-siebeck.jpeg', 3, '2024-07-03 00:21:12', '2024-07-04 09:20:44'),
(28, 'B028', 'Dracula', 'dracula', 'Bram Stoker', 'Archibald Constable and Company', '9780141439846', 1897, 7.99, 7, 'Ein klassischer Horrorthriller über den Vampir Dracula.', 'https://images.thalia.media/03/-/93313e32157741d2809136e902cbb50a/draculas-gast-ein-schauerroman-mit-dem-urspruenglich-1-kapitel-von-dracula-epub-bram-stoker.jpeg', 4, '2024-07-03 00:21:12', '2024-07-04 09:21:11'),
(29, 'B029', 'Don Quijote', 'don-quijote', 'Miguel de Cervantes', 'Francisco de Robles', '9780060934341', 1605, 14.49, 3, 'Ein satirischer Roman über die Abenteuer des Don Quijote.', 'https://images.thalia.media/03/-/774374ad2be44db48086b3262d131b53/der-scharfsinnige-ritter-don-quixote-von-der-mancha-taschenbuch-miguel-de-cervantes-saavedra.jpeg', 1, '2024-07-03 00:21:12', '2024-07-04 09:21:33'),
(30, 'B030', 'Stolz und Vorurteil', 'stolz-und-vorurteil', 'Jane Austen', 'T. Egerton', '9780141439518', 1813, 9.49, 8, 'Ein Roman über die romantischen Missgeschicke von Elizabeth Bennet.', 'https://images.thalia.media/03/-/0e618255c6ef41da945f3b1d8948288b/sturmhoehe-gebundene-ausgabe-emily-bronte.jpeg', 2, '2024-07-03 00:21:12', '2024-07-04 09:22:11');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `book_categories`
--

CREATE TABLE `book_categories` (
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `book_categories`
--

INSERT INTO `book_categories` (`book_id`, `category_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 5),
(3, 3),
(4, 4),
(5, 1),
(6, 2),
(7, 3),
(8, 6),
(9, 6),
(10, 4),
(11, 1),
(12, 4),
(13, 1),
(14, 5),
(15, 3),
(16, 4),
(17, 1),
(18, 1),
(19, 6),
(20, 5),
(21, 4),
(22, 3),
(23, 2),
(24, 1),
(25, 1),
(26, 2),
(27, 3),
(28, 4),
(29, 5),
(30, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `book_conditions`
--

CREATE TABLE `book_conditions` (
  `condition_id` int(11) NOT NULL,
  `condition_name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `book_conditions`
--

INSERT INTO `book_conditions` (`condition_id`, `condition_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Neu', 'Nagelneues Buch', '2024-07-03 00:21:12', '2024-07-03 00:21:12'),
(2, 'Gebraucht - Wie Neu', 'Leicht gebraucht, aber in ausgezeichnetem Zustand', '2024-07-03 00:21:12', '2024-07-03 00:21:12'),
(3, 'Gebraucht - Gut', 'Gebrauchtes Buch in gutem Zustand', '2024-07-03 00:21:12', '2024-07-03 00:21:12'),
(4, 'Gebraucht - Akzeptabel', 'Gebrauchtes Buch mit einigen Gebrauchsspuren, aber lesbar', '2024-07-03 00:21:12', '2024-07-03 00:21:12');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `parent_category_id`, `slug`) VALUES
(1, 'Belletristik', NULL, 'belletristik'),
(2, 'Sachbuch', NULL, 'sachbuch'),
(3, 'Science Fiction', 1, 'science-fiction'),
(4, 'Fantasy', 1, 'fantasy'),
(5, 'Geschichte', 2, 'geschichte'),
(6, 'Biografie', 2, 'biografie');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'password1', 'Elmstraße 123, Springfield, USA', '555-1234'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'password2', 'Eichenstraße 456, Springfield, USA', '555-5678'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 'password3', 'Kiefernstraße 789, Springfield, USA', '555-9101');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `total_price`, `status`, `shipping_id`) VALUES
(1, 1, '2024-07-01', 25.97, 'In Bearbeitung', 1),
(2, 2, '2024-07-02', 18.98, 'Versandt', 2),
(3, 3, '2024-07-03', 28.97, 'Geliefert', 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `book_id`, `quantity`, `price`) VALUES
(1, 1, 1, 1, 10.99),
(2, 1, 3, 1, 9.99),
(3, 1, 2, 1, 4.99),
(4, 2, 3, 1, 9.99),
(5, 2, 4, 1, 8.99),
(6, 3, 2, 1, 7.99),
(7, 3, 1, 1, 10.99),
(8, 3, 4, 1, 9.99);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shipping_costs`
--

CREATE TABLE `shipping_costs` (
  `shipping_id` int(11) NOT NULL,
  `shipping_method` varchar(100) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `shipping_costs`
--

INSERT INTO `shipping_costs` (`shipping_id`, `shipping_method`, `cost`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Standardversand', 5.00, 'Lieferung innerhalb von 5-7 Werktagen', '2024-07-03 00:21:12', '2024-07-03 00:21:12'),
(2, 'Expressversand', 10.00, 'Lieferung innerhalb von 2-3 Werktagen', '2024-07-03 00:21:12', '2024-07-03 00:21:12'),
(3, 'Overnight Versand', 20.00, 'Lieferung am nächsten Tag', '2024-07-03 00:21:12', '2024-07-03 00:21:12');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `remember_me_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `condition_id` (`condition_id`);

--
-- Indizes für die Tabelle `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`book_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indizes für die Tabelle `book_conditions`
--
ALTER TABLE `book_conditions`
  ADD PRIMARY KEY (`condition_id`);

--
-- Indizes für die Tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `parent_category_id` (`parent_category_id`);

--
-- Indizes für die Tabelle `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `shipping_id` (`shipping_id`);

--
-- Indizes für die Tabelle `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indizes für die Tabelle `shipping_costs`
--
ALTER TABLE `shipping_costs`
  ADD PRIMARY KEY (`shipping_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT für Tabelle `book_conditions`
--
ALTER TABLE `book_conditions`
  MODIFY `condition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `shipping_costs`
--
ALTER TABLE `shipping_costs`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`condition_id`) REFERENCES `book_conditions` (`condition_id`);

--
-- Constraints der Tabelle `book_categories`
--
ALTER TABLE `book_categories`
  ADD CONSTRAINT `book_categories_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `book_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints der Tabelle `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints der Tabelle `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`shipping_id`) REFERENCES `shipping_costs` (`shipping_id`);

--
-- Constraints der Tabelle `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
