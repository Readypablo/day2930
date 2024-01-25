-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 24 2024 г., 13:22
-- Версия сервера: 8.0.30
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `day13`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `first_name` varchar(999) NOT NULL,
  `img` varchar(999) NOT NULL,
  `cost` int NOT NULL,
  `info` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `first_name`, `img`, `cost`, `info`) VALUES
(1, 'Last Day', '1.jpg', 557, 'В заключительные дни 1935 года в тюрьме Колд Маунтин зрителям предстоит прожить чудеса и трагедии на фоне темного коридора, который никогда не кажется концом.'),
(2, 'Ronin', '2.jpg', 2, 'С момента, как его маленький сын Немо оказывается в аквариуме забытого зубчатого хищника, отец-рыба Марлин отправляется в невероятное приключение сквозь океан, чтобы вернуть своего сына.'),
(3, 'Lorem', '3.jpg', 222, 'Нео, обычный программист, сталкивается с тем, что весь мир вокруг него - всего лишь иллюзия, и теперь ему предстоит раскрывать тайны Матрицы, чтобы спасти человечество.'),
(4, 'The Maiking', '4.jpg', 333, 'Жизнь Форреста Гампа - как коробка шоколадных конфет: непредсказуемая, удивительная и, порой, грустная. Он путешествует сквозь десятилетия, оставляя свой след в истории.'),
(5, 'Academy', '5.jpg', 444, 'В мире, где реальность смешивается с сновидениями, команда крадет информацию, проникая в подсознание других. Вопрос лишь один: где заканчивается реальность и начинается сон?');

-- --------------------------------------------------------

--
-- Структура таблицы `nots`
--

CREATE TABLE `nots` (
  `id` int NOT NULL,
  `first_namu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(50) NOT NULL,
  `cost` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Reviews`
--

CREATE TABLE `Reviews` (
  `id` int NOT NULL,
  `Content` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Reviews`
--

INSERT INTO `Reviews` (`id`, `Content`) VALUES
(1, '\"Большой выбор инструментов и отличное обслуживание! Я в восторге от моей новой гитары!\"'),
(2, '\"Этот магазин стал для меня находкой! Огромный выбор и профессиональный подход.\"'),
(3, '\"Удивительно, какой выбор струнных инструментов! Этот магазин - настоящая находка для музыкантов.\"'),
(4, '\"Спасибо за помощь в выборе! Мой новый саксофон - просто шедевр!\"'),
(6, '\"Очень доволен покупкой клавишного инструмента. Отличное качество и звучание!\"'),
(7, '\"Спасибо за ваше внимание к деталям. Моя новая скрипка - настоящее произведение искусства!\"'),
(8, '\"Моя новая электрогитара - просто космос! Спасибо за отличное обслуживание.\"'),
(9, '\"Очень удобный интерфейс сайта, легко находить и заказывать нужные инструменты.\"'),
(10, '\"Этот магазин стал для меня настоящим открытием. Я нашел здесь именно то, что искал!\"'),
(12, '\"Очень привлекательные цены и высокое качество инструментов. Буду рекомендовать вас всем музыкантам!\"');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data` date NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `data`, `password`, `email`) VALUES
(1, 'admin', 'admin', '12345678', '2023-06-07', '123123', '11111'),
(21, '1', '1', '1', '2024-01-24', '1', '1'),
(22, '2', '2', '2', '2024-01-12', '2', '2'),
(23, '3', '3', '3', '2024-02-04', '3', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `workout`
--

CREATE TABLE `workout` (
  `id` int NOT NULL,
  `first_namee` varchar(50) NOT NULL,
  `lek_id` int NOT NULL,
  `data` datetime NOT NULL,
  `mesto` int NOT NULL,
  `cod` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `workout`
--

INSERT INTO `workout` (`id`, `first_namee`, `lek_id`, `data`, `mesto`, `cod`) VALUES
(36, '2', 2, '2024-01-17 00:00:00', 2, 49328129),
(37, '2', 5, '2024-02-10 00:00:00', 1, 85457434),
(38, '2', 2, '2024-01-27 19:27:00', 1, 43251499);

-- --------------------------------------------------------

--
-- Структура таблицы `workoutnot`
--

CREATE TABLE `workoutnot` (
  `id` int NOT NULL,
  `first_nameee` varchar(50) NOT NULL,
  `not_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `nots`
--
ALTER TABLE `nots`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Reviews`
--
ALTER TABLE `Reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `workout`
--
ALTER TABLE `workout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `first_namee` (`first_namee`),
  ADD KEY `lek_id` (`lek_id`);

--
-- Индексы таблицы `workoutnot`
--
ALTER TABLE `workoutnot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `not_id` (`not_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `nots`
--
ALTER TABLE `nots`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `Reviews`
--
ALTER TABLE `Reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `workout`
--
ALTER TABLE `workout`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `workoutnot`
--
ALTER TABLE `workoutnot`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `workout`
--
ALTER TABLE `workout`
  ADD CONSTRAINT `workout_ibfk_1` FOREIGN KEY (`lek_id`) REFERENCES `books` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `workoutnot`
--
ALTER TABLE `workoutnot`
  ADD CONSTRAINT `workoutnot_ibfk_1` FOREIGN KEY (`not_id`) REFERENCES `nots` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
