-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2014 at 07:37 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wko`
--
CREATE DATABASE IF NOT EXISTS `wko` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wko`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `ID` int(11) NOT NULL COMMENT 'main id',
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'User name',
  `Password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NewPassword` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User-Password Table';

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `Name`, `Password`, `NewPassword`) VALUES
(1, 'Chris', '', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Page` varchar(99) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`ID`, `Page`, `Content`) VALUES
(0, 'Home', '<h2>This is the home page</h2>This is not a functional looking homepage.<br><br>'),
(1, 'Team', '<h1><b>Our\r\nTeam</b></h1><h2>Leadership</h2><span>\r\nThe realization of WKOâ€™s mission is possible through the joint efforts of many\r\nindividuals. Whole Kids Outreach is blessed to have a diverse Board of\r\nDirectors and Advisory Board comprised of individuals with a vision to help\r\nothers and who are always ready to lend a hand, offer advice and lead the\r\norganization.<br>\r\n<br>\r\n</span><h2><b>Board of Directors </b></h2><span>\r\n<br>\r\nElizabeth Blaich, President<br>\r\nAttorney<br>\r\nSummers and Blaich, P.C.<br>\r\n<br>\r\nMary Rogers, Vice President<br>\r\nExecutive Director<br>\r\nSherwood Forest Camp<br>\r\n<br>\r\nAmanda Suchara, Recording Secretary<br>\r\nDevelopment Specialist<br>\r\nMERS/Missouri Goodwill Industries, Inc.<br>\r\n<br>\r\nJenny Costley, Treasurer<br>\r\nController<br>\r\nEmerson Tool Co.<br>\r\n<br>\r\nCourtney Atkinson, DMD<br>\r\nOrthodontist<br>\r\nMcGuire Orthodontics LLC<br>\r\n<br>\r\nAngela Kirby<br>\r\nAttorney<br>\r\nThe Kirby Law Firm<br>\r\n<br>\r\nDiane Silman, MSW, LCSW<br>\r\nExecutive Director<br>\r\nOzark Foothills Child Advocacy Center<br>\r\n<br>\r\nNathalie Williams, PhD, RN<br>\r\nAssistant Professor, retired<br>\r\nSchool of Nursing<br>\r\nSouthern Illinois University Edwardsville<br>\r\n<br>\r\n</span><h2><b>Advisory Board</b></h2><span>\r\n<br>\r\nKathie Askren<br>\r\nPartner<br>\r\nEdward Jones<br>\r\n<br>\r\nLynette Ballard<br>\r\nSenior Director, Learning Integration<br>\r\nCatholic Health Association of the United States<br>\r\n<br>\r\nJames Morgan <br>\r\nPresident<br>\r\nSubsurface Constructors<br>\r\n<br>\r\nStephanie Morgan<br>\r\nCo-Founder, Whole Kids Outreach<br>\r\n<br>\r\nClaudia Preuschoff, MD<br>\r\nPediatrician, Poplar Bluff Pediatrics<br>\r\nHospitalist, Southeast Missouri Hospital<br>\r\n<br>\r\nSister Mary Roch Rocklage, RSM<br>\r\nHealth Ministry Liaison<br>\r\nSisters of Mercy Health System<br>\r\n<br>\r\nClinton Summers<br>\r\nAttorney, Summers and Blaich, P.C.<br>\r\n<br>\r\nScott Williams<br>\r\nSt. Charles, Missouri<br>\r\n<br>\r\n</span><h2><b>Staff</b></h2><span>\r\n<br>\r\nThe staff of Whole Kids Outreach is responsible for the day-to-day planning and\r\nexecution of the various programs that fulfill the WKO mission. Although each\r\nteam member has an individual position within Whole Kids Outreach, it is the\r\nteamwork that ensures success. â€œDo whatever it takesâ€ is the motto of the\r\nstaff.<br>\r\n<br>\r\nStaff members may be contacted by calling Whole Kids Outreach at 573-663-3257\r\nor via fax at 573-663-2933. Individuals may also be reached via email by\r\nclicking on a name below. <br>\r\n<br>\r\n</span><h2><span><b>Executive Director:</b> </span></h2><span>\r\nSister Anne Francioni, SSND, RN, MA<br>\r\nsisteranne@wholekidsoutreach.org<br><br>\r\n</span><h2><span><b>Clinical Director:</b> </span></h2><span>\r\nSusan DeMent, RN&nbsp; susan.dement@nfnf.org<br><br>\r\n</span><h2><b>Center Director: </b></h2><span>\r\nStacia Moe&nbsp;&nbsp; wkocenterdirector@gmail.com<br>\r\n<br>\r\n</span><h2><b>Development Coordinator: </b></h2><span>\r\nLynn Raney&nbsp; lynn@wholekidsoutreach.org<br><br>\r\n</span><h2><b>Finance Coordinator: </b></h2><span>\r\nPat Condray&nbsp; patcondray@wholekidsoutreach.org<br><br></span>\r\n\r\n<h2><b>Administrative Support Coordinator:</b></h2><p>\r\nSusan Cooper&nbsp; susancooper@wholekidsoutreach.org</p>\r\n\r\n<h2><b>Program Support Coordinator:&nbsp;</b></h2><p>\r\nConnie Pendley conniependley@wholekidsoutreach.org</p>\r\n\r\n<h2><b>Service Contracts Coordinator:</b>&nbsp;</h2><p><span><br>\r\nLori Smith&nbsp; lorismith@wholekidsoutreach.org</span></p>\r\n\r\n<h2><b>Center-based Staff:&nbsp;</b></h2><p><span><b><br></b>\r\nGreg Clark&nbsp; gregclark@wholekidsoutreach.org<br>\r\nOliver Dowden oliverdowden@wholekidsoutreach.org</span></p>\r\n\r\n<h2><span><br>\r\n<b>Outreach Specialists:</b>&nbsp;</span></h2><p><span><br>\r\nDonna Brooks donnabrooks@wholekidsoutreach.org<br>\r\nStephanie Buxton stephaniebuxton@wholekidsoutreach.org<br>\r\nKim Harwell&nbsp; kimberlyharwell@wholekidsoutreach.org<br>\r\nCarla Jensen&nbsp; carlajensen@wholekidsoutreach.org<br>\r\nMaryann Lavender maryannlavender@wholekidsoutreach.org<br>\r\nAshley McClanahan<br>\r\nashleymcclanahan@wholekidsoutreach.org</span></p>\r\n\r\n<h2><b>Nurses:&nbsp;</b></h2><p><span><b><br></b>\r\nTina Daughhetee RN tina.daughhetee@nfnf.org<br>\r\nPam Elledge, RN pam.elledge@nfnf.org<br>\r\nRachel McClanahan, RN </span><a rel="nofollow" target="_blank">rachel.mcclanahan@nfnf.org</a></p>'),
(2, 'History', '<h2>Our Mission</h2><p>Poverty compounded by isolation\r\ncreates unthinkable challenges for families and often these challenges â€“ and\r\nthe outcomes they create â€“ are repeated from one generation leaving little hope\r\nfor better futures. The children are at the heart of these challenges and are\r\nthe ones to suffer most.</p>\r\n\r\n<p>In southeastern Missouri, there is a\r\nhidden pocket of poverty where thousands of families are trying to manage the\r\nchallenges of isolation and poverty on their own. Whole Kids Outreach is there\r\nto help. We are there to help, because in our area â€¦</p>\r\n\r\n<p>â€¦ one-third of the children live\r\nbelow the poverty line.</p>\r\n\r\n<p>â€¦ births to teen mothers is 50%\r\nhigher than the state of Missouri overall.</p>\r\n\r\n<p>â€¦ the areaâ€™s infant mortality rate\r\nis a staggering 11.2%.</p>\r\n\r\n<p>â€¦ the children need us.</p>\r\n\r\n<p>With warmth and compassion, Whole\r\nKids Outreach has been helping hundreds of families every year since 1999.</p>\r\n\r\n<p>Whole Kids Outreach is a faith-based\r\nnonprofit working to address the unmet health and wellness needs of hundreds of\r\nchildren living in rural poverty in Missouri. The WKO service area includes the\r\ncounties of Butler, Carter, Iron, Reynolds, Shannon and Wayne and encompasses\r\nnearly 5,000 square miles.</p><br><br><br><br>'),
(3, 'HomePrograms', '<h2>Home Programs</h2><p>Strengthening families by building\r\ncaring relationships, Whole Kids Outreach is making lasting improvements in the\r\nhealth of children and of communities in six rural Missouri counties: Butler,\r\nCarter, Iron, Reynolds, Shannon, and Wayne.</p>\r\n\r\n<p><span><br>\r\nWhole Kids Outreach helps families obtain health care and parenting education,\r\nand helps them connect with other community organizations. These families are\r\noften isolated and lack transportation; therefore, services are brought into\r\nthe familiesâ€™ homes. More than 200-300 pregnant women and families with young\r\nchildren receive these in-home services at any given time. WKO offers additional\r\nprograms and activities at the Whole Kids Outreach Center in Ellington, where\r\nfamilies and children participate in a wide variety of recreational and\r\neducational activities.<br>\r\n<br>\r\nWhole Kids Outreach provides services through four programs that are distinct\r\nin their designs and goals, but work an integrated fashion to help meet\r\nfamiliesâ€™ health and wellness needs. <br>\r\n<br>\r\nClick on any of the programs below for more information:</span></p>\r\n\r\n<ul>\r\n <li><a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=resource-mothers-program">Resource Mothers Program </a></li>\r\n <li><a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=maternal-child-visiting-nurse-program">Maternal-Child Visiting Nurse Program</a> </li>\r\n <li><a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=family-enhancement-program">Family Enhancement Program</a> </li>\r\n <li><a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=center-based-programs">Center-Based Programs </a></li>\r\n</ul>\r\n\r\n<h2>&nbsp;Resource\r\nMothers Program</h2>\r\n\r\n<p>The Resource Mothers Program is a service to help prepare expectant parents\r\nfor childbirth. Experienced women from the community serve as WKO Outreach\r\nSpecialists and visit expectant parents in their homes. These committed women,\r\nwho are trained as childbirth educators, help ensure that women receive\r\nadequate prenatal care and how to care for their newborn.</p>\r\n\r\n<h2>Maternal-Child Visiting Nurse Program</h2>\r\n\r\n<p>In the <em>Maternal-Child Visiting Nurse Program</em>, WKO works in\r\ncollaboration with Nurses for Newborns Foundation (out of St. Louis) to provide\r\nRegistered Nurses to visit expectant and new parents. The nurses help ensure\r\nthat pregnant women receive appropriate prenatal care and health education by\r\nworking with the Outreach Specialists and other community resources. The WKO\r\nRegistered Nurses are experienced Labor and Delivery/Pediatric nurses who, not\r\nonly teach well baby care, but identify potential medical and developmental\r\nissues so that those needs can be addressed as early as possible, giving\r\ninfants the best start in life possible.</p>\r\n\r\n<h2>Family Enhancement Program</h2>\r\n\r\n<p>The Family Enhancement Program focuses on health and child developmental\r\nneeds of families with young children. Many of the families who participate in\r\nthis program have experienced domestic violence, abuse/neglect, or have\r\nchildren who have developmental delays. All of the families who participate in\r\nour prenatal Resource Mothers Program (RMP) transfer to the Family Enhancement\r\nProgram for continued services that are more expansive than the childbirth and\r\nwell-baby education offered in the RMP.</p>\r\n\r\n<p>Through the Family Enhancement Program, parents learn skills to raise\r\nhealthy children and families receive help to successfully navigate their daily\r\nlives. The children obtain tools to help ready them for school. They learn such\r\nskills as using words (rather than acting out) to communicate their needs, and\r\nhow to cooperate and play safely. Outreach Specialists also work with families\r\nduring crises episodes to help teach problem-solving skills, which reduce the\r\nnegative impact on the family that such disruptions can cause.</p>\r\n\r\n<p>As part of the comprehensive approach to creating whole kids, the Outreach\r\nSpecialists also address many of the social factors that improve familiesâ€™\r\nheath. During the home visits, we assist parents to continue or further their\r\neducation; learn the skills necessary to improve the skills needed to seek and\r\nsustain gainful employment; obtain adequate housing and childcare; and budget\r\ntheir resources wisely. The Outreach Specialists create individualized Family\r\nService Plans with the parent(s) or guardians to direct and track the familyâ€™s\r\nprogress. Home visits, as part of the Family Enhancement Program, vary in\r\nnumber and frequency and can continue for as long as the family needs our\r\nservices and shows progress toward their goals.</p>'),
(4, 'CenterPrograms', '<h1>Center Programs</h1>Whole Kids Outreach offers a vast array of programs that promote emotional\r\nand physical health at its Center in Ellington, Missouri. Families, children\r\nand other community members participate in support groups and recreational\r\nactivities such as Camp Whole Kids (summer day camp) and the WKO Riding Program\r\nâ€“ a comprehensive, wellness-oriented equine program. WKO also offers safety\r\nprograms such as swimming classes, parent support groups and community events.&nbsp;<br><br>\r\n\r\n<p>The Center is designed as an oasis of hope in the rural Missouri. Whole Kids\r\nOutreach has continuously worked to create a safe haven for families at Center.\r\nThe main building â€“ the Mission House â€“ and 10 acres that make up the â€œCenterâ€\r\nhave been owned and operated by WKO since 1999. Also on site, are the Blessing\r\nHouse, a small office and activities building; the stable and riding arena; an\r\nactivities/storage building; and, the Giving House, which can accommodate up to\r\n24 volunteers and other visitors to the WKO site.</p>\r\n\r\n<p>The Center stands as a tangible and bold reminder of how the health and\r\nwellbeing of families with young children must be a communityâ€™s priority if it\r\nis to be healthy and prosperous. The Center allows WKO to provide culturally\r\nsensitive, high quality programs for the service area through myriad\r\nactivities. By decreasing social and geographic isolation and providing\r\nopportunities to create community, families can support each other as they form\r\nand nurture healthy families.</p>\r\n\r\n<p>Find our various Center-based Programs below: <br>\r\n<a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=family-enhancement-program-activities">Camp\r\nWhole Kids</a><br>\r\n<a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=family-enhancement-program-activities">Community\r\nEvents</a><br>\r\n<a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=family-enhancement-program-activities">Moms\r\nDay Out</a><br>\r\n<a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=riding-programs">Riding\r\nProgram</a><br>\r\n<a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=family-enhancement-program-activities">Swimming\r\nLessons</a><br>\r\n<a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=family-enhancement-program-activities">Hosting\r\nGroup or Club Meetings at WKO</a><br>\r\n<a rel="nofollow" target="_blank" href="http://www.wholekidsoutreach.org/index.php?page=funding-and-volunterring">Volunteer\r\nProgram </a></p>\r\n\r\n<p>For more information about these Center-based programs, please contact\r\nCenter Director <a rel="nofollow" target="_blank">Stacia Moe</a>.</p><h2>Riding Programs</h2>\r\n\r\n<p><span>Whole Kids Outreachâ€™s Riding Program\r\nis an innovative component of an integrated approach to health and wellness\r\nneeds. The Riding Program helps both children and adults to create positive\r\nchanges in their lives and helps to restore balance within family structures\r\nand personal environments.<br>\r\n<br>\r\nWKOâ€™s Riding Program includes a vast array of activities to help build\r\nrelational skills and improve participantsâ€™ ability to navigating daily life.\r\nThe lessons also offer a fun way to exercise, learn to improve oneâ€™s attention\r\nspan, and grow in self-confidence. The Riding Program can accommodate all\r\nriding disciplines and experience levels for children four-years-old through\r\nadults. Participants learn to care for the horses and equipment as well as to\r\nimprove their horsemanship skills. It also gives parents an opportunity to see\r\ntheir children in a positive light. The shared sense of accomplishment and\r\nincreased self-worth is elemental to the enhancement of positive interactions\r\nbetween parents and their children. The unique instruction provides a\r\ntherapeutic outlet for troubled and/or at-risk youth; and increases a\r\nparticipating childâ€™s readiness to learn in a school environment through an\r\ninnovative enhancement of learning abilities (i.e. respect, patience, following\r\ndirections, etc.).</span></p><h2><span>\r\n<b>Physical Benefits</b></span></h2><p>\r\nWorking with horses, both on the ground and aboard, helps to increase\r\ncoordination and strengthen muscles. Ridersâ€™ muscles are used and strengthened\r\nfrom the time the participants walk out to catch their mounts, throughout the\r\ngrooming tasks, and while working to attain the balance necessary to ride\r\ncorrectly.</p>\r\n\r\n<h2><b>Riding Program Activities</b></h2><span>\r\nRiding sessions for individual clients in the outreach programsâ€”Any Outreach\r\nSpecialist or RN can refer clients to work with the Riding Program Director to\r\nhelp address specific needs such as increasing attention levels, decreasing\r\nsedentary life style, working through emotional wounds, etc.<br><br>\r\n</span><h2><b>Camp Whole Kids</b></h2><span>All campers receive daily riding instruction as well as\r\nlessons on how to handle themselves around large horses. The campers learn to\r\ngroom, tack, lead, and follow barn rules.<br><br>\r\n</span><h2><b>Afterschool Program</b></h2><span>This program operates in the spring and fall months.\r\nIt offers many of the same experiences as those gained through Camp Whole Kids.\r\n<br><br>\r\n</span><h2><b>Private and Small Group Lessons</b></h2>Private and small group riding lessons\r\nare available throughout the week and on Saturdays. All level riders and all\r\ndisciplines are welcome. Students can improve skills for horse shows or improve\r\nriding and horse handling skills for the sheer pleasure of spending time with\r\neither their own horse or one of the great WKO school horses<br>'),
(5, 'TestimonyPrograms', '<h2>TEST</h2>'),
(6, 'Parents', '<h1 class="wysiwyg-text-align-center">Resource for Parents</h1><h2><b>Whole Kids Outreach Programs</b></h2><p><span>\r\n<br>\r\nWhole Kids Outreach offers parents and families various health and recreational\r\nprograms through home visits and activities at our Center in Ellington. Our\r\nservice area includes Butler, Carter, Iron, Reynolds, Shannon and Wayne\r\nCounties.<br>\r\n<br>\r\nHome visitation outreach programs (link to this page in website) provide health\r\neducation and general family support to help families grow in whatever ways\r\nthat the need to so they can raise â€œwhole kids.â€ These programs are staffed by\r\nlay Outreach Specialists and Registered Nurses and serve pregnant women and\r\nteens as well as families with young children.<br>\r\n<br>\r\nIf you are interested in exploring what WKO services offer to local families,\r\nplease click here (link to Home Visit Outreach Program page), email us\r\n(Kristen, link to info@wholekidsoutreach.org) or call 800-760-3259 or\r\n573-663-3257 for more information.<br>\r\n<br>\r\nWhole Kids Outreach also offers many Center-based Programs (link to this page\r\nin website) on our beautiful property in Ellington, Missouri including a summer\r\nday camp, Moms Day Out events, horseback riding lessons, seasonal family\r\nfestivals and more. To learn more about these various program click here. (link\r\nto Center-based Programs page)</span></p><h2><span>\r\n<br>\r\n<br>\r\n<b>Websites You May Find Helpful</b></span></h2><p><span>\r\n<br>\r\nCounty Health Centers and Departments:<br>\r\nButler County Health Department <a rel="nofollow" target="_blank" href="http://www.butlercountyhealth.com">www.butlercountyhealth.com</a><br>\r\nCarter County Health Center <a rel="nofollow" target="_blank" href="http://www.cartercountyhealth.org">www.cartercountyhealth.org</a><br>\r\nIron County Health Department <a rel="nofollow" target="_blank" href="http://www.ironcountyhealthdept.org">www.ironcountyhealthdept.org</a><br>\r\nReynolds County Health Center <a rel="nofollow" target="_blank" href="http://www.reynoldscopublichealth.org">www.reynoldscopublichealth.org</a><br>\r\nShannon County Health Center <a rel="nofollow" target="_blank" href="http://www.shannoncountyhealth.org">www.shannoncountyhealth.org</a><br>\r\nWayne County Health Center <a rel="nofollow" target="_blank" href="http://www.waynecountyhealthcenter.com">www.waynecountyhealthcenter.com</a><br>\r\nFamily Education <a rel="nofollow" target="_blank" href="http://www.familyeducation.com">www.familyeducation.com</a><br>\r\nIron County Hospital <a rel="nofollow" target="_blank" href="http://www.ironcountyhospital.org">www.ironcountyhospital.org</a><br>\r\nMissouri Association for Community Action (MACA) <a rel="nofollow" target="_blank" href="http://www.communityaction.org">www.communityaction.org</a><br>\r\nMissouri Department of Health and Senior Services <a rel="nofollow" target="_blank" href="http://www.health.mo.gov">www.health.mo.gov</a><br>\r\nMissouri Department of Mental Health <a rel="nofollow" target="_blank" href="http://www.dmh.mo.gov">www.dmh.mo.gov</a><br>\r\nMissouri Department of Social Services <a rel="nofollow" target="_blank" href="http://www.dss.mo.gov">www.dss.mo.gov</a><br>\r\nMissouri Department of Social Services, Childrenâ€™s Division <a rel="nofollow" target="_blank" href="http://www.dss.mo.gov/cd">www.dss.mo.gov/cd</a><br>\r\nMissouri Department of Social Services, Family Support Division\r\n<a rel="nofollow" target="_blank" href="http://www.dss.mo.gov/fsd">www.dss.mo.gov/fsd</a><br>\r\nMissouri First Steps <a rel="nofollow" target="_blank" href="http://www.mofirststeps.com">www.mofirststeps.com</a><br>\r\nMissouri Head Start <a rel="nofollow" target="_blank" href="http://www.moheadstart.org">www.moheadstart.org</a><br>\r\nMissouri Highlands Health Care <a rel="nofollow" target="_blank" href="http://www.mohigh.org">www.mohigh.org</a><br>\r\nPoplar Bluff Regional Medical Center <a rel="nofollow" target="_blank" href="http://www.poplarbluffregional.com">www.poplarbluffregional.com</a><br>\r\nSocial Security Administration <a rel="nofollow" target="_blank" href="http://www.ssa.gov">www.ssa.gov</a><br>\r\nWhole Health Outreach <a rel="nofollow" target="_blank" href="http://www.wholehealthoutreach.org">www.wholehealthoutreach.org</a></span></p>'),
(7, 'Kids', '<h1>Resources for&nbsp;Kids</h1>Whole Kids Outreach works with\r\nfamilies in the Missouri counties of Butler, Carter, Iron, Reynolds, Shannon\r\nand Wayne.<br><span>\r\n<br>\r\nIf you live in one of these counties â€“ in towns like Ellington, Centerville,\r\nPoplar Bluff, Doniphan, Lake Wappapello and all the towns in between â€“ Whole Kids\r\nis there for you and your family. <br>\r\n<br>\r\nFeel free to call 800-760-3259 or 573-663-3257 if you have some questions and\r\nyou think we can help you or your family. Or you can email </span>info@wholekidsoutreach.org<span>\r\nus.&nbsp; <br>\r\n<br>\r\nIf you are interested in applying to work as a camp counselor in the summer or\r\nwould like to volunteer at WKO, please email </span>Stacy Moe<span>,\r\nour Center Director. <br>\r\n<br>\r\nIf you would like to organize a toy drive or other collection to benefit WKO,\r\nplease visit our Wish List section to see what the current needs are.<br><b><br></b></span><h2><b>Websites You Might Find Helpful</b></h2><p>\r\nAwesome Library â€“ K-12 (<a rel="nofollow" target="_blank" href="http://www.awesomelibrary.org/Office/Main/Involving_Students/Involving_Students.html">www.awesomelibrary.org/student</a><span>)<br>\r\nDirectory for Kids <br>\r\n</span><a rel="nofollow" target="_blank" href="http://www.childhelp-usa.com/">Child Help USA</a><span> <br>\r\nDiscovery Kids (</span><a rel="nofollow" target="_blank" href="http://kids.discovery.com/">kids.discovery.com</a><span>)<br>\r\n</span><a rel="nofollow" target="_blank" href="http://www.gangfreekids.org/tips.html">Gang Free Kids</a><span><br>\r\n</span><a rel="nofollow" target="_blank" href="http://www.kidsites.com/sites-fun/activities.htm">Kid Sites</a><span><br>\r\n</span><a rel="nofollow" target="_blank" href="http://www.linkopedia.com/kids/">Linkopedia Kids</a>&nbsp;</p><h2><span>\r\n<b>Library for Kids</b></span></h2><p><span><b><br></b>\r\nNational Geographic Kids (</span><a rel="nofollow" target="_blank" href="http://kids.nationalgeographic.com/">kids.nationalgeographic.com</a><span>)<br>\r\nSt. Louis County Library â€“ Kids (homework help) (</span><a rel="nofollow" target="_blank">www.slcl.org/kids</a><span>)<br>\r\nWorld Almanac for Kids (</span><a rel="nofollow" target="_blank" href="http://www.worldalmanacforkids.com/">www.worldalmanacforkids.com</a>)</p>'),
(8, 'Volunteer', '<h1>Volunteer</h1><p>It is our goal to welcome new and\r\nreturning volunteers and offer a unique learning and social experience to each\r\nindividual. This program provides an opportunity for volunteers to participate\r\nin â€œmissionâ€ as opposed to an assortment of fragmented odd jobs. Volunteers are\r\nrecruited from schools, established youth groups, and through the many\r\nrelationships WKO has forged with families, businesses and agencies throughout\r\nthe country. </p>\r\n\r\n<p>The length of any given volunteer\r\nexperience varies from an hour to a whole week. Volunteers are welcomed onto\r\nthe WKO property throughout the year for a variety of activities. Each\r\nvolunteer participates in a thorough orientation that acclimates him/her to the\r\nexpectations of the assigned tasks and connects their service project with the\r\noverall mission of WKO, along with Godâ€™s global mission for our world.</p>\r\n\r\n<p>The volunteer experiences are\r\nclosely monitored by the Volunteer Coordinator to ensure that the needs of the\r\nvolunteers are met, questions are answered, and that at all times the best\r\ninterests and most immediate needs of the target population are being met by\r\nthe volunteer activities.</p>\r\n\r\n<p>Volunteers who participate in\r\nextended projects (more than one day) have the chance to be involved in a\r\nvariety of dynamic projects: service activities with the WKO grounds and\r\nmaintenance team, recreational activities with children of all ages, community\r\noutreach activities for WKO clientele who need help with home improvements to\r\nimprove the safety of their living environments. This diversity of opportunity\r\ndeepens their experience of our mission as well as enhances cultural\r\nsensitivity to those in a rural environment. The Volunteer Coordinator and WKO\r\nstaff closely partner to provide ongoing support to ensure the volunteers\r\ndevelop their understanding of mission; are comfortable with the activities to\r\nwhich they are assigned; and are sensitive to the experience they may be\r\nsharing with other volunteers.</p>\r\n\r\n<p>Volunteering at WKO demands an\r\nextraordinary amount of patience and flexibility. Volunteers are often\r\nchallenged in ways (physical, mental, emotional) that they do not anticipate.\r\nTo this end, the Volunteer Coordinator intentionally arranges a closing\r\nceremony to ritualize the integration of the experience into the volunteersâ€™\r\nlives. This has been essential in assuring that volunteers have the opportunity\r\nto process their emotions and reactions to their experience, that the impact of\r\nthe program is captured in an post-survey, and, most importantly, that\r\nvolunteers receive due recognition and understand our appreciation for their\r\ncontribution.</p>\r\n\r\n<p>For information on how you can volunteer\r\nor set up a volunteer experience for you service group, contact WKOâ€™s Volunteer\r\nCoordinator</p>'),
(9, 'Donate', '<h2>Donate</h2><p>Whole Kids Outreach is able to\r\naccept secure online donations including the option to give quarterly. Click\r\nbelow to make your one-time gift&nbsp;or quarterly commitment now.</p><p><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `testimony`
--

CREATE TABLE IF NOT EXISTS `testimony` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Show` int(1) NOT NULL DEFAULT '0',
  `Content` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  `Name` varchar(9999) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`),
  KEY `ID_3` (`ID`),
  KEY `ID_4` (`ID`),
  KEY `ID_5` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;