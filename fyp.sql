-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2022 at 03:11 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` varchar(5) NOT NULL,
  `expired` varchar(10) NOT NULL,
  `expired_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `userid`, `bookid`, `expired`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'S0004', '2022-01-14', '2022-01-14 06:56:47', '2022-01-11 06:56:47', '2022-01-11 06:56:47'),
(2, 1, 'Sc002', '2022-01-14', '2022-01-14 06:58:06', '2022-01-11 06:58:06', '2022-01-11 06:58:06'),
(3, 1, 'S0012', '2022-01-15', '2022-01-15 04:56:17', '2022-01-12 04:56:17', '2022-01-12 04:56:17'),
(4, 6, 'C0003', '2022-01-15', '2022-01-15 08:50:07', '2022-01-12 08:50:07', '2022-01-12 08:50:07'),
(5, 7, 'F0008', '2022-01-16', '2022-01-15 17:42:49', '2022-01-12 17:42:49', '2022-01-12 17:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(5) NOT NULL,
  `bookid` varchar(5) CHARACTER SET utf8 NOT NULL,
  `isbn` char(13) CHARACTER SET utf8 NOT NULL,
  `bookTitle` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `publisher` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `bookDetail` varchar(3000) CHARACTER SET utf8 DEFAULT NULL,
  `categoryid` int(2) DEFAULT NULL,
  `languageid` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `cover` varchar(128) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookid`, `isbn`, `bookTitle`, `author`, `publisher`, `bookDetail`, `categoryid`, `languageid`, `year`, `cover`, `status`, `created_at`, `updated_at`) VALUES
(1, 'C0001', '9780374300210', 'If Animals Kissed Good Night ', 'Ann Whitford Paul', 'Farrar, Straus and Giroux (BYR)', 'What if animals did what YOU do? This bestselling story imagines how animals would kiss their loved ones good night!\r\n\r\nIf animals kissed good night like we do...how would they do it? Giraffe and his calf would stretch their necks high, Wolf and his pup would kiss and then HOWL, and Sloth and her baby would move sooooo sloooowwwww. And across the animal kingdom, every creature would share love in a unique way.', 7, 2, 2014, 'cover/1.jpg', 0, NULL, NULL),
(18, 'C0002', '9781684069293', 'What If We Were…', 'Axelle Lenoir', 'Top Shelf Productions', 'Teen girls rewrite the universe on a daily basis! This comic collection proves there’s nothing better than using your imagination… except maybe talking nonsense with your friends. Hey, why not both? Nathalie and Marie are 17 years old and best friends. Since elementary school, they’ve been creatively filling moments of boredom with a game called “What If We Were...?”. One player names a topic—let’s say “vampire slayers” for example—and then both imagine what life would be like as that subject. “I would only hunt vampires during daytime, because it would be less exhausting” would be a good answer. “I would only hunt them for sport, to eventually sell their skins” could be another, if a little disturbing. Easy to play, but hard to master. An expert player will know how to think outside the box and surprise their opponent. And after all these years, Nathalie and Marie are experts! What If We Were… collects dozens of these games as hilarious and addictive comic strips, along with super-fun bonus material like diary entries, bonus comics, and more.', 7, 2, 2020, 'cover/18.jpg', 0, NULL, NULL),
(68, 'C0003', '9787544222976', '窗边的小豆豆', '[日] 黑柳彻子 著 / 岩崎千弘 图', '南海出版公司', '《窗边的小豆豆》讲述了作者上小学时的一段真实的故事。作者因淘气被原学校退学后，来到巴学园。在小林校长的爱护和引导下，让一般人眼里“怪怪”的小豆豆逐渐成了一个大家都能接受的孩子，并奠定了她一生的基础。这本书不仅带给世界几千万读者无数的笑声和感动，而且为现代教育的发展注入了新的活力。', 7, 1, 2003, 'cover/68.jpg', 1, NULL, '2022-01-12 17:50:41'),
(69, 'C0004', '9787534618727', '草房子', '曹文轩', '江苏少年儿童出版社', '这是一部讲究品位的少年长篇小说。\r\n作品写了男孩桑桑刻骨铭心、终身难忘的六年小学生活。六年中，他亲眼目睹或直接参与了一连串看似寻常但又催人泪下、撼动人心的故事：少男少女之间毫无暇疵的纯情，不幸少年与厄运相拼时的悲怆与优雅，残疾男孩对尊严的执著坚守，垂暮老人在最后一瞬所闪耀的人格光彩，在死亡体验中对生命的深切而优美的领悟，大人们之间扑朔迷离且又充满诗情画意的情感纠葛 …… 这一切，既清楚又朦胧地展现在少年桑桑的世界里。这六年，是他接受人生启蒙教育的六年。\r\n作品格调高雅，由始至终充满美感。叙述风格谐趣而又庄重，整体结构独特而又新颖，情节设计曲折而又智慧。荡漾于全部作品的悲悯情怀，在人与人之间的关系日趋疏远、情感日越淡漠的当今世界中，也显得弥足珍贵、格外感人。通篇叙述既明白晓畅，又有一定的深度，是那种既是孩子喜爱也可供成人阅读的儿童文学作品。', 7, 1, 2009, 'cover/69.jpg', 0, NULL, NULL),
(71, 'C0005', '9781419741852', 'Diary of a Wimpy Kid (Diary of a Wimpy Kid #1)', 'Jeff Kinney', 'Harry N. Abrams', 'Jeff Kinney is a #1 New York Times bestselling author of the Diary of a Wimpy Kid series and the Awesome Friendly Kid series. He is a six-time Nickelodeon Kids’ Choice Award winner for Favorite Book and has been named one of Time magazine’s 100 Most Influential People in the World. He spent his childhood in the Washington, D.C., area and moved to New England, where he and his wife own a bookstore named An Unlikely Story.', 7, 2, 2007, 'cover/71.jpg', 0, '2021-11-22 23:50:20', '2021-11-22 23:50:20'),
(104, 'C0006', '9787544244190', '牧羊少年奇幻之旅', '[巴西] 保罗·柯艾略', '南海出版公司', '牧羊少年圣地亚哥接连两次做了同一个梦，梦见埃及金字塔附近藏有一批宝藏。少年卖掉羊群，历尽千辛万苦一路向南，跨海来到非洲，穿越“死亡之海”撒哈拉大沙漠……期间奇遇不断，在一位炼金术士的指引下，他终于到达金字塔前，悟出了宝藏的真正所在……', 7, 1, 2009, 'cover/104.jpg', 0, '2022-01-12 17:48:00', '2022-01-12 17:48:00'),
(2, 'F0001', '9781781100486', 'Harry Potter and the Sorcerer\'s Stone', 'J.K.Rowling', 'Pottermore', 'Harry Potter and the Philosopher\'s Stone is the first novel in the Harry Potter series written by British author J. K. Rowling.', 2, 2, 2015, 'cover/2.jpg', 0, NULL, '2021-12-29 17:55:18'),
(3, 'F0002', '9781781100509', 'Harry Potter and the Chamber of Secrets', 'J.K.Rowling', 'Pottermore ', 'Harry Potter and the Chamber of Secrets is a fantasy novel written by British author J. K. Rowling and the second novel in the Harry Potter series.', 2, 2, 2015, 'cover/3.jpg', 1, NULL, '2021-12-29 17:52:59'),
(4, 'F0003', '9781781100516', 'Harry Potter and the Prisoner of Azkaban', 'J.K.Rowling', 'Pottermore ', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series.', 2, 2, 2015, 'cover/4.jpg', 0, NULL, NULL),
(5, 'F0004', '9781781100523', 'Harry Potter and the Goblet of Fire', 'J.K.Rowling', 'Pottermore ', 'Harry Potter and the Goblet of Fire is a fantasy novel written by British author J. K. Rowling and the fourth novel in the Harry Potter series.', 2, 2, 2015, 'cover/5.jpg', 0, NULL, '2021-12-28 20:02:53'),
(6, 'F0005', '9781781100530', 'Harry Potter and the Order of the Phoenix', 'J.K.Rowling', 'Pottermore ', 'Harry Potter and the Order of the Phoenix is a fantasy novel written by British author J. K. Rowling and the fifth novel in the Harry Potter series. ', 2, 2, 2015, 'cover/6.jpg', 0, NULL, '2022-01-12 17:57:52'),
(7, 'F0006', '9781781100547', 'Harry Potter and the Half-Blood Prince', 'J.K.Rowling', 'Pottermore ', 'Harry Potter and the Half-Blood Prince is a fantasy novel written by British author J.K. Rowling and the sixth and penultimate novel in the Harry Potter series. ', 2, 2, 2015, 'cover/7.jpg', 0, NULL, NULL),
(8, 'F0007', '9781781102435', 'Harry Potter and the Deathly Hallows', 'J.K.Rowling', 'Pottermore ', 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series. ', 2, 2, 2015, 'cover/8.jpg', 0, NULL, NULL),
(22, 'F0008', '9781509851386', 'Turn a Blind Eye', 'Jeffrey Archer', 'Pan Macmillan', 'In the third instalment in the life of Detective William Warwick, following on from Hidden in Plain Sight, international bestseller Jeffrey Archer once again displays his mastery at the art of storytelling.\r\nDetective Inspector William Warwick is tasked with a dangerous new line of work, to go undercover and expose corruption at the heart of the Metropolitan Police Force.\r\nHis team focuses on Detective Sergeant Jerry Summers, a young officer living an extravagant lifestyle. But Summers develops a personal relationship with a WPC on William\'s team and the investigation hangs in the balance.\r\nAs his undercover officers draw the threads together, William realizes that the corruption may go far higher than his initial assessment, and that more of his colleagues than he thought possible might be willing to turn a blind eye . . .\r\n', 2, 2, 2021, 'cover/22.jpg', 0, NULL, NULL),
(41, 'F0009', '9787544731706', '少年PI的奇幻漂流（插图珍藏版）', '[加拿大] 扬·马特尔', '译林出版社', '一艘孤单小船，一个落难少年，一只孟加拉虎，这是南太平洋上，最艰难的生存考验。《少年pi的奇幻漂流》是作者马特尔的第二部小说，但是一面市便惊艳国际文坛，获奖无数，成为畅销书。小说描写一个印度男孩和一只叫理查德·帕克的孟加拉虎一起在太平洋上漂流227天后获得重生的神奇故事。\r\n\r\n历磨难而成长，因信念而不凡。小说内容关于冒险、希望、奇迹、生存和信心，是一 个能让人产生信仰的故事，同时也会让读者重新认识文学并相信文学的力量。书中如真似幻的海上历险与天真、残酷并存的人性矛盾，巧妙契合，更激荡出高潮不断的阅读惊喜。无论是开放式的结局还是小说对于信仰、生存，乃至人与动物、人与人、人与世界的关系的展现，都会成为每一个读者深思的问题。', 2, 1, 2012, 'cover/41.jpg', 0, NULL, NULL),
(85, 'F0010', '9780786967292', 'Fizban\'s Treasury of Dragons', 'Wizards RPG Team', 'Wizards of the Coast', 'Discover everything there is to know about dragons—the most iconic of D&D monsters—in this quintessential reference guide.\r\n\r\nMeet Fizban the Fabulous: doddering archmage, unlikely war hero, divine avatar of a dragon-god—and your guide to the mysteries of dragonkind.', 2, 2, 2021, 'cover/85.jpg', 0, '2021-12-01 05:13:37', '2021-12-01 05:13:37'),
(65, 'H0001', '9787213088308', '无规则游戏', '[美] 塔米姆·安萨利', '浙江人民出版社', '塔米姆·安萨利是一位阿富汗裔美国人，他出生和成长在喀布尔，于1964年移居美国，兼有阿富汗和美国两国血统。他讲述的阿富汗故事饱含对故国家园的深切关怀，从局内人的视角为我们解读阿富汗动荡不安的内在原因。他坦言，在阿富汗，西方式的民主没有植根的土壤；按照西方的游戏规则，阿富汗人将无法生存。\r\n阿富汗的先民在史前就创造了高度发达的原始文明，这里自古就是文明交往的十字路口、各种政治势力的交结之处，不断处于外族的征服和统治之下。过去的200多年，阿富汗每隔40年就会有强权侵入，干预其发展，破坏已取得的进步。阿富汗深陷古典文明和现代文明断裂的洼地，对于阿富汗人来说，辉煌的往昔是模糊的，历史必须重新开始。\r\n现代阿富汗的历史就像是一部跌宕起伏的戏剧，充满了荒唐、惊悚和悲伤。两个多世纪以来，几乎每隔40年，就会有一个大国强行阻断阿富汗的发展，破坏其取得的进步。待强权退出，阿富汗历史才能重新开始。\r\n这是一个被自己的恶魔破坏的国家，这是一个被反复争夺和统治的国家。塔米姆·安萨利通过阿富汗人的视角来解读祖国的历史，他驳斥了“帝国坟场”的论断，讲述了长期以来外部世界从未完全了解的阿富汗内部斗争，剖析了现代入侵者屡战屡败的致命原因。在这里，外国的干涉和入侵不是主旋律，它们只是扰乱了阿富汗的发展，阿富汗人有自己的故事，这是与所有入侵完全不同的：高高在上的私权力、根深蒂固的部落文化、走火入魔的极端思想、错综复杂的地缘政治……塔米姆·安萨利带领我们走进一个“真实的阿富汗”。本书叙事流畅，为我们了解阿富汗这个长期处于国际话语权之外的国家提供了启示性的见解。\r\n', 12, 1, 2018, 'cover/65.jpg', 0, NULL, NULL),
(66, 'H0002', '9787208169555', '季风吹拂的土地', '[英] 迈克尔·⽡提裘提斯', '上海人民出版社', '说起东南亚，你会想到什么？\r\n海岛、沙滩、购物中心、度假酒店，还是暴力、腐败、军事政变、宗教冲突？\r\n一面是社会经济高速发展带来的物质富足，一面是民主状态的反复和集权政府的冷酷。暴力与奢华并存，闲适与压抑同在。\r\n《季风吹拂的土地》是一部关于东南亚现代化进程及其面临问题的反思和剖析。作者迈克尔·瓦提裘提斯先后担任BBC记者、《远东经济评论》编辑、调解冲突的中间人，在东南亚工作、生活近四十年。基于其研究者、观察者、参与者的三种身份，瓦提裘提斯从东南亚的社会症结与历史重负出发，辅以细腻动人的个人经验，追溯经济与文化、殖民背景与历史遗产，内部分歧与外部渗透，深度解析地区性冲突的背后原因，及其对于国际局势的影响。', 12, 1, 2021, 'cover/66.jpg', 0, NULL, NULL),
(67, 'H0003', '9787208166660', '法国大革命前夕的图书世界', '[美] 罗伯特·达恩顿（Robert Darnton）', '上海人民出版社', '故事围绕⼀位来自瑞士的图书销售代表展开。1778年夏日的⼀天，29岁的让-弗朗索瓦·法瓦尔热动身上马，开启了⼀趟环绕大半个法国的公务旅行。他受雇于纳沙泰尔出版社，任务是拜访沿途书店，推销书籍、查收账目、安排货运、调查市场。在历时五个多月的行程中，他翻越汝拉山脉，沿罗讷河直抵地中海，横穿法国中部地区，途径里昂、马赛、图卢兹等重要城镇。法瓦尔热详细记录了沿途经历。这份珍贵的旅行日志无异于⼀场18世纪法国外省出版市场及图书贸易的导览。与它同样完好⽆缺地保存在纳沙泰尔出版社档案中的，还有上千份内容翔实的信件、银⾏账⽬、交易记录，涉及出版业有关的各⾊⼈群。罗伯特·达恩顿充分利⽤这批宝藏，在本书中描绘了⼀个处于历史重要关头的，⼈物鲜活、⽣机勃勃的图书世界。达恩顿⽤精彩的浸⼊式书写带读者走进图书贸易的哥哥环节，并亲历竞争激烈且秩序混乱的18世纪图书世界。当时市场上流通的是什么书籍？这些图书怎样到达读者手中？通过回答以上两个问题，《法国大革命前夕的图书世界》为读者铺陈了变革前夕法国社会阅读和基层人民生活的全景画卷，以及塑造今日世界的革命性变革酝酿之时的历史微观图景。', 12, 1, 2021, 'cover/67.jpg', 1, NULL, '2022-01-12 07:59:50'),
(101, 'H0004', '9780451224958', 'The Forgotten 500', 'Gregory A. Freeman', 'Dutton Caliber', 'The astonishing, never before told story of the greatest rescue mission of World War II—when the OSS set out to recover more than 500 airmen trapped behind enemy lines in Yugoslavia...\r\nDuring a bombing campaign over Romanian oil fields, hundreds of American airmen were shot down in Nazi-occupied Yugoslavia. Local Serbian farmers and peasants risked their own lives to give refuge to the soldiers while they waited for rescue, and in 1944, Operation Halyard was born. The risks were incredible. The starving Americans in Yugoslavia had to construct a landing strip large enough for C-47 cargo planes—without tools, without alerting the Germans, and without endangering the villagers. And the cargo planes had to make it through enemy airspace and back—without getting shot down themselves.\r\nClassified for over half a century for political reasons, the full account of this unforgettable story of loyalty, self-sacrifice, and bravery is now being told for the first time ever. The Forgotten 500 is the gripping, behind-the-scenes look at the greatest escape of World War II.', 12, 2, 2008, 'cover/101.jpg', 0, '2021-12-01 18:12:30', '2021-12-01 18:12:30'),
(102, 'H0005', '9787559842831', '帝国的技艺', '郑非', '广西师范大学出版社', '帝国，作为一种主要的人类政治构造，航行在民族主义时代的风暴中。帝国的掌舵者们，并没有温柔的走进那个良夜。有些船搁浅了，有些船则被时代大潮打成了碎片。他们所遭遇的困难，现在仍然挑战着一些多民族国家，观察这些水手的举动（即使是他们在礁石上撞得粉碎的时候），仍然是有益的。本书想要探讨的，正是这样一些问题——近代帝国是如何统治其多民族属民的？在统治的时候，遇到了哪些内在的困难？它们的应对之道是什么？\r\n\r\n在探讨这些问题之前，本书有几个基本假设：第一，近代帝国并不只是征服-统治的等级关系，也不只是一撮人以一个地方、人群为本部向外延申政治影响的工具、实体。其统治者、阶层通常都能够超越狭隘的地区、人群本位，有切实的（当然同时也是自私的）整体考虑；第二，在许多帝国统治者眼中。帝国并不是一次短期投资，而是长期持有的一项事业。因此，凭借武力驾凌一方并不是长久之策。“马上得之，宁可以马上治之乎？”这句话，不止只是陆贾与刘邦才能理解的中国古代智慧，也是所有近代帝国的治国之道；第三，诸帝国的构建模式本身很复杂，并不一定是一个由帝国中心出发对边缘区、社群进行管制的同心圆。\r\n简而言之，近代帝国并不是古代的遗迹，也不是急就章式的多民族、多地域的拼凑之物，而是有正儿八经政治考量的多元政治实体。\r\n书中如此展现对上述问题的思索。引文中将介绍帝国的定义，以及为什么应该研究近代帝国而不是古代帝国。第一章将陈述本书所面对的基本问题和假设——在近代，帝国面临着什么样的挑战，诸帝国又是通过调整哪些政制、政策维度来应对这些挑战。在剩下的第二章至第五章中，将英帝国、法帝国、哈布斯堡王朝-奥地利帝国和俄罗斯帝国作为历史案例，以之来验证本书的基本假设。在结语中，本书主要是将各个帝国的应对做一比较，指出异同。也简略的讨论了帝国民族方略之间的关系、帝国选择各自的方略的依据以及帝国属民对帝国反略的反应。', 12, 1, 2021, 'cover/102.jpg', 0, '2021-12-22 05:40:29', '2021-12-22 05:40:29'),
(103, 'H0006', '9787101115406', '先秦政治思想史', '梁启超', '中华书局', '本书原为1922年梁启超先后在北京政法专门学校和东南大学讲课的内容，经整理出版。本书是梁启超研究先秦思想史的代表作，亦体现了梁启超晚年的文化观和政治思想史。梁氏以中国古代哲学思想的根原为先秦哲学思想的背景，然后从先秦诸子中提出儒、道、墨、法四家，以为先秦诸子的菁华尽在于此。也体现了梁启超晚年的政治思想观。', 12, 1, 2016, 'cover/103.jpg', 0, '2022-01-12 07:34:44', '2022-01-12 07:34:44'),
(9, 'L0001', '9787532739547', '月亮与六便士', '威廉·萨默塞特·毛姆', '上海译文出版社', '《月亮和六便士》说问世后，以情节入胜、文字深刻在文坛轰动一时，人们争相传看。在小说中，毛姆用第一人称的叙述手法，借“我”之口，叙述整个故事，有人认为这篇小说的原型是法国印象派画家高更，这更增加了它的传奇色彩，受到了全世界读者的关注。\r\n\r\n', 1, 1, 2006, 'cover/9.jpg', 1, NULL, '2021-12-29 04:37:06'),
(10, 'L0002', '9787020042494', '小王子', '安东尼·德·圣-埃克苏佩里', '人民文学出版社', '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行星，开始了遨游太空的旅行。他先后访问了六个行星，各种见闻使他陷入忧伤，他感到大人们荒唐可笑、太不正常。\r\n童话描写小王子没有被成人那骗人的世界所征服，而最终找到自己的理想。这理想就是连结宇宙万物的爱，而这种爱又是世间所缺少的。因此，小王子常常流露出一种伤感的情绪。作者圣埃克絮佩里在献辞中说：这本书是献给长成了大人的从前那个孩子。', 1, 1, 2003, 'cover/10.jpg', 1, NULL, '2021-12-28 20:16:49'),
(79, 'L0003', '9780811204811', 'No Longer Human', 'Osamu Dazai', 'New Directions', 'The poignant and fascinating story of a young man who is caught between the breakup of the traditions of a northern Japanese aristocratic family and the impact of Western ideas.\r\n\r\nPortraying himself as a failure, the protagonist of Osamu Dazai\'s No Longer Human narrates a seemingly normal life even while he feels himself incapable of understanding human beings. Oba Yozo\'s attempts to reconcile himself to the world around him begin in early childhood, continue through high school, where he becomes a \"clown\" to mask his alienation, and eventually lead to a failed suicide attempt as an adult. Without sentimentality, he records the casual cruelties of life and its fleeting moments of human connection and tenderness.', 1, 2, 1973, 'cover/79.jpg', 0, '2021-12-01 04:58:28', '2021-12-01 04:58:28'),
(80, 'L0004', '9780062457806', 'They Both Die at the End', 'Adam Silvera', 'Quill Tree Books', 'Adam Silvera reminds us that there’s no life without death and no love without loss in this devastating yet uplifting story about two people whose lives change over the course of one unforgettable day.\r\n\r\nNew York Times bestseller * 4 starred reviews * A School Library Journal Best Book of the Year * A Kirkus Best Book of the Year * A Booklist Editors\' Choice of 2017 * A Bustle Best YA Novel of 2017 * A Paste Magazine Best YA Book of 2017 * A Book Riot Best Queer Book of 2017 * A Buzzfeed Best YA Book of the Year * A BookPage Best YA Book of the Year\r\n\r\nOn September 5, a little after midnight, Death-Cast calls Mateo Torrez and Rufus Emeterio to give them some bad news: They’re going to die today.\r\nMateo and Rufus are total strangers, but, for different reasons, they’re both looking to make a new friend on their End Day. The good news: There’s an app for that. It’s called the Last Friend, and through it, Rufus and Mateo are about to meet up for one last great adventure—to live a lifetime in a single day.\r\nIn the tradition of Before I Fall and If I Stay, They Both Die at the End is a tour de force from acclaimed author Adam Silvera, whose debut, More Happy Than Not, the New York Times called “profound.”', 1, 2, 2018, 'cover/80.jpg', 0, '2021-12-01 05:00:27', '2021-12-01 05:00:27'),
(81, 'L0005', '9780385741279', 'We Were Liars', 'E. Lockhart', 'Ember', 'A beautiful and distinguished family.\r\nA private island.\r\nA brilliant, damaged girl; a passionate, political boy.\r\nA group of four friends—the Liars—whose friendship turns destructive.\r\nA revolution. An accident. A secret.\r\nLies upon lies.\r\nTrue love.\r\nThe truth.\r\n\r\nRead it.\r\nAnd if anyone asks you how it ends, just LIE.', 1, 2, 2018, 'cover/81.jpg', 0, '2021-12-01 05:04:24', '2021-12-01 05:04:24'),
(84, 'L0006', '9780062888341', 'The Stranger in the Lifeboat', 'Mitch Albom', 'Harper', 'What would happen if we called on God for help and God actually appeared? In Mitch Albom’s profound new novel of hope and faith, a group of shipwrecked passengers pull a strange man from the sea. He claims to be “the Lord.” And he says he can only save them if they all believe in him.', 1, 2, 2021, 'cover/84.jpg', 0, '2021-12-01 05:12:17', '2021-12-01 05:12:17'),
(86, 'L0007', '9781492663997', 'Sold on a Monday', 'Kristina McMorris', 'Sourcebooks Landmark', 'An unforgettable novel by Kristina McMorris, inspired by a stunning piece of history.\r\n\r\n2 CHILDREN FOR SALE\r\n\r\nThe sign is a last resort. It sits on a farmhouse porch in 1931, but could be found anywhere in an era of breadlines, bank runs and broken dreams. It could have been written by any mother facing impossible choices.\r\nFor struggling reporter Ellis Reed, the gut-wrenching scene evokes memories of his family’s dark past. He snaps a photograph of the children, not meant for publication. But when it leads to his big break, the consequences are more devastating than he ever imagined.\r\nInspired by an actual newspaper photograph that stunned the nation, Sold on a Monday is a powerful novel of love, redemption, and the unexpected paths that bring us home.', 1, 2, 2018, 'cover/86.jpg', 0, '2021-12-01 05:16:03', '2021-12-01 05:16:03'),
(87, 'L0008', '9787544787062', '文明的边界', '格非', '译林出版社', '格非首部清华文学讲稿，三年“小说叙事研究”课精华\r\n\r\n2018年至2020年，格非在清华大学中文系“小说叙事研究”课上，从19世纪中期以来的小说家里精选出三个案例，讨论一百多年来社会、历史和文化观念的变革。在课程录音与讲义的基础上，整理成这卷珍贵的文学讲稿。\r\n\r\n三位不安的现代隐士，三种带预言性质的伟大作品\r\n《没有个性的人》｜穆齐尔：被二战的炮火惊醒，流亡瑞士\r\n《暗夜行路》｜志贺直哉：一生搬家多达26次\r\n《白鲸》｜麦尔维尔：一直在海洋与陆地、城市与孤岛的生活之间摇摆、\r\n\r\n对乡村文明衰落或城市化兴起引发的问题，尝试作答\r\n对现代文明进程的强烈质疑和反思，是19世纪以来所有伟大小说的共同特征。本书所选的三位小说家，皆是由传统自然过渡到现代文明的居间者。格非条分缕析其作品，尝试对乡村文明衰落或城市化兴起引发的问题,做出理性回答。', 1, 1, 2021, 'cover/87.jpg', 0, '2021-12-01 05:19:26', '2021-12-01 05:19:26'),
(88, 'L0009', '9787559840615', '我身体里的人造星星', '[爱尔兰] 希内德·格利森', '广西师范大学出版社', '★我们的身体当然是神圣的，但它们往往不只属于我们\r\n人可以患病，但不能成为疾病：一个超越病痛抵达艺术永恒的生命故事，一场重新定义自我、救赎自我的疗愈之旅。无论是病痛还是心碎，我们都生活同一张皮囊下，知晓它的脆弱，体味它的真实，争夺它的主权。\r\n★头发、血液、子宫、脸庞，爱与病痛构筑的女性生命星空；母职、艺术、创造、死亡，以书写逃离监禁的一次身体越狱\r\n格利森以自己从小患病的经历出发，结合文学、艺术、历史、社会发展中的女性身体呈现，以手术刀般的笔触书写身体在女性生命经验中的意义，展示出性别与病痛对女性身体主权的定义、侵入和相互抢夺。\r\n★介于文学随笔与社会学之间的书写，浪漫而严谨，温柔且坚定，格利森展现出她身兼作家、说书人与诗人的神奇魅力', 1, 1, 2021, 'cover/88.jpg', 0, '2021-12-01 05:20:50', '2021-12-01 05:20:50'),
(89, 'L0010', '9787510851971', '我为你洒下月光', '简媜', '九州出版社', '★当代华语文坛散文大家简媜写作三十年纪念之作\r\n★这样的书，一生只能写一本，为致敬，也是向过去的一场告别\r\n★如果《水问》是青春之书，《女儿红》是女性之书，《红婴仔》是初生之书，那《我为你洒下月光》就是爱情之书\r\n★数本友人遗赠的手札，带领我们回到那个车马邮件都很慢，一生只够爱一人的年代，见证手工时代刻骨墨缘\r\n★这是一场古典主义的浪漫，从诗经到离骚，从陶渊明到苏东坡，尽显古典风华与文字之美\r\n★这是一场文字的幻术。诗、小说、散文都用上，建构出真实与虚拟交错的世界，安放某些只对作者及她盼望却永远不在的唯一读者才有意义的情怀', 1, 1, 2017, 'cover/89.jpg', 0, '2021-12-01 05:24:01', '2021-12-01 05:24:01'),
(21, 'N0001', '9781784874872', 'The Handmaid\'s Tale', 'Margaret Atwood', 'Vintage Publishing', 'The Republic of Gilead offers Offred only one function: to breed. If she deviates, she will, like dissenters, be hanged at the wall or sent out to die slowly of radiation sickness. But even a repressive state cannot obliterate desire - neither Offred\'s nor that of the two men on which her future hangs.', 8, 2, 2018, 'cover/21.jpg', 0, NULL, '2021-12-28 20:16:00'),
(53, 'N0002', '9787536094857', '第一人称单数', '[日]村上春树', '文治图书·花城出版社', '睽违六年！村上春树2021全新短篇小说集《第一人称单数》。11.18全网现货发售！\r\n当世界不断变迁，唯有故事留住刹那光景。\r\n8篇第一人称叙事小说，重现村上式奇幻青春物语。\r\n再不相见的男女···名为村上春树的角色···偷人姓名的品川猴···夏日气息与摇滚乐……\r\n★村上回归第一人称叙述，代入感强。尽显故事的魔力！\r\n村上作品中《挪威的森林》《且听风吟》《寻羊冒险记》都以第一人称写成，作家更善用“第一人称”叙事写作。8篇第一人称叙事小说，重现村上式奇幻青春物语。村上回归初心之作！作家本人直言“再一次站在最初的位置上，迎接全新挑战”——村上春树', 8, 1, 2021, 'cover/53.jpg', 1, NULL, '2021-12-29 17:54:13'),
(56, 'N0003', '9787559458001', '冷漠的人', '阿尔贝托•莫拉维亚', '江苏凤凰文艺出版社', '长久以来，这个来自上流社会的年轻人深受精神折磨。面对家庭中的变故，他想表现出某种情绪，却发现自己只能感受到冷漠。在痛苦怀疑之中，他完成了对自己的审判：\r\n“这才是我真正的罪行，我犯的是冷漠罪。”\r\n―――――\r\n将近一个世纪过去，《冷漠的人》讲述的情感，依旧与大多数现代人感受到的一样，是人对于庸常生活的厌倦，对于无法行动的痛苦，对于真情实感的探求……', 8, 1, 2021, 'cover/56.jpg', 0, NULL, NULL),
(57, 'N0004', '9787020163380', '鸡蛋的胜利', '【美】舍伍德·安德森', '人民文学出版社', '美国现代文学的先驱和教父\r\n海明威、福克纳、菲茨杰拉德、沃尔夫、斯坦贝克、塞林格、卡佛、奥兹……共同的老师\r\n舍伍德·安德森经典短篇小说集首次中文译介.\r\n《鸡蛋的胜利》是舍伍德·安德森的一部短篇小说集，共包含14个短篇，其中《鸡蛋》一篇尤为知名，讲的是一个普通家庭一心追求“美国梦”却以失败而告终的故事。鸡蛋在文中象征着人不可与之抗衡的命运，为了人过上更好的生活，父亲自婚后就相信白手起家就能发家致富的成功之道，从开始经营养鸡场到后来开站前餐馆，一直在奋发向上，但是天意弄人，最后竟然连一枚鸡蛋也“征服”不了，无能地为人耻笑。在人与命运的斗争中，命运可谓大获全胜。这篇读来既好笑又心酸的故事结构精巧，一气呵成，彰显了安德森非凡的技艺和匠心。其他篇目也多有佳作，主题各异，基本涵盖了安德森主要的写作主题。', 8, 1, 2021, 'cover/57.jpg', 0, NULL, NULL),
(58, 'N0005', '9787530221679', '失望的总和', '[英] 安娜·霍普', '北京十月文艺出版社', '三十岁的人生并不尽如人意，她们有时觉得不该失去的已经失去，该得到的却未得到。但那又如何。曾经追求浪漫、艺术、独立的女孩们，仍然像五月的野玫瑰一样活得肆意、盛大。\r\n假如快乐有个总和，可以被挥霍殆尽，那么失望是否也有个总和，每个人都能够走到尽头？\r\n汉娜，令人艳羡的女强人，总是妥善地规划自己的事业、家庭的未来，却发现育儿这件事规划不来……\r\n丽萨，美丽叛逆的文艺青年，相信自己值得更好的，却始终负担不起理想中的生活……\r\n凯特，名校毕业的优等生，耀眼的学历没有妨碍她嫁给平凡的丈夫，却妨碍她融入他的家庭……\r\n本书是三个女人的故事，也是她们在三十出头的年纪交出的人生答卷。', 8, 1, 2021, 'cover/58.jpg', 1, NULL, '2022-01-12 17:57:02'),
(77, 'N0006', '9781101885680', 'Go Tell the Bees That I Am Gone: A Novel (Outlander)', 'Diana Gabaldon + Follow', 'Delacorte Press', 'Jamie Fraser and Claire Randall were torn apart by the Jacobite Rising in 1746, and it took them twenty years to find each other again. Now the American Revolution threatens to do the same.\r\nIt is 1779 and Claire and Jamie are at last reunited with their daughter, Brianna, her husband, Roger, and their children on Fraser’s Ridge. Having the family together is a dream the Frasers had thought impossible.\r\nYet even in the North Carolina backcountry, the effects of war are being felt. Tensions in the Colonies are great and local feelings run hot enough to boil Hell’s teakettle. Jamie knows loyalties among his tenants are split and it won’t be long until the war is on his doorstep.\r\nBrianna and Roger have their own worry: that the dangers that provoked their escape from the twentieth century might catch up to them. Sometimes they question whether risking the perils of the 1700s—among them disease, starvation, and an impending war—was indeed the safer choice for their family.\r\nNot so far away, young William Ransom is still coming to terms with the discovery of his true father’s identity—and thus his own—and Lord John Grey has reconciliations to make, and dangers to meet . . . on his son’s behalf, and his own.', 8, 2, 2021, 'cover/77.jpg', 0, '2021-12-01 04:54:20', '2021-12-01 04:54:20'),
(78, 'N0007', '9780399593437', 'Seven Stones to Stand or Fall: A Collection of Outlander Fiction', 'Diana Gabaldon', 'Bantam', 'Among the seven spellbinding pieces there is “The Custom of the Army,” which begins with Lord John Grey being shocked by an electric eel and ends at the Battle of Quebec. Then comes “The Space Between,” where it is revealed that the Comte St. Germain is not dead, Master Raymond appears, and a widowed young wine dealer escorts a would-be novice to a convent in Paris. In “A Plague of Zombies,” Lord John unexpectedly becomes military governor of Jamaica when the original governor is gnawed by what probably wasn’t a giant rat. “A Leaf on the Wind of All Hallows” is the moving story of Roger MacKenzie’s parents during World War II. In “Virgins,” Jamie Fraser, aged nineteen, and Ian Murray, aged twenty, become mercenaries in France, no matter that neither has yet bedded a lass or killed a man. But they’re trying. . . . “A Fugitive Green” is the story of Lord John’s elder brother, Hal, and a seventeen-year-old rare book dealer with a sideline in theft, forgery, and blackmail. And finally, in “Besieged,” Lord John learns that his mother is in Havana—and that the British Navy is on their way to lay siege to the city.\r\nFilling in mesmerizing chapters in the lives of characters readers have followed over the course of thousands of pages, Gabaldon’s genius is on full display throughout this must-have collection.', 8, 2, 2018, 'cover/78.jpg', 0, '2021-12-01 04:56:01', '2021-12-01 04:56:01'),
(82, 'N0008', '9781501110368', 'It Ends With Us: A Novel', 'Colleen Hoover', 'Atria', 'The newest, highly anticipated novel from beloved #1 New York Times bestselling author, Colleen Hoover. Sometimes it is the one who loves you who hurts you the most.', 8, 2, 2016, 'cover/82.jpg', 0, '2021-12-01 05:07:49', '2021-12-01 05:07:49'),
(83, 'N0009', '9781984818416', 'Wish You Were Here', 'Jodi Picoult', 'Ballantine Books', 'Diana O’Toole is perfectly on track. She will be married by thirty, done having kids by thirty-five, and move out to the New York City suburbs, all while climbing the professional ladder in the cutthroat art auction world. She’s an associate specialist at Sotheby’s now, but her boss has hinted at a promotion if she can close a deal with a high-profile client. She’s not engaged just yet, but she knows her boyfriend, Finn, a surgical resident, is about to propose on their romantic getaway to the Galápagos—days before her thirtieth birthday. Right on time.\r\n\r\nBut then a virus that felt worlds away has appeared in the city, and on the eve of their departure, Finn breaks the news: It’s all hands on deck at the hospital. He has to stay behind. You should still go, he assures her, since it would be a shame for all of their nonrefundable trip to go to waste. And so, reluctantly, she goes.', 8, 2, 2021, 'cover/83.jpg', 0, '2021-12-01 05:09:56', '2021-12-01 05:09:56'),
(100, 'N0010', '9787542669964', '夜晚的潜水艇', '陈春成', '上海三联书店', '《夜晚的潜水艇》 是陈春成的首部小说集。九个故事，游走于旧山河与未知宇宙间，以瑰奇飘扬的想象、温厚清幽的笔法，在现实与幻境间辟开秘密的通道：海底漫游的少年、深山遗落的古碑、弥散入万物的字句、云彩修剪站、铸剑与酿酒、铁幕下的萨克斯、蓝鲸内的演奏厅…… 关于藏匿与寻找、追捕与逃遁，种种无常中的一点确凿，烈日与深渊间的一小片清凉。陈春成的小说世界，是可供藏身的洞窟，悬浮于纸上的宫殿，航向往昔的潜艇。', 8, 1, 2020, 'cover/100.jpg', 0, '2021-12-01 05:48:24', '2021-12-01 05:48:24'),
(31, 'P0001', '9789864774364', '内伤的观望者', '诗人eL', '商周出版', '《內傷的觀望者》裡面收錄了詩人eL 60首最新創作的詩句，並且隨著詩句的流動穿插了37幅以詩為名的攝影照片。\r\n\r\n鴻鴻、周天派、林婉瑜、孫梓評、孫維民、徐珮芬、陳子謙、黃廣青、鍾國強\r\n台灣、香港、新加坡及馬來西亞詩人相惜推薦\r\n', 11, 1, 2018, 'cover/31.jpg', 0, NULL, NULL),
(32, 'P0002', '9789861795812', '脆弱练习', '陈繁齐', '大田出版社', '《脆弱練習》是爬梳內心的漫長過程，用文字紀錄下一次次情感裡的疼痛、傷口、失望、索求......彷彿是一場龐大而無盡的練習。在練習的過程裡，試著讓自己變得成熟、或真實、或精準、或合適。或者，僅僅是確認自己的平庸。\r\n\r\n陳繁齊說：\r\n「......也有些時候，我不完全知道自己在學什麼，只知道我應該持續下去，那些動作，彷彿挾帶著些許的運氣──像是跳繩要連續過300下、畫直線的手要求沒有震顫。好像都告訴我，這次不行，就再試一次，總會有一些結果。」\r\n\r\n因為沒有天分，所以關於愛或被愛，都還需要更努力一些。\r\n', 11, 1, 2019, 'cover/32.jpg', 0, NULL, NULL),
(33, 'P0003', '9789869817004', '洁癖', '林梦娲', '逗点文创结社', '薄冰系詩人林夢媧首部詩集, 66首努力維持理智的詩句.\r\n我們討論潔癖的果，甚少追究潔癖的因由：他們到底看見什麼？輕微如眼前閃過的飛蚊細沫，嚴重如沾滿雙手的猩紅愧疚，突然侵犯知覺系統的物事，針刺蟻咬般反覆提醒：你就要變髒。\r\n \r\n　　然而，何謂乾淨、何謂髒？「乾淨是暫時的／我們要一直意識到／自己的髒／這樣遇見同樣髒的人時／才能安靜地／互相凝視／我們的凝視／還很乾淨」。詩人林夢媧以冷靜筆觸，將傷痛之波濤凝固成冰，封藏情感關係中的索討及慰撫，「告訴自己／不要怕痛／在被拋棄之前／就對著鏡子／把頭髮拔光」。\r\n \r\n　　「只想問問黑暗／都那麼髒了／能不能活下去？」\r\n \r\n　　薄冰系詩人林夢媧首部詩集，收錄66首努力維持理智的詩句，是乾淨與髒的攻訐辯證，亦是秩序與混沌的水乳交融。打開書頁，沁著寒氣，一邊閱讀卻聽見腳下冰層裂解，見證愛與暴力吞噬心神的不安、不寧。\r\n', 11, 1, 2019, 'cover/33.jpg', 0, NULL, NULL),
(34, 'P0004', '9789865070342', '瘦骨嶙峋的愛', '李豪', '采实文化', '愛之所以消瘦，不是因為心裡沒有\r\n而是因為曾經太渴望了\r\n廢鬱詩人──李豪最新力作\r\n\r\n　　在網路傳抄不休、引起上萬讀者共鳴的《自討苦吃的人》後， \r\n　　新生代詩人李豪的第二部作品， \r\n　　60首全新創作，60個刻劃現代人遍體鱗傷的現場──\r\n', 11, 1, 2019, 'cover/34.jpg', 0, NULL, NULL),
(35, 'P0005', '9789861795607', '雪', '任明信', '大田出版社', '他的诗独具一格，看似轻盈的文字，两三行，却说出了一个哀伤的宇宙，他的诗，无论何时读来，都引起一场感性的风，吹得我们眼睛无法睁开，甚至默默滴泪与轻叹。', 11, 1, 2019, 'cover/35.jpg', 0, NULL, NULL),
(36, 'P0006', '9789574357963', '夜里飞行', '寒鸦', '注异文库', '這是詩人寒鴉的第一本作品《夜裡飛行》，讀者能夠從中尋找到那些貼近自己的經歷，或許也能看見雷同的反應，處理。在夜間飛行的寒鴉想告訴你，傷心來自錯位，因此別為找不到對的位置傷心而自責；告訴你愛的犧牲、關係的諸多形式；展示一種可能：我們經歷過的無理，可能也曾是自己選擇的甘之如飴。能扣緊眾生心弦的，往往只是最平凡的傷心。', 11, 1, 2019, 'cover/36.jpg', 0, NULL, NULL),
(37, 'P0007', '9789869653275', '夜行性动物', '徐珮芬', '啟明出版', '在缺乏光線的世界裡，用聽覺、嗅覺、觸覺，甚至味覺找尋你，演化倒退，行為顛倒，我是野生，將眼盲，活躍於不見於光的關係裏，警覺著恐懼著消磨著，等待出沒，永無止盡。\r\n\r\n徐珮芬第四本詩集。 \r\n\r\n收錄三十二作，呢喃短句交錯其中，是詩人穿走生活，竭盡求生，數著日子、看著電視，任慾望與不安湧動，思緒混亂致使語言失序，詩句時而放縱時而噤聲，眼前一切形變扭曲，甚至忘了自己的模樣，成了白晝中的失能者，夜裏問著：「你不覺得，這就是我們的Happy ending嗎？」', 11, 1, 2019, 'cover/37.jpg', 0, NULL, NULL),
(38, 'P0008', '9789869533034', '好人', '宋尚纬', '启明出版', '宋尚緯第五本詩集，寫在詩人走進人生、面對世界的無奈之後，收錄 2017年的三十六首新作。《好人》寫生活的種種必然和逼不得已，以至人與人之間的互相傷害、好人與壞人之間的矛盾。詩句從溫柔的視角，安靜凝視著一顆顆渴望成為好人而痛苦掙扎的心，「每個人都是好人，還好好地活著的，都是好人」。', 11, 1, 2018, 'cover/38.jpg', 0, NULL, NULL),
(28, 'R0001', '9781118869574', 'Christian Theology : An Introduction', 'Alister E. McGrath', 'John Wiley & Sons Inc', 'Christian Theology: An Introduction, one of the most internationally-acclaimed Christian theology textbooks in use, has been completely rewritten for the 6th edition. It now features new and extended material and companion resources, ensuring it retains its reputation as the ideal introduction for students. * A new edition of the bestselling Christian theology textbook to celebrate its 25th anniversary * Rewritten throughout for exceptional clarity and accessibility, and adds substantial new material on the Holy Spirit * Features increased coverage of postcolonial theology, and feminist theology, and prodigious development of world theology * Increases the focus on contemporary theology to complement the excellent coverage of historical material ', 3, 2, 2016, 'cover/28.jpg', 0, NULL, NULL),
(29, 'R0002', '9780802412706', 'The 5 Love Languages\r\n', 'Gary Chapman', 'Moody Publishers', 'Falling in love is easy. Staying in love--that\'s the challenge. How can you keep your relationship fresh and growing amid the demands, conflicts, and just plain boredom of everyday life?\r\nIn the #1 New York Times international bestseller The 5 Love Languages, you\'ll discover the secret that has transformed millions of relationships worldwide. Whether your relationship is flourishing or failing, Dr. Gary Chapman\'s proven approach to showing and receiving love will help you experience deeper and richer levels of intimacy with your partner--starting today.\r\nThe 5 Love Languages is as practical as it is insightful. Updated to reflect the complexities of relationships today, this new edition reveals intrinsic truths and applies relevant, actionable wisdom in ways that work.', 3, 2, 2015, 'cover/29.jpg', 0, NULL, NULL),
(94, 'R0003', '9787208091139', '宗教的起源与发展', '麦克斯·缪勒', '上海人民出版社', '本书是缪勒开创宗教学的重要代表著作之一。宗教的产生和发展沿着三条基本线索展开。宗教是领悟无限的主观才能。无限观念是一个过程。比较的研究方法是宗教学研究中最有价值的方法。\r\n宗教是怎样产生的？又是怎样发展的？它在人的心灵中有何基础？这个主题是宗教学开创时期学者们最热衷的课题。作者认为，宗教产生和发展是沿着三条基本线索展开的，这就是从自然对象中形成物质宗教，从人类自身中形成人类宗教，然后在心理宗教中合流。', 3, 1, 2010, 'cover/94.jpg', 0, '2021-12-01 05:33:48', '2021-12-01 05:33:48'),
(95, 'R0004', '9787544350839', '神的历史', '[英]凯伦·阿姆斯特朗', '海南出版社', '《神的历史》是2007年7月1日海南出版社出版的图书，作者是(英)凯伦·阿姆斯特朗。作者以她切身的宗教修持体验和渊博的宗教史知识，试图在对照犹太教、基督教和伊斯兰教一神观念演变的基础上，重新反省检讨西方这各代表终极真实与意义的符号。', 3, 1, 2007, 'cover/95.jpg', 0, '2021-12-01 05:35:31', '2021-12-01 05:35:31'),
(96, 'R0005', '9780805447538', 'Experiencing God', 'Henry T. Blackaby, Richard Blackaby, Claude V. King', 'B&H Books', 'The Experiencing God ministry is even more vibrant today than when it began. As it continues to rise, and the world continues to change, the Experiencing God book has been revised and expanded with more than seventy percent of its material newly written. A modern classic that has sold millions of copies worldwide, Experiencing God is based on seven Scriptural realities that teach us how to develop a true relationship with the Creator.', 3, 2, 2008, 'cover/96.jpg', 0, '2021-12-01 05:38:22', '2021-12-01 05:38:22'),
(97, 'R0006', '9781878424310', 'The Four Agreements', 'Don Miguel Ruiz', 'Amber-Allen Publishing, Incorporated', 'In The Four Agreements, bestselling author don Miguel Ruiz reveals the source of self-limiting beliefs that rob us of joy and create needless suffering. Based on ancient Toltec wisdom, The Four Agreements offer a powerful code of conduct that can rapidly transform our lives to a new experience of freedom, true happiness, and love.', 3, 2, 2018, 'cover/97.jpg', 0, '2021-12-01 05:42:44', '2021-12-01 05:42:44'),
(11, 'S0001', '9787544716888', 'Boy\'s Life 奇风岁月', 'Robert McCammon', 'YiLin Press', 'Boy\'s Life is a revered 1991 novel by Robert McCammon set in 1964 small-town Alabama.', 5, 1, 2011, 'cover/11.jpg', 0, NULL, '2021-12-29 04:34:39'),
(12, 'S0002', '9787510881145', '网内人', '陈浩基', '九州出版社', '一场现代科技社会的罪与罚，一出后真相时代的人物众生相。每个进到互联网中的人都是潜在的主谋、帮凶和受害者。', 5, 1, 2019, 'cover/12.jpg', 0, NULL, NULL),
(13, 'S0003', '9787513326858', '东方快车谋杀案：精装纪念版', '阿加莎·克里斯蒂', '新星出版社', '《东方快车谋杀案》（Murder on the Orient Express）是英国作家阿加莎·克里斯蒂创作的侦探小说，属于侦探赫尔克里·波洛系列，由英国柯林斯犯罪俱乐部于1934年1月1日首次出版。\r\n该小说围绕发生在豪华列车“东方快车”上的一起谋杀案，讲述了大侦探波洛在杀机四伏的列车上拨开重重迷雾，最终在十二个嫌疑人中锁定真凶的故事。小说探讨了法治不健全的情况下的私刑寻仇，人情正义与法理争议之间的重重矛盾。', 5, 1, 2017, 'cover/13.jpg', 0, NULL, '2022-01-12 17:52:47'),
(14, 'S0004', '9787513340625', '扫鼠岭', '呼延云', '新星出版社', '十年前。西郊发生导致四人死亡的连环凶杀案，当未满十八岁的周立平被捕之后，所有人都认定他就是真凶，只有在专案组协助调查的警官大学学生林香茗坚持认为，周立平只对最后一起案件负责。周立平最终只被判处有期徒刑十年。\r\n\r\n十年后。深夜的扫鼠岭上，废弃地铁站的隧道风亭里燃起熊熊烈火， 消防队员在风亭底部发现了多具尸体，监控视频、现场物证都显示，制造了这起惨案的正是被释放不久的周立平，这一回，又有谁来替他洗清不白之冤呢……', 5, 1, 2020, 'cover/14.jpg', 0, NULL, NULL),
(42, 'S0005', '9787020168248', '心灵侦探城塚翡翠\r\n', '[日] 相泽沙呼', '人民文学出版社 ', '在能够通灵的女子——城塚翡翠的帮助下，推理小说作家香月史郎协助警察破获了一起又一起杀人案。城塚翡翠靠灵视获知凶手，香月史郎以此倒推作案手法，构建推理。随着他们的合作越来越密切，死亡也在慢慢地向城塚翡翠靠近……', 5, 1, 2021, 'cover/42.jpg', 0, NULL, '2022-01-12 08:22:42'),
(43, 'S0006', '9787555912057', '全员嫌疑人', '[日] 大山诚一郎', '河南文艺出版社', '探员和户宋志有一种特殊能力，能让身边之人的推理能力急速提高。与世隔绝的度假山庄，死者留下诡异血十字。无法逃脱的地下展厅，黑暗中传来惊声尖叫。高空飞行的国际航班，乘客悄无声息地死去……一桩桩密闭空间内的谋杀，案发现场全员都是嫌疑人！在和户特殊能力的影响下，嫌疑人们不断展开推理，不断互相推翻。究竟谁能成为破解真相的名侦探，谁又是隐藏至深的真凶？', 5, 1, 2021, 'cover/43.jpg', 0, NULL, NULL),
(44, 'S0007', '9787555911425', '字母表迷案', '[日] 大山诚一郎', '河南文艺出版社', '一座神秘的公寓，不定期举行推理合战。红茶、曲奇，搭配寒意逼人的谜案，与案件相关的字母似乎是重要线索。一群特殊的房客，联手组成侦探团，秘密追踪警视厅也难以锁定的幕后真凶。', 5, 1, 2021, 'cover/44.jpg', 0, NULL, NULL),
(45, 'S0008', '9787532175697', '绝对不在场证明', '[日] 大山诚一郎', '上海文艺出版社 ', '本书是本格推理大奖得主大山诚一郎的短篇小说集，包含七个短篇，几乎涵盖了所有不在场证明诡计类型。 \r\n\r\n有一间古怪的钟表店，不仅售卖钟表，还兼营着一项“代客推翻不在场证明”的业务，一次收费五千日元。死而复生的被害人、睡梦中的凶杀案、雪地上的三行脚印……凶手利用时间的漏洞，制造了一个又一个几乎完美的不在场证明！束手无策的警察找到了钟表店店主美谷时乃，她的登场能否给扑朔迷离的案情带来一线专机？', 5, 1, 2020, 'cover/45.jpg', 0, NULL, NULL),
(59, 'S0009', '9787020128495', '体育馆之谜', '[日]青崎有吾', '人民文学出版社', '大雨滂沱的一天 ，风之丘高中的老体育馆内发生了一起命案。\r\n现场是密室状态，当时唯一在场的乒乓球队队长被当作了嫌疑犯——\r\n乒乓球队队员柚乃为解救队长，向天才少年里染天马求救。\r\n然而被誉为天才的里染竟然是一名住在学校里的无用宅男？！\r\n校园案件与被卷入其中的几名高中生的命运将朝着怎样的方向发展？\r\n注意：当帷幕升起，便是好戏开场。', 5, 1, 2017, 'cover/59.jpg', 0, NULL, NULL),
(60, 'S0010', '9787020139378', '图书馆之谜', '[日]青崎有吾', '人民文学出版社', '《图书馆之谜》是“里染天马系列”的第三部长篇，也是青崎有吾的巅峰之作。《图书馆之谜》讲述了某日图书馆开馆之际，图书管理员在图书馆的二楼发现了一名大学生的尸体，以及作为凶器的《人之临终画卷》一书。被害人留下了两条死亡信息——地毯上画着的一个“く”字，以及尸体身边的《遥控刑警》——封面上的一名主角被圈了起来。两条死亡信息都直指图书管理员“久我山”，然而里染却坚持死亡信息没有任何意义。这次里染从尸体裤子口袋中的美工刀，已经几乎将犯人的形象描绘得八九不离十了，另外通过勘查现场的痕迹，他得出了最终答案：“一目了然的逻辑，给出了最好的解答。一个一个的线索是很脆弱的，但是把所有线索有机地结合在一起，就会成为不可撼动的答案。”\r\n请相信，你与书中人物所看到的谜团、线索一致，你所拥有的信息与里染天马是对等的，何不尝试当一回侦探？\r\n\r\n', 5, 1, 2018, 'cover/60.jpg', 0, NULL, NULL),
(61, 'S0011', '9787020139385', '水族馆之谜', '[日] 青崎有吾', '人民文学出版社', '暑假期间，横滨的水族馆里发生了一起案件。\r\n好在现场只有十一名嫌疑人，警察信心满满地开始一一问询。\r\n然而一个小时之后，三名警察沉浸在了谜一般的沉默中……\r\n十一名嫌疑人都有不在场证明。\r\n也就是说，所有人都被排除了嫌疑！\r\n看来，这次也只好请“那个人”出马了——', 5, 1, 2018, 'cover/61.jpg', 1, NULL, '2022-01-12 04:53:50'),
(62, 'S0012', '9787020148233', '风之丘五十元硬币之谜', '[日]青崎有吾', '人民文学出版社', '“里染天马系列”的一部短篇小说集\r\n六个短篇推理故事，将“里染天马系列”三部长篇串联起来\r\n本书将为读者解答：\r\n针宫理惠子为什么把头发染成了黑色？\r\n她为什么愿意在考试的时候帮里染天马？\r\n里染镜华到底是什么人？\r\n……\r\n以及里染天马这个谜之人物的十万个疑难杂症之一二。', 5, 1, 2019, 'cover/62.jpg', 0, NULL, NULL),
(63, 'S0013', '9787513312981', '敲响密室之门', '青崎有吾', '新星出版社', '请问哪位才是侦探？\r\n不好意思，我们两位都是。\r\n没有门铃只凭敲门拜访的侦探事务所，既是搭档又是对手的两位年轻侦探，兼职做饭打扫的美少女高中生，零食不离口的女警，还有定期出现在旧书店的神秘人……一群看似古怪的人，却让狡猾的凶手无处遁形。专攻动机分析的片无冰雨与专注研究作案手法的御殿场倒理，哪怕是让人毫无头绪的案件，两位分工明确的侦探也能通过天衣无缝的合作和默契来解决！', 5, 1, 2017, 'cover/63.jpg', 0, NULL, NULL),
(64, 'S0014', '9787513345781', '煞风景的早间首班车', '[日] 青崎有吾', '新星出版社', '青春是由尴尬编织的密室\r\n日本新锐推理作家青崎有吾短篇集\r\n蜜瓜汽水般清甜的日常之谜\r\n缜密的观察力 扑面的氛围感\r\n五部“青春密室剧”开始啦！', 5, 1, 2021, 'cover/64.jpg', 0, NULL, NULL),
(70, 'S0015', '9787513326971', '解体诸因', '[日] 西泽保彦', '新星出版社', '做什么事都有原因，比如将一个人置于死地。之后呢？还有更凶残、更极端、十恶不赦、即使很麻烦还是有很多人要做、就两个字但我不能明说的那件事。\r\n纽约有八百万人口，有八百万个故事，有八百万种死法……可能还有八百万个做那件事的理由？！\r\n但这本书不是布洛克写的，推理名家西泽保彦的超强脑洞，完美诠释“解体”这么高的犯罪成本，凶手们为什么要一次次地支付。', 5, 1, 2017, 'cover/70.jpg', 0, '2021-11-22 23:38:40', '2021-11-22 23:38:40'),
(15, 'Sc001', '9780307424341', 'A general theory of love', 'Thomas Lewis, Fari Amini, Richard Lannon', 'Random House', 'A General Theory of Love is a book about the science of human emotions and biological psychiatry. The book examines the phenomenon of love and human connection from a combined scientific and cultural perspective. ', 4, 2, 2000, 'cover/15.jpg', 0, NULL, NULL),
(20, 'Sc002', '9780495558286', 'Fundamentals of Analytical Chemistry 9th Edition', 'Stanley Crouch, Douglas Skoog, F. Holler, Donald West', 'Cengage Learning, Inc', 'Known for its readability and systematic, rigorous approach, this fully updated Ninth Edition of FUNDAMENTALS OF ANALYTICAL CHEMISTRY offers extensive coverage of the principles and practices of analytic chemistry and consistently shows students its applied nature. The book\'s award-winning authors begin each chapter with a story and photo of how analytic chemistry is applied in industry, medicine, and all the sciences. To further reinforce student learning, a wealth of dynamic photographs by renowned chemistry photographer Charlie Winters appear as chapter-openers and throughout the text. ', 4, 2, 2013, 'cover/20.jpg', 0, NULL, NULL),
(90, 'Sc003', '9787511055385', '她来了请准备', '澳] 优米·斯泰恩斯, [澳] 梅丽莎·康, [英] 珍妮·拉瑟姆', '海豚出版社', '一本比妈妈讲得还全的月经小百科，风靡11个国家和地区，被译为中、德、法、韩、俄、西班牙等多种语言，适合9-15岁青春期女孩阅读。\r\n书中以一种好玩、坦率、活泼、时尚的方式，通过科普女孩青春期身体结构的变化、相关月经用品的用法，以及在日常生活中如何应对各种突发状况等，解答青春期女孩遇到的各种月经问题。\r\n\r\n主持少女杂志医学专栏20多年的青春期医生为女孩们贴心讲解月经这件事：初次月经的预兆、上学期间如何准备月经包、弄脏了衣服怎样求助，如何与爸爸或者男同学谈论月经，感觉不适时如何大方表达……书中还有从几千封来信中挑选出的，来自世界各地女生的真实月经故事，帮助女孩们轻松应对月经的到来。\r\n\r\n每个人的身体都是独一无二的。月经不仅是正常的女性生理现象，更是成长的重要里程碑。希望女孩们摆脱月经羞耻，学会与月经和平相处，更自信地面对自己的人生。', 4, 1, 2021, 'cover/90.jpg', 0, '2021-12-01 05:25:59', '2021-12-01 05:25:59'),
(91, 'Sc004', '9787569103465', '复杂生命的起源', '[英] 尼克·莱恩', '贵州大学出版社', '地球生命在地球形成约5亿年后就已出现，然而在这之后的20亿年内，生命一直停滞在简单的细菌水平。在大约20亿~15亿年前，一种拥有精细内部结构和空前能量代谢水平的复杂细胞一跃而出。这份复杂性遗传给了大树和蜜蜂，也遗传给了人类中的你和我。我们与蘑菇有着天壤之别，但在显微镜下观察到的细胞又如此相似。从有性生殖到细胞衰老再到细胞凋亡，复杂生命共有的一套细胞特征在不同的物种间有着惊人的相似程度。生命为什么是现在这个样子？在40亿年的漫长岁月中，从简单的细菌到令人敬畏的复杂生命，这样的演化飞跃事件为何只发生了一次？不得不承认，在生物学的核心地带，横亘着一个巨大的认知黑洞。\r\n生命究竟为何沿着这么令人困惑的路径演化？生物化学家尼克·莱恩从生物能量角度，交给了我们一把有望解开生物起源之谜的钥匙。', 4, 1, 2020, 'cover/91.jpg', 0, '2021-12-01 05:27:48', '2021-12-01 05:27:48'),
(92, 'Sc005', '9787544787802', '流行病的故事', '[美国] 索尼娅·沙阿', '译林出版社', '流行病在人类的DNA中一次次留下印记\r\n它改变了人类的行为模式，塑造着人类的文明进程\r\n流行病，让我们成为人类\r\n\r\n过去数十年来，我们拥抱着工业化与全球化带来的全新生活方式，也比以往任何时候 更能感受到流行病的存在。然而，我们对流行病的认知充斥着误解、轻视或恐惧。\r\n在《流行病的故事》中，屡获大奖的科普作家索尼娅·沙阿向我们展现了关于流行病鲜为人知的真相，深刻揭示了暗藏在每次疫情背后的气候、社会、文化等因素。流行病侵害着人类健康，有时甚至令国家陷入危机。但另一方面，它也改变了人类的进化轨迹，塑造了人类的行为与文明。', 4, 1, 2021, 'cover/92.jpg', 0, '2021-12-01 05:29:34', '2021-12-01 05:29:34'),
(93, 'Sc006', '9787559655417', '不可思议的人体', '[日] 茨木保', '北京联合出版公司', '☆ 媲美《工作细胞》的漫画人体百科，从零开始的解剖生理学\r\n\r\n日本临床医生茨木保历时三年，以“人是什么”为主题，用搞笑漫画将人体的构造与功能娓娓道来。为什么胃不会溶解自己？为什么人类的阴茎没有骨头？乳腺原来是由汗腺进化而来？朝夕相处的身体，也有不为人知的秘密！', 4, 1, 2021, 'cover/93.jpg', 0, '2021-12-01 05:31:03', '2021-12-01 05:31:03'),
(16, 'Se001', '9787300268729', '拖延心理学', 'S.J.斯科特', '中国人民大学出版社', '本书作者从心理学视角深刻剖析了拖延顽疾背后的八大心理因素，并通过七步法助你克服常常阻碍你实现目标的坏习惯，让拖延不再掌控你的生活。\r\n本书从日常生活中容易拖延的具体事项入手，每天致力于做一些小的改进，您就可以尝试着一点点摆脱拖延的困扰。', 6, 1, 2019, 'cover/16.jpg', 1, NULL, '2021-12-29 17:51:29'),
(17, 'Se002', '9787521711684', '数字思维', '阿林多·奥利维拉', '中信出版社', '生活在数字时代的人应该了解数字思维。数字人尽管还没有到来，很多未来学家已经将其当做研究的主攻方向。如果说《数字化生存》是在吹响数字时代的号角，那么，这本《数字思维》则将人工智能时代的人类畅想又向前推进了一步。', 6, 1, 2020, 'cover/17.jpg', 0, NULL, NULL),
(19, 'Se003', '9787508633800', '投资最重要的事', '[美] 霍华德·马克斯', '中信出版社', '《投资最重要的事》倾注了作者一生的经验和研究，阐述了成功投资的秘诀，以及足以摧毁资本或断送职业生涯的错误。作者摘录备忘录中的段落阐明自己的思想，以亲身经历详细阐述了其投资理念的发展历程，充分肯定了投资的复杂性和金融领域的危险性。作者凭借对当今动荡市场的深刻见解，奉献出一部半自传、半信条性质的书籍，为读者提供了广阔的看点。\r\n本书中作者详细阐述了“第二层次思维”、价格/价值关系、耐心等待机会、以及多元化投资等概念，对自身的决策以及偶尔的失误做出了坦诚的评价，为读者进行批判性思考、风险评估、建立投资策略提供了宝贵的经验教训。作者鼓励投资者做“逆向投资者”，明智地判断市场周期，采取大胆而谨慎的行动获取收益。最重要的事是什么？成功的投资有赖于同时对各个方面保持密切关注。本书中提到的每个主题，都是最重要的事。', 6, 1, 2012, 'cover/19.jpg', 0, NULL, NULL),
(30, 'Se004', '9787545547795', '当你又忙又美，何惧患得患失', '梁爽', '天地出版社', '不行就分，喜欢就买，最坏不过重启试试，没有过不去的坎。\r\n看到手机电量不足10%，急也没用，你还得一格一格地充电，人生也是。\r\n二十多年的光景足够慢炖一个姑娘，无须八角茴香，文火收汤。\r\n“又忙又美”是梁爽开给所有女性的一剂处方药，专治你的纠结、拎不清、玻璃心和想太多！按章服用，你将减少80%的拧巴！ \r\n忙，不是只顾工作，而是修炼无论离开谁、你都能活得更精彩的能力；\r\n美，不是空有皮囊，而是懂得欣赏自己、享受生活，敢于追求漂亮的人生。\r\n当你开始追求又忙又美的生活，才能构筑自己想要的安全感，孵化出正确的价值观，对自己的能力、感情和人际关系更有信心，便会和患得患失的自己渐行渐远。\r\n女人要记住：独立才是女人最好的铠甲，当你依附别人，容易失去一切！', 6, 1, 2020, 'cover/30.jpg', 0, NULL, NULL),
(54, 'Se005', '9787543984028', '愚蠢心理学', '[法] 约翰-弗朗斯瓦·马里昂', '上海科学技术文献出版社', '当所有的书都在教人学聪明，这本书来教你看愚蠢！\r\n学聪明，不如学愚蠢。避开所有愚蠢就是绝顶聪明！\r\n这是一本专门分析愚蠢心理的书。\r\n愚蠢不可避免，而且无处不在！\r\n要想抵制愚蠢，就得先了解愚蠢！', 6, 1, 2021, 'cover/54.jpg', 0, NULL, NULL),
(55, 'Se006', '9787505752153', '好心情练习手册', '[日] 西多昌规', '中国友谊出版公司 ', '愤怒、焦虑、恐惧、不安……现代人的生活和工作中有太多的情绪，包括自己的情绪、周围人的情绪、社会的情绪。当我们无法排除和整理情绪时，最终的结果就是让自己“混乱不堪”“焦躁不已”。\r\n本书作者西多昌规是日本知名精神科医师。他不仅在大学医院看诊，同时也是投身医学研究的精神科医师、医学博士。他在多年临床咨询中发现，情绪问题对现代人的生活已经产生了严重的影响。\r\n在本书中，他针对“如何不被情绪影响”“正确处理负面情绪”这些事项，提出了28个一定能够做到的日常练习。', 6, 1, 2021, 'cover/55.jpg', 0, NULL, NULL),
(72, 'Se007', '9780735211292', 'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones', 'James Clear', 'Avery', 'No matter your goals, Atomic Habits offers a proven framework for improving--every day. James Clear, one of the world\'s leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones, and master the tiny behaviors that lead to remarkable results.\r\n\r\nIf you\'re having trouble changing your habits, the problem isn\'t you. The problem is your system. Bad habits repeat themselves again and again not because you don\'t want to change, but because you have the wrong system for change. You do not rise to the level of your goals. You fall to the level of your systems. Here, you\'ll get a proven system that can take you to new heights.\r\n\r\nClear is known for his ability to distill complex topics into simple behaviors that can be easily applied to daily life and work. Here, he draws on the most proven ideas from biology, psychology, and neuroscience to create an easy-to-understand guide for making good habits inevitable and bad habits impossible. Along the way, readers will be inspired and entertained with true stories from Olympic gold medalists, award-winning artists, business leaders, life-saving physicians, and star comedians who have used the science of small habits to master their craft and vault to the top of their field.', 6, 2, 2018, 'cover/72.jpg', 0, '2021-11-30 05:36:56', '2021-11-30 05:36:56'),
(73, 'Se008', '9780671027032', 'How to Win Friends & Influence People', 'Dale Carnegie', 'Pocket Books', 'You can go after the job you want—and get it!\r\nYou can take the job you have—and improve it!\r\nYou can take any situation—and make it work for you!\r\nDale Carnegie’s rock-solid, time-tested advice has carried countless people up the ladder of success in their business and personal lives. One of the most groundbreaking and timeless bestsellers of all time, How to Win Friends & Influence People will teach you:\r\n-Six ways to make people like you\r\n-Twelve ways to win people to your way of thinking\r\n-Nine ways to change people without arousing resentment\r\nAnd much more! Achieve your maximum potential!', 6, 2, 1998, 'cover/73.jpg', 0, '2021-11-30 05:44:00', '2021-11-30 05:44:00'),
(74, 'Se009', '9781982137274', 'The 7 Habits of Highly Effective People: 30th Anniversary Edition', 'Stephen R. Covey', 'Simon & Schuster', 'One of the most inspiring and impactful books ever written, The 7 Habits of Highly Effective People has captivated readers for nearly three decades. It has transformed the lives of presidents and CEOs, educators and parents—millions of people of all ages and occupations. Now, this 30th anniversary edition of the timeless classic commemorates the wisdom of the 7 Habits with modern additions from Sean Covey.\r\nThe 7 Habits have become famous and are integrated into everyday thinking by millions and millions of people. Why? Because they work!\r\nWith Sean Covey’s added takeaways on how the habits can be used in our modern age, the wisdom of the 7 Habits will be refreshed for a new generation of leaders.\r\nThey include:\r\nHabit 1: Be Proactive\r\nHabit 2: Begin with the End in Mind\r\nHabit 3: Put First Things First\r\nHabit 4: Think Win/Win\r\nHabit 5: Seek First to Understand, Then to Be Understood\r\nHabit 6: Synergize\r\nHabit 7: Sharpen the Saw', 6, 2, 2020, 'cover/74.jpg', 0, '2021-11-30 05:46:57', '2021-11-30 05:46:57'),
(75, 'Se010', '9781591843931', 'Think Big, Act Small: How America\'s Best Performing Companies Keep the Start-up Spirit Alive', 'Jason Jennings', 'Portfolio', 'Tradition says there are three ways to grow a company’s profits: Fire up the sales team with empty promises, cut costs and downsize, or cook the books. But what if there’s a better way—a way that nine amazingly profitable and well-run companies are already embracing?\r\n\r\nJason Jennings and his research team screened more than 100,000 Amer­ican companies to find nine that rarely end up on magazine covers, yet have increased revenues and profits by ten percent or more for ten consecutive years. Then they interviewed the leaders, workers, and customers of these quiet super­stars to find the secrets of their astoundingly consistent and profitable growth.\r\n\r\nWhat they have in common is a culture—a community—based on a shockingly simple precept: Think big, but act small. It works for retailers like PETCO, Cabela’s, and O’Reilly Automotive, manufacturers like Medline Industries, service compa­nies like Sonic Drive-In, private educational companies like Strayer, industrial giants like Koch Enterprises, and software companies like SAS.\r\n\r\nThese companies think big ideas about solving customers’ problems, making better products, and creating value. And yet they never stop acting like start-ups—staying humble, treating every employee like the owner, and teaching managers to get their hands dirty.\r\n\r\nJennings and his researchers have updated this book with new stories and insights about why these companies continue to thrive—through the economic downturn—and have now increased revenues and profits for fifteen consecu­tive years. Any company, no matter the size or industry, can benefit from fol­lowing their examples.', 6, 2, 2012, 'cover/75.jpg', 0, '2021-11-30 05:50:35', '2021-11-30 05:50:35'),
(76, 'Se011', '9789861755267', '原子习惯', '詹姆斯．克利爾', '方智出版社股份有限公司', '善用「複利」效應，讓小小的原子習慣利滾利，滾出生命的大不同！\r\n天天細微改變，會累積成巨大差異，這就是原子習慣的驚人力量！\r\n本書作者詹姆斯‧克利爾在高二的一場棒球賽中意外被球棒擊中臉，嚴重受傷，甚至被實施人工昏迷。經過好幾個月的治療，雖然痊癒出院，可以重新踏上球場，後來也進入大學棒球隊，卻只能坐在板凳席，幾乎沒有上場機會。\r\n然而，在頭部嚴重受傷之後的第六年，他被選為他所就讀大學的最佳男性運動員，並且入選ESPN的全美明星陣容——整個美國僅有33人獲得這項殊榮。\r\n從運動生涯幾乎結束，到入選全美明星陣容，甚至在畢業時獲得學業方面的總統獎章，他是怎麼做到的？一切只因他認識且善用了「原子習慣」的力量！\r\n◎有效建立永久良好習慣的系統化「行為改變四法則」\r\n雖然知道習慣很重要，但你經常為了自己的壞習慣苦惱，想要戒除卻力不從心？或者，你想養成好習慣，卻老是半途而廢？其實，問題不在你身上，而是你遵循的行為改變系統出了問題！', 6, 1, 2019, 'cover/76.jpg', 0, '2021-11-30 07:12:36', '2021-11-30 07:12:36'),
(99, 'Se012', '9787532176953', '把自己作为方法', '项飙, 吴琦', '上海文艺出版社', '两代学人，跨越北京、牛津、温州、杭州、上海五地，历时三年完成了这场谈话。从项飙教授的个人经验切入，追索一系列超越自我的问题，其中涉及对中国社会半个世纪以来的变化、知识共同体、全球化与民粹主义、人类学方法论等题目的思考。这本书提供了一份对话实录，也给出了一种审视问题、 思维操练的方法——在自我泛滥的潮流中，如何给自己定位，在全球化的年代，如何创造性地建设身边的小世界，在思想受困的社会，如何回答宏大的命题。', 6, 1, 2020, 'cover/99.jpg', 0, '2021-12-01 05:47:12', '2021-12-01 05:47:12'),
(23, 'TE001', '9780135957059', 'The Pragmatic Programmer: 20th Anniversary Edition: Your Journey to Mastery', 'David Thomas', 'Pearson Education (US)', 'The Pragmatic Programmer is one of those rare tech books you\'ll read, re-read, and read again over the years. Whether you\'re new to the field or an experienced practitioner, you\'ll come away with fresh insights each and every time. Dave Thomas and Andy Hunt wrote the first edition of this influential book in 1999 to help their clients create better software and rediscover the joy of coding. These lessons have helped a generation of programmers examine the very essence of software development, independent of any particular language, framework, or methodology, and the Pragmatic philosophy has spawned hundreds of books, screencasts, and audio books, as well as thousands of careers and success stories. Now, twenty years later, this new edition re-examines what it means to be a modern programmer. Topics range from personal responsibility and career development to architectural techniques for keeping your code flexible and easy to adapt and reuse. Read this book, and you\'ll learn how to: Fight software rot Learn continuously Avoid the trap of duplicating knowledge Write flexible, dynamic, and adaptable code Harness the power of basic tools Avoid programming by coincidence Learn real requirements Solve the underlying problems of concurrent code Guard against security vulnerabilities Build teams of Pragmatic Programmers Take responsibility for your work and career Test ruthlessly and effectively, including property-based testing Implement the Pragmatic Starter Kit Delight your users Written as a series of self-contained sections and filled with classic and fresh anecdotes, thoughtful examples, and interesting analogies, The Pragmatic Programmer illustrates the best approaches and major pitfalls of many different aspects of software development. Whether you\'re a new coder, an experienced programmer, or a manager responsible for software projects, use these lessons daily, and you\'ll quickly see improvements in personal productivity, accuracy, and job satisfaction. You\'ll learn skills and develop habits and attitudes that form the foundation for long-term success in your career. You\'ll become a Pragmatic Programmer.', 9, 2, 2020, 'cover/23.jpg', 0, NULL, '2021-12-29 04:41:18');
INSERT INTO `books` (`id`, `bookid`, `isbn`, `bookTitle`, `author`, `publisher`, `bookDetail`, `categoryid`, `languageid`, `year`, `cover`, `status`, `created_at`, `updated_at`) VALUES
(24, 'TE002', '9780132350884', 'Clean Code : A Handbook of Agile Software Craftsmanship', 'Robert Martin', 'Pearson Education (US)', 'Even bad code can function. But if code isn\'t clean, it can bring a development organization to its knees. Every year, countless hours and significant resources are lost because of poorly written code. But it doesn\'t have to be that way.\r\nNoted software expert Robert C. Martin presents a revolutionary paradigm with Clean Code: A Handbook of Agile Software Craftsmanship. Martin has teamed up with his colleagues from Object Mentor to distill their best agile practice of cleaning code \"on the fly\" into a book that will instill within you the values of a software craftsman and make you a better programmer-but only if you work at it.\r\nWhat kind of work will you be doing? You\'ll be reading code-lots of code. And you will be challenged to think about what\'s right about that code, and what\'s wrong with it. More importantly, you will be challenged to reassess your professional values and your commitment to your craft.\r\nClean Code is divided into three parts. The first describes the principles, patterns, and practices of writing clean code. The second part consists of several case studies of increasing complexity. Each case study is an exercise in cleaning up code-of transforming a code base that has some problems into one that is sound and efficient. The third part is the payoff: a single chapter containing a list of heuristics and \"smells\" gathered while creating the case studies. The result is a knowledge base that describes the way we think when we write, read, and clean code.', 9, 2, 2009, 'cover/24.jpg', 1, NULL, '2022-01-10 23:55:16'),
(25, 'TE003', '9780137081073', 'Clean Coder, The : A Code of Conduct for Professional Programmers', 'Robert Martin', 'Pearson Education (US)', 'Programmers who endure and succeed amidst swirling uncertainty and nonstop pressure share a common attribute: They care deeply about the practice of creating software. They treat it as a craft. They are professionals.\r\nIn The Clean Coder: A Code of Conduct for Professional Programmers, legendary software expert Robert C. Martin introduces the disciplines, techniques, tools, and practices of true software craftsmanship. This book is packed with practical advice-about everything from estimating and coding to refactoring and testing. It covers much more than technique: It is about attitude. Martin shows how to approach software development with honor, self-respect, and pride; work well and work clean; communicate and estimate faithfully; face difficult decisions with clarity and honesty; and understand that deep knowledge comes with a responsibility to act.', 9, 2, 2011, 'cover/25.jpg', 0, NULL, NULL),
(26, 'TE004', '9780134494166', 'Clean Architecture : A Craftsman\'s Guide to Software Structure and Design', 'Robert Martin', 'Pearson Education (US)', 'Building upon the success of best-sellers The Clean Coder and Clean Code, legendary software craftsman Robert C. \"Uncle Bob\" Martin shows how to bring greater professionalism and discipline to application architecture and design.\r\nAs with his other books, Martin\'s Clean Architecture doesn\'t merely present multiple choices and options, and say \"use your best judgment\": it tells you what choices to make, and why those choices are critical to your success. Martin offers direct, no-nonsense answers to key architecture and design questions.\r\nClean Architecture is essential reading for every software architect, systems analyst, system designer, and software manager -- and for any programmer who aspires to these roles or is impacted by their work.', 9, 2, 2017, 'cover/26.jpg', 0, NULL, NULL),
(27, 'TE005', '9780135781869', 'Clean Agile : Back to Basics', 'Robert Martin', 'Pearson Education (US)', 'Robert C. Martin (\"Uncle Bob\") reintroduces Agile values and principles for a new generation-programmers and nonprogrammers alike. Martin, author of Clean Code and other highly influential software development guides, was there at Agile\'s founding. Now, in Clean Agile: Back to Basics, he strips away misunderstandings and distractions that over the years have made it harder to use Agile than was originally intended.\r\nMartin describes what Agile is in no uncertain terms: a small discipline that helps small teams manage small projects . . . with huge implications because every big project is comprised of many small projects. Drawing on his fifty years\' experience with projects of every conceivable type, he shows how Agile can help you bring true professionalism to software development.', 9, 2, 2019, 'cover/27.jpg', 0, NULL, NULL),
(40, 'W0001', '9787108006714', '射雕英雄传（三联版）', '金庸', '生活·读书·新知三联书店', '《射雕英雄传》是金庸的代表作之一，作于一九五七年到一九五九年，在《香港商报》连载。《射雕》中的人物个性单纯，郭靖诚朴厚重、黄蓉机智狡狯，读者容易印象深刻。这是中国传统小说和戏剧的特征，但不免缺乏人物内心世界的复杂性。由于人物性格单纯而情节热闹，所以《射雕》比较得到欢迎， 被拍成各种语种的电影和电视剧在全球众多国家和地区热播。\r\n\r\n', 10, 1, 1994, 'cover/40.jpg', 0, NULL, '2021-12-28 20:15:48'),
(39, 'W0002', '9787108006684', '倚天屠龙记（三联版）', '金庸', '生活·读书·新知三联书店', '《倚天屠龙记》，金庸武侠小说，著于1961年，是“射雕三部曲”系列第三部。该书以元末群雄纷起、江湖动荡为广阔背景，叙述武当弟子张无忌的江湖生涯，表现众武林豪杰质朴自然，形态各异的精神风貌，展现其不可替代的人格力量。\r\n\r\n', 10, 1, 1994, 'cover/39.jpg', 1, NULL, '2021-12-29 17:54:20'),
(46, 'W0003', '9787108006691', '鹿鼎记 (三联版）', '金庸', '生活·读书·新知三联书店', '这是金庸先生最後一部小说，也是登峰造极之作，是金大侠自言最喜欢之大作。 这部小说讲的是一个从小在扬州妓院长大的小孩韦小宝，他不会任何武功，却因机缘巧合闯入了江湖，并凭其绝伦机智周旋于江湖各大帮会、皇帝、朝臣之间并奉旨远征云南、俄罗斯之故事，书中充满精彩绝倒的对白及逆思考的事件，令人于捧腹之余更进一步深思其口才与机敏。', 10, 1, 1994, 'cover/46.jpg', 0, NULL, NULL),
(47, 'W0004', '9787108006721', '天龙八部 (三联版)', '金庸', '生活·读书·新知三联书店', '天龙八部乃金笔下的一部长篇小说，与《射雕》，《神雕》等 几部长篇小说一起被称为可读性最高的金庸小说。《天龙》的故事情节曲折，内容丰富，也曾多次被改编为电视作品。是金庸作品中集大成的一部。故事以北宋末年动荡的社会环境为背景，展开波澜壮阔的历史画卷，塑造了乔峰、段誉、 虚竹、慕容复等形象鲜明的人物，成为武侠史上的经典之作。故事精彩纷呈，人物命运悲壮多变，是可读性很强的作品，具有震撼人心的力量\r\n\r\n', 10, 1, 1994, 'cover/47.jpg', 0, NULL, NULL),
(48, 'W0005', '9787108006639', '笑傲江湖（三联版）', '金庸', '生活·读书·新知三联书店', '《笑傲江湖》是金庸1967年写的一部武侠小说，属于金庸的后期作品。\r\n名门正派的华山派大弟子令狐冲只因心性自由、不受羁勒，喜欢结交左道人士，被逐出师门，遭到正宗门派武林人士的唾弃而流落江湖。令狐冲依然率性而为，只因正义良知自在心中。后来他认识了魔教圣姑任盈盈，两个不喜权势、向往自由的年轻人几经生死患难，笑傲江湖，终成知心情侣。本书处处渗透着追求个性解放与人格独立的精神，对人性的刻画殊为深刻。\r\n\r\n', 10, 1, 1994, 'cover/48.jpg', 0, NULL, NULL),
(49, 'W0006', '9787108006660', '神雕侠侣（三联版）', '金庸', '生活·读书·新知三联书店', '《神雕侠侣》是金庸作品集之一。其主人公杨过自然而然地走上了非正统的人生道路，入了“道流”。其特点是“至情至性，实现自我”，即把个人的利益、情感、个性及人格尊严置于人生首位，作为首要目标，亦作为待人处事，评价是非的首要原则。书中将杨过对郭靖的杀父之仇与疼惜之恩难以取舍的复杂心理刻画得维妙维肖；他与“姑姑”小龙女的情感纠葛和他对江湖世事的渴望又令他挣扎不已……', 10, 1, 1994, 'cover/49.jpg', 0, NULL, NULL),
(50, 'W0007', '9787108012548', '雪山飞狐（三联版）', '金庸', '三联书店', '本书与金庸另一部小说《飞狐外传》情节相关联，但又各自独立。故事发生在清代乾隆时期的关外。饮马川陶百岁、陶子安父子从雪山中挖出一件宝物，封于铁盒之中。北京平通镖局总镖头熊元献带一伙人来抢夺，却被天龙门北宗阮士中、曹云奇、田青文与南宗殷吉劫去。大家拼打之间，一个名叫宝树的丑陋和尚赶到。宝树强“请”众人来到一高耸入云的玉笔峰山庄做客。因山庄主杜希盂外出未归，客人吃饭闲聊。\r\n\r\n原来庄主邀请武林高手在此会一位盖世英雄——雪山飞狐胡斐。午前胡斐派二童子送信，称午间践约。玉笔峰上众人重新争夺铁盒，宝树倚强将铁盒持在手中，令人打开，内装一柄宝刀。\r\n\r\n宝树谈起宝刀的来历，继而，分别由宝树、金面佛大侠苗人凤之女苗若兰、平阿四及陶百岁之口讲述了与此相关的一段武林往事。', 10, 1, 1999, 'cover/50.jpg', 0, NULL, NULL),
(51, 'W0008', '9787108006677', '碧血剑（三联版）', '金庸', '生活.读书.新知三联书店', '《碧血剑》当代著名作家金庸著，著于1956年，是金庸的第二部武侠小说。至今为止，已经过三次修订。现收录在《金庸作品集》中。\r\n\r\n本书讲的是明末抗清将领袁崇焕之子袁承志的故事。', 10, 1, 1994, 'cover/51.jpg', 0, NULL, NULL),
(52, 'W0009', '9787108012630', '飞狐外传（三联版）', '金庸', '三联书店', '《飞狐外传》作者是现代著名作家金庸，著于1960年，是《雪山飞狐》的前传。该书主要是讲述《雪山飞狐》主人公胡斐的成长历程.以主人公胡斐除暴安良为故事的中心;讲述了胡斐为追杀凤天南在路上所发生的一切.特别是主人公与两位女性所发生的恋爱关系,让人觉得惋惜与无奈.体现出江湖一代大侠在爱情面前是那样的脆弱与无奈.该书现收录在《金庸作品集》中。\r\n\r\n', 10, 1, 1999, 'cover/52.jpg', 0, NULL, NULL),
(98, 'W0010', '9787540901820', '鸣镝风云录', '梁羽生', '四川民族出版社', '《鸣镝风云录》是梁羽生所著的武侠作品，亦是梁羽生武侠小说中篇幅最长的作品之一（另一部是《狂侠·天骄·魔女》）。早期在台湾出版时改名为《艳情．宝剑．天涯》。故事讲述南宋时韩佩瑛、奚玉瑾等少年英雄抗击外族和各自的感情故事。', 10, 1, 1988, 'cover/98.jpg', 0, '2021-12-01 05:46:00', '2021-12-01 05:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `categoryname`, `created_at`, `updated_at`) VALUES
(1, 'Literature', NULL, NULL),
(2, 'Fiction', NULL, NULL),
(3, 'Religion', NULL, NULL),
(4, 'Science', NULL, NULL),
(5, 'Suspense', NULL, NULL),
(6, 'Self-Enhancement', NULL, NULL),
(7, 'Children', NULL, NULL),
(8, 'Novel', NULL, NULL),
(9, 'Technology and Engineering', NULL, NULL),
(10, 'Martial Art （Wuxia）', NULL, NULL),
(11, 'Poem', NULL, NULL),
(12, 'History', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `languagetype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `languagetype`, `created_at`, `updated_at`) VALUES
(1, 'Chinese', NULL, NULL),
(2, 'English', NULL, NULL),
(3, 'Bahasa Melayu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duedate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_at` timestamp NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `returndate` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `userid`, `bookid`, `createdate`, `duedate`, `due_at`, `amount`, `created_at`, `returndate`, `updated_at`) VALUES
(21, 1, 'L0002', '2021-12-29', '2022-01-12', '2022-01-11 16:00:00', '1.50', '2021-12-28 20:16:49', NULL, '2022-01-12 17:57:53'),
(23, 1, 'L0001', '2021-12-29', '2022-01-12', '2022-01-11 16:00:00', '1.50', '2021-12-29 04:37:06', NULL, '2022-01-12 17:57:53'),
(26, 4, 'Se001', '2021-12-30', '2022-01-13', '2022-01-12 16:00:00', '0.00', '2021-12-29 17:51:29', NULL, '2022-01-12 17:57:53'),
(28, 4, 'N0002', '2021-12-30', '2022-01-13', '2022-01-12 16:00:00', '0.00', '2021-12-29 17:54:13', NULL, '2022-01-12 17:57:53'),
(29, 4, 'W0002', '2021-12-30', '2022-01-13', '2022-01-12 16:00:00', '0.00', '2021-12-29 17:54:20', NULL, '2022-01-12 17:57:53'),
(33, 5, 'TE002', '2022-01-11', '2022-01-25', '2022-01-24 16:00:00', NULL, '2022-01-10 23:55:16', NULL, '2022-01-10 23:55:16'),
(34, 5, 'S0011', '2022-01-12', '2022-01-26', '2022-01-25 16:00:00', NULL, '2022-01-12 04:53:50', NULL, '2022-01-12 04:53:50'),
(35, 5, 'H0003', '2022-01-12', '2022-01-26', '2022-01-25 16:00:00', NULL, '2022-01-12 07:59:50', NULL, '2022-01-12 07:59:50'),
(36, 5, 'C0003', '2022-01-13', '2022-01-27', '2022-01-26 16:00:00', NULL, '2022-01-12 17:50:41', NULL, '2022-01-12 17:50:41'),
(37, 5, 'N0005', '2022-01-13', '2022-01-27', '2022-01-26 16:00:00', NULL, '2022-01-12 17:57:02', NULL, '2022-01-12 17:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_24_165057_laratrust_setup_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

CREATE TABLE `penalties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penalties`
--

INSERT INTO `penalties` (`id`, `userid`, `bookid`, `day`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'L0002', 1, '1.50', 0, '2022-01-12 04:52:25', '2022-01-12 17:57:53'),
(2, 1, 'L0001', 1, '1.50', 0, '2022-01-12 04:52:25', '2022-01-12 17:57:53'),
(3, 4, 'Se001', 0, '0.00', 0, '2022-01-12 09:09:09', '2022-01-12 17:57:53'),
(4, 4, 'N0002', 0, '0.00', 0, '2022-01-12 09:09:09', '2022-01-12 17:57:53'),
(5, 4, 'W0002', 0, '0.00', 0, '2022-01-12 09:09:09', '2022-01-12 17:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2021-11-24 09:01:31', '2021-11-24 09:01:31'),
(2, 'users-read', 'Read Users', 'Read Users', '2021-11-24 09:01:31', '2021-11-24 09:01:31'),
(3, 'users-update', 'Update Users', 'Update Users', '2021-11-24 09:01:31', '2021-11-24 09:01:31'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2021-11-24 09:01:31', '2021-11-24 09:01:31'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2021-11-24 09:01:31', '2021-11-24 09:01:31'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2021-11-24 09:01:31', '2021-11-24 09:01:31'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2021-11-24 09:01:31', '2021-11-24 09:01:31'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2021-11-24 09:01:32', '2021-11-24 09:01:32'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2021-11-24 09:01:32', '2021-11-24 09:01:32'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2021-11-24 09:01:32', '2021-11-24 09:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(9, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `bookid` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `bookid`, `count`, `created_at`, `updated_at`) VALUES
(1, 'N0001', 2, '2021-12-26 23:55:45', '2021-12-27 00:13:32'),
(2, 'F0004', 1, '2021-12-27 00:11:54', '2021-12-27 00:11:54'),
(3, 'S0010', 1, '2021-12-27 00:12:31', '2021-12-27 00:12:31'),
(4, 'W0001', 1, '2021-12-27 00:19:22', '2021-12-27 00:19:22'),
(6, 'Se001', 2, '2021-12-28 07:37:17', '2021-12-29 17:51:29'),
(7, 'C0001', 1, '2021-12-28 07:48:27', '2021-12-28 07:48:27'),
(8, 'F0002', 2, '2021-12-28 20:15:15', '2021-12-29 17:52:59'),
(9, 'S0001', 1, '2021-12-28 20:16:15', '2021-12-28 20:16:15'),
(10, 'L0002', 1, '2021-12-28 20:16:49', '2021-12-28 20:16:49'),
(11, 'H0003', 2, '2021-12-29 03:12:48', '2022-01-12 07:59:50'),
(12, 'L0001', 1, '2021-12-29 04:37:06', '2021-12-29 04:37:06'),
(13, 'TE001', 1, '2021-12-29 04:40:17', '2021-12-29 04:40:17'),
(14, 'F0001', 1, '2021-12-29 05:08:38', '2021-12-29 05:08:38'),
(15, 'N0002', 1, '2021-12-29 17:54:13', '2021-12-29 17:54:13'),
(16, 'W0002', 1, '2021-12-29 17:54:20', '2021-12-29 17:54:20'),
(17, 'S0003', 1, '2021-12-29 17:54:26', '2021-12-29 17:54:26'),
(18, 'S0005', 1, '2021-12-29 17:54:44', '2021-12-29 17:54:44'),
(19, 'F0005', 1, '2021-12-29 18:08:41', '2021-12-29 18:08:41'),
(20, 'TE002', 1, '2022-01-10 23:55:16', '2022-01-10 23:55:16'),
(21, 'S0011', 1, '2022-01-12 04:53:50', '2022-01-12 04:53:50'),
(22, 'C0003', 1, '2022-01-12 17:50:41', '2022-01-12 17:50:41'),
(23, 'N0005', 1, '2022-01-12 17:57:02', '2022-01-12 17:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator', 'Administrator', '2021-11-24 09:01:31', '2021-11-24 09:01:31'),
(2, 'user', 'User', 'User', '2021-11-24 09:01:32', '2021-11-24 09:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 3, 'App\\Models\\User'),
(2, 1, 'App\\Models\\User'),
(2, 4, 'App\\Models\\User'),
(2, 5, 'App\\Models\\User'),
(2, 6, 'App\\Models\\User'),
(2, 7, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_issued` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `book_issued`) VALUES
(1, 'Tobee', 'tobee@kh.com', NULL, '$2y$10$uEXPQxFGjxxX1LG31GqQseB7/x/Kkbc4Fcs/5/8gC7thsEHKm.K3e', NULL, '2021-11-28 20:26:57', '2022-01-12 17:57:52', 2),
(3, 'Admin', 'admin@admin.com', NULL, '$2y$10$t6yFc8G/wOjxOoACbgG3wO7bg.S4iHU8cuQBTytf9PL9YUK2nxmMe', NULL, '2021-11-28 21:30:13', '2021-12-29 17:52:59', 1),
(4, 'tob', 'jonghyunmy@gmail.com', NULL, '$2y$10$r1sCNmsdMy67Wd4XuGLsQu04hpMOrsnmfx0uYKNmK1Zl3KLv.oKrO', 'MJK4taNRRnL0Pnzj0G0kHID5R2AuvoUUZ1DumAhBwZkr8JAttZHBU8c0YAJR', '2021-12-01 00:38:43', '2022-01-12 17:52:47', 3),
(5, 'liu', 'liu@kh.com', NULL, '$2y$10$9AXv4/KMUD/SIKhACNUUF.auzfc/CllY9arl032rb7exhjQVbpQUu', '1RvPaVFZs1kUMAy1qKQRb3laHY2RRj1xyZTJb1ECLaXt7VRHTgA6t8mo0pTE', '2021-12-01 17:55:03', '2022-01-12 17:57:02', 5),
(6, 'qian', 'qian@kh.com', NULL, '$2y$10$aR/HjuZ7it1CkTlxH4t4Wen75alHuiwB50rpL1qD7LMLknynuAbnK', 'p8Sopldr8deQHhfmcFJrNenX1ytmkoQFnRFhpGB2ngDkBPjarl1RDNz9NJMm', '2022-01-12 08:35:51', '2022-01-12 18:34:22', 0),
(7, 'tobb', 'tobb@kh.com', NULL, '$2y$10$OFHV08jZCT2mD5/uYZukveKKS578Ekkt0k6wwJt2G1Ms2uip7jWZW', NULL, '2022-01-12 17:41:32', '2022-01-12 17:41:32', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorys_id_unique` (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_id_unique` (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penalties`
--
ALTER TABLE `penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
