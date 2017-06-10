-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017 年 6 月 10 日 10:57
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db16`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE IF NOT EXISTS `gs_an_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `naiyou`, `indate`) VALUES
(2, 'PARK', 'park@test.test', 'TEST2', '2017-06-03 15:36:32'),
(3, 'LEE', 'lee@test.test', 'TEST3', '2017-06-03 15:37:09'),
(4, 'CHOI', 'choi@test.test', 'TEST4', '2017-06-03 15:37:41'),
(5, 'JUNG', 'jung@test.test', 'TEST5', '2017-06-03 15:38:19');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `b_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `a_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `b_url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `b_name`, `a_name`, `b_url`, `comment`, `indate`) VALUES
(1, '志高く　孫正義正伝', '井上　篤夫', 'https://www.amazon.co.jp/%E5%BF%97%E9%AB%98%E3%81%8F-%E5%AD%AB%E6%AD%A3%E7%BE%A9%E6%AD%A3%E4%BC%9D-%E4%BA%95%E4%B8%8A-%E7%AF%A4%E5%A4%AB/dp/4408395544', 'ソフトバンク代表・孫正義の半生を綴った書籍。世界に影響を及ぼす孫も、最初から全てを手にしていた訳ではない。「実業家」を目指す者にとってのバイブルである。', '2017-06-05 12:37:59'),
(2, 'マイクロソフトでは出会えなかった天職', 'ジョン ウッド', 'https://www.amazon.co.jp/%E3%83%9E%E3%82%A4%E3%82%AF%E3%83%AD%E3%82%BD%E3%83%95%E3%83%88%E3%81%A7%E3%81%AF%E5%87%BA%E4%BC%9A%E3%81%88%E3%81%AA%E3%81%8B%E3%81%A3%E3%81%9F%E5%A4%A9%E8%81%B7-%E5%83%95%E3%81%AF%E3%81%93%E3%81%86%E3%81%97%E3%81%A6%E7%A4%BE%E4%BC%9A%E8%B5%B7%E6%A5%AD%E5%AE%B6%E3%81%AB%E3%81%AA%E3%81%A3%E3%81%9F-%E3%82%B8%E3%83%A7%E3%83%B3-%E3%82%A6%E3%83%83%E3%83%89/dp/4270002484/ref=pd_lpo_sbs_14_t_0?_encoding=UTF8&psc=1&refRID=JVKY7TA2B0F32N0JFV4K', '作者の生き方に拍手を贈りたくなるような素晴らしい本です。\r\n読み終えると、自分の生き方を振り返ると共に、きっと「自分も世界の恵まれない子どもたちのために一歩踏み出そう」という想いを起こさせてくれることでしょう。\r\n素敵な本に出会えてよかったなあという、清々しさでいっぱいです。\r\n勇気と感動をありがとうございます！', '2017-06-06 16:46:45'),
(3, '竜馬がゆく', ' 司馬 遼太郎', 'https://www.amazon.co.jp/%E7%AB%9C%E9%A6%AC%E3%81%8C%E3%82%86%E3%81%8F-%E6%96%B0%E8%A3%85%E7%89%88-%E5%85%A88%E5%B7%BB-%E5%AE%8C%E7%B5%90%E3%82%BB%E3%83%83%E3%83%88-%E6%96%87%E6%98%A5%E6%96%87%E5%BA%AB/dp/B003U2S5RU/ref=pd_lpo_sbs_14_t_0?_encoding=UTF8&psc=1&refRID=YPTYPGBCA9E9TSBTED3M', '司馬　遼太郎氏の小説によって　坂本竜馬の人間性や時代に引き込まれてゆくのですが、\r\nこれは　本当に竜馬自身の人間性の魅力なのか、作者　司馬氏が創りあげた人間性の\r\n魅力なのかと判らなくなるほど。　竜馬の生きた時代の日本も想像できて　おもしろい。\r\nただ　文庫８巻を収めるケースが付いていたら良かったと思うのですが・・', '2017-06-06 16:49:34'),
(4, 'キングダム', '原　泰久', 'https://www.amazon.co.jp/dp/B01LTIAYES/ref=pd_lpo_sbs_14_t_0?_encoding=UTF8&psc=1&refRID=M46HC53WD8YQSEPF4SRY', 'キングダム!!!たいへん面白いですね！テレビ放送第3部ないかな～と待ちきれず、全巻購入。ただし、他の方のプレビューにもあるように最新巻入ってません。私はプレビュー参考に商品が届いてから最新巻ないのを確認して別途注文しました。ちなみにラスボスはカンキ将軍？', '2017-06-06 16:52:43'),
(5, '人を育て 組織を鍛え 成功を呼び込む 勝利への哲学', '原　晋', 'https://www.amazon.co.jp/%E4%BA%BA%E3%82%92%E8%82%B2%E3%81%A6-%E7%B5%84%E7%B9%94%E3%82%92%E9%8D%9B%E3%81%88-%E6%88%90%E5%8A%9F%E3%82%92%E5%91%BC%E3%81%B3%E8%BE%BC%E3%82%80-%E5%8B%9D%E5%88%A9%E3%81%B8%E3%81%AE%E5%93%B2%E5%AD%A6157-~%E5%8E%9F%E6%99%8B%E3%80%81%E9%AD%82%E3%81%AE%E8%AA%9E%E9%8C%B2/dp/4835628993', '箱根駅伝を3連覇を果たした青山学院大陸上部の原晋監督の組織運営、育成哲学をまとめた一冊です。\r\n全体の構成としては、各章初めに原監督が哲学を2～4ページ程度で語り、ライターが項目立てにして細かいエピソードとともに語られた哲学を\r\n1ページ単位でひも解いている、といった感じでしょうか。\r\nなので、非常に読みやすい。', '2017-06-06 16:56:06'),
(6, '逆説のスタートアップ思考', '馬田　隆明', 'https://www.amazon.co.jp/%E9%80%86%E8%AA%AC%E3%81%AE%E3%82%B9%E3%82%BF%E3%83%BC%E3%83%88%E3%82%A2%E3%83%83%E3%83%97%E6%80%9D%E8%80%83-%E4%B8%AD%E5%85%AC%E6%96%B0%E6%9B%B8%E3%83%A9%E3%82%AF%E3%83%AC-578-%E9%A6%AC%E7%94%B0-%E9%9A%86%E6%98%8E/dp/4121505786', '各章ごとにまとめがついており、一通り学んだ後で復習やセルフチェックのためのツールとして使いやすい。第1章のアイデアのチェックリストだけでも本書を買ってよかったと思った。「Why Now?」と「Why You?」、「未来を考えたとき、今現在欠けているものであり、未来にあるべきようなものですか」の問いは東南アジアに転職するかどうかを検討したときに思いがけず役だった。', '2017-06-06 17:00:25'),
(7, 'ザ・ラストマン', '川村　隆', 'https://www.amazon.co.jp/%E3%82%B6%E3%83%BB%E3%83%A9%E3%82%B9%E3%83%88%E3%83%9E%E3%83%B3-%E6%97%A5%E7%AB%8B%E3%82%B0%E3%83%AB%E3%83%BC%E3%83%97%E3%81%AEV%E5%AD%97%E5%9B%9E%E5%BE%A9%E3%82%92%E5%B0%8E%E3%81%84%E3%81%9F%E3%80%8C%E3%82%84%E3%82%8A%E6%8A%9C%E3%81%8F%E5%8A%9B%E3%80%8D-%E5%B7%9D%E6%9D%91-%E9%9A%86/dp/4041023629', '　結局、温情を捨て「選択と集中」ができないのなら経営者である資格はないのだろう。\r\n　あと、方向性がよかった面はあるのだろう。\r\n　インフラ未整備の途上国でシステムごと請け負い、ITを使って世界をよくしていこうというインフラビジネス（「社会イノベーション事業」）はビジネスとしても有望であるし、会社のポリシーとしても優れているのだろう。\r\n　この結果、日立を「システム技術をコアコンピタンスとする企業」の代表例と指摘する人もいる。', '2017-06-06 17:02:34'),
(8, '茶色のシマウマ、世界を変える', '石川 拓治', 'https://www.amazon.co.jp/%E8%8C%B6%E8%89%B2%E3%81%AE%E3%82%B7%E3%83%9E%E3%82%A6%E3%83%9E%E3%80%81%E4%B8%96%E7%95%8C%E3%82%92%E5%A4%89%E3%81%88%E3%82%8B%E2%80%95%E2%80%95%E2%80%95%E6%97%A5%E6%9C%AC%E5%88%9D%E3%81%AE%E5%85%A8%E5%AF%AE%E5%88%B6%E3%82%A4%E3%83%B3%E3%82%BF%E3%83%BC%E3%83%8A%E3%82%B7%E3%83%A7%E3%83%8A%E3%83%AB%E9%AB%98%E6%A0%A1ISAK%E3%82%92%E3%81%A4%E3%81%8F%E3%81%A3%E3%81%9F-%E5%B0%8F%E6%9E%97%E3%82%8A%E3%82%93%E3%81%AE%E7%89%A9%E8%AA%9E-%E7%9F%B3%E5%B7%9D-%E6%8B%93%E6%B2%BB/dp/4478017646', 'それにしても圧倒されました。何度も涙が出た。\r\n何よりも嬉しかったのは、小林りんさんやISAKに関わった皆さんが、無私で子どもたちの可能性を信じておられるところ。\r\nやっぱり子どもたちってすごいんだって改めて思った。\r\n私もこんな学校を作りたいし、作らなきゃダメだって思った。', '2017-06-08 14:22:29'),
(9, '不毛地帯', '山崎 豊子', 'https://www.amazon.co.jp/%E4%B8%8D%E6%AF%9B%E5%9C%B0%E5%B8%AF-%E7%AC%AC1%E5%B7%BB-%E6%96%B0%E6%BD%AE%E6%96%87%E5%BA%AB-%E3%82%84-5-40-%E5%B1%B1%E5%B4%8E/dp/4101104409', '主人公のモデルは陸軍参謀、伊藤忠商事会長、臨調委員を歴任された瀬島龍三氏である。伝記やドキュメンタリーではなく、小説という形を取っているが故に、細部の圧倒的な面白さがとにかく印象的だ。陸軍のエリートとして出発し、東京裁判出廷、シベリア抑留、商社での出世と、刺激的すぎる人生を送った男の半世紀である。', '2017-06-08 14:24:33'),
(10, 'ユダヤの商法', '藤田 田', 'https://www.amazon.co.jp/%E3%83%A6%E3%83%80%E3%83%A4%E3%81%AE%E5%95%86%E6%B3%95%E2%80%95%E4%B8%96%E7%95%8C%E7%B5%8C%E6%B8%88%E3%82%92%E5%8B%95%E3%81%8B%E3%81%99-1972%E5%B9%B4-%E3%83%99%E3%82%B9%E3%83%88%E3%82%BB%E3%83%A9%E3%83%BC%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E8%97%A4%E7%94%B0-%E7%94%B0/dp/B000J91DDU', '経営者にとって、百万円の価値がある。\r\n\r\n最近、情報商材とかでe-bookが3〜5万円で売られているが、この内容にくらべれば子供だまし。まるで話にならない。\r\n\r\n絶版になってしまったのが残念で悔やまれる。この本が売れ続ければ、日本の経済概念ももっと進化し、海外と対等以上に張り合えただろうに。', '2017-06-08 14:25:46'),
(11, '本日は、お日柄もよく', '原田 マハ', 'https://www.amazon.co.jp/%E6%9C%AC%E6%97%A5%E3%81%AF%E3%80%81%E3%81%8A%E6%97%A5%E6%9F%84%E3%82%82%E3%82%88%E3%81%8F-%E5%BE%B3%E9%96%93%E6%96%87%E5%BA%AB-%E5%8E%9F%E7%94%B0%E3%83%9E%E3%83%8F/dp/4198937060', 'スピーチライターという日本でも注目されるようになった職業に焦点を当て、読者を原田マハワールドに引き込んでいく内容となっています。単なる恋愛物語ではなく、一人の若い女性がその才能を開花させ、大きく成長していく物語です。読後感もさわやかで、思わず原田マハさんの他の作品も読みたくなるなります。私は「総理の夫」でマハさんにはまり、この作品が二冊目でした。読んでよかったと思わせる一冊です。', '2017-06-08 14:27:35');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
