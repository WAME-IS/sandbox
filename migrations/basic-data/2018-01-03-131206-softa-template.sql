SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO `wame_article` (`id`, `publish_start_date`, `publish_end_date`, `create_date`, `status`, `create_user_id`)
VALUES
	(1,NULL,NULL,'2017-07-12 14:47:56',1,1),
	(2,NULL,NULL,'2017-07-12 14:48:43',1,1),
	(3,'1970-01-01 01:00:00',NULL,'2017-07-17 10:34:41',1,1),
	(4,'1970-01-01 01:00:00',NULL,'2017-07-17 10:38:25',1,1),
	(5,'1970-01-01 01:00:00',NULL,'2017-07-17 10:40:17',1,1),
	(6,'1970-01-01 01:00:00',NULL,'2017-07-17 10:41:33',1,1),
	(7,'2017-12-29 11:56:46',NULL,'2017-12-29 11:56:46',1,1),
	(8,'2017-12-29 11:57:33',NULL,'2017-12-29 11:57:33',1,1),
	(9,'2017-12-29 11:58:12',NULL,'2017-12-29 11:58:12',1,1),
	(10,'2017-12-29 11:58:41',NULL,'2017-12-29 11:58:41',1,1),
	(11,'2017-12-29 11:59:12',NULL,'2017-12-29 11:59:12',1,1),
	(12,'2017-12-29 11:59:00',NULL,'2017-12-29 11:59:42',1,1),
	(13,'2017-12-29 14:25:03',NULL,'2017-12-29 14:25:03',1,1),
	(14,'2017-12-29 14:25:03',NULL,'2017-12-29 14:25:34',1,1),
	(15,'2017-12-29 14:25:03',NULL,'2017-12-29 14:25:57',1,1),
	(16,'2017-12-29 14:25:03',NULL,'2017-12-29 14:26:20',1,1),
	(17,'2017-12-29 14:25:03',NULL,'2017-12-29 14:26:39',1,1),
	(18,'2017-12-29 14:25:03',NULL,'2017-12-29 14:27:01',1,1);


# Dump of table wame_article_lang
# ------------------------------------------------------------

INSERT INTO `wame_article_lang` (`id`, `article_id`, `edit_user_id`, `lang`, `title`, `slug`, `description`, `text`, `edit_date`)
VALUES
	(1,1,1,'en','Help and FAQ','help-and-faq','<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean lacinia bibendum nulla sed consectetur. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue.</p>','<p>Donec id elit non mi porta gravida at eget metus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>','2017-07-12 14:47:56'),
	(2,2,1,'en','About Us','about-us','<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Curabitur blandit tempus porttitor. Donec sed odio dui. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est ','<p>Curabitur blandit tempus porttitor. Cras mattis consectetur purus sit amet fermentum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Donec sed odio dui. Donec sed odio dui. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula ut id elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor.</p>','2017-07-12 14:48:43'),
	(3,3,1,'en','Sign up and fill your profile with information.',NULL,'<p>Hell yeah &ndash; you can even sign up&nbsp;with Facebook! You&rsquo;ll probably have to fill some additional information tho.</p>','','2017-07-17 10:34:41'),
	(4,4,1,'en','Jobtum magic starts happening',NULL,'<p>Jobtum will immediately pair your profile&nbsp;to matching job offers and notify your&nbsp;potential employers of your existence</p>','','2017-07-17 10:38:25'),
	(5,5,1,'en','Chat directly with the employers',NULL,'<p>Direct communication with no&nbsp;intermediaries with our built-in jobtum chat.</p>','','2017-07-17 10:40:17'),
	(6,6,1,'en','Congratulations',NULL,'<p>You got yourself a new job just by&nbsp;singning up. Isn&rsquo;t that great?&nbsp;And it&rsquo;s free... Completely!</p>','','2017-07-17 10:41:33'),
	(7,7,1,'en','<div class=\"circle\"><span class=\"circle-shadow\"></span><span class=\"icon miscellaneous-icon-atomic\"></span></div>EFEKTÍVNE JADRO SYSTÉMU','efektivne-jadro-systemu','','<p>Základom WAME IS je Nette framework s dlhoročným vývojom SK a CZ komunity, ktorá pravidelne organizuje školenia, konferencie, workshopy..</p>','2017-12-29 11:56:46'),
	(8,8,1,'en','<div class=\"circle\"><span class=\"circle-shadow\"></span><span class=\"icon miscellaneous-icon-layers\"></span></div>PRISPÔSOBITEĽNÝ A ROZŠÍRITEĽNÝ','prisposobitelny-a-rozsiritelny','','<p>Moduly, komponenty a pluginy sú nezávislé a znovupoužiteľné pre akýkoľvek projekt. Príncíp rozširovania a úpravy existujúcich funkcií je veľmi jednoduchý bez potreby zasahovať priamo do zdrojových objektov.</p>','2017-12-29 11:57:33'),
	(9,9,1,'en','<div class=\"circle\"><span class=\"circle-shadow\"></span><span class=\"icon entypo-icon-gauge\"></span></div>RÝCHLY VÝVOJ APLIKÁCII','rychly-vyvoj-aplikacii','','<p>Zaviedli sme viacero princípov ktoré uľahčujú a urýchľujú ďalší vývoj. Venujte sa vývoju len špecifických rozšírení a dizajnu pre konkrétny projekt.</p>','2017-12-29 11:58:12'),
	(10,10,1,'en','<div class=\"circle\"><span class=\"circle-shadow\"></span><span class=\"icon basic-ui-icon-unlock\"></span></div>OPEN SOURCE','open-source','','<p>WAME IS je zdarma stiahnuteľný nástroj, ktorý viete prevádzkovať na svojom serveri, alebo serveri klientov, bez ďalších nákladov.</p>','2017-12-29 11:58:41'),
	(11,11,1,'en','<div class=\"circle\"><span class=\"circle-shadow\"></span><span class=\"icon entypo-icon-language\"></span></div>MULTIJAZYČNOSŤ','multijazycnost','','<p>Všetky moduly a komponenty sú programované s podporou pre preklady fráz a textov prostredníctvom Gettext PHP rozšírenia.</p>','2017-12-29 11:59:12'),
	(12,12,1,'en','<div class=\"circle\"><span class=\"circle-shadow\"></span><span class=\"icon miscellaneous-icon-users\"></span></div>KOMUNITA A PODPORA','komunita-a-podpora','','<p>vlastná komunita WAME IS, zastúpenie komerčných firiem, Open source komunita v Nette frameworku a množstvo rôznych školení a podujatí..</p>','2017-12-29 11:59:42'),
	(13,13,1,'en','Funkcie','funkcie','','<p>Toto je DEMO stránka Open Source systému WAME IS.</p>\n<p>Viac informácií získate na oficiálnej stránke podpory systému <a title=\"WAME IS\" href=\"http://wameis.org\" target=\"_blank\" rel=\"noopener\">http://wameis.org</a></p>','2017-12-29 14:25:03'),
	(14,14,1,'en','Riešenia','riesenia','','<p>Toto je DEMO stránka Open Source systému WAME IS.</p>\n<p>Viac informácií získate na oficiálnej stránke podpory systému <a title=\"WAME IS\" href=\"http://wameis.org\" target=\"_blank\" rel=\"noopener\">http://wameis.org</a></p>','2017-12-29 14:25:34'),
	(15,15,1,'en','Dokumentácia','dokumentacia','','<p>Toto je DEMO stránka Open Source systému WAME IS.</p>\n<p>Viac informácií získate na oficiálnej stránke podpory systému <a title=\"WAME IS\" href=\"http://wameis.org\" target=\"_blank\" rel=\"noopener\">http://wameis.org</a></p>','2017-12-29 14:25:57'),
	(16,16,1,'en','Demo','demo','','<p>Toto je DEMO stránka Open Source systému WAME IS.</p>\n<p>Viac informácií získate na oficiálnej stránke podpory systému <a title=\"WAME IS\" href=\"http://wameis.org\" target=\"_blank\" rel=\"noopener\">http://wameis.org</a></p>','2017-12-29 14:26:20'),
	(17,17,1,'en','Aktuality','aktuality','','<p>Toto je DEMO stránka Open Source systému WAME IS.</p>\n<p>Viac informácií získate na oficiálnej stránke podpory systému <a title=\"WAME IS\" href=\"http://wameis.org\" target=\"_blank\" rel=\"noopener\">http://wameis.org</a></p>','2017-12-29 14:26:39'),
	(18,18,1,'en','Viac','viac','','<p>Toto je DEMO stránka Open Source systému WAME IS.</p>\n<p>Viac informácií získate na oficiálnej stránke podpory systému <a title=\"WAME IS\" href=\"http://wameis.org\" target=\"_blank\" rel=\"noopener\">http://wameis.org</a></p>','2017-12-29 14:27:01');



# Dump of table wame_category
# ------------------------------------------------------------

INSERT INTO `wame_category` (`id`, `status`, `create_date`, `lft`, `_lft`, `rgt`, `depth`, `create_user_id`, `type`, `parent_id`)
VALUES
	(1,1,'2017-07-12 14:49:37',1,1,8,0,1,'article',NULL),
	(2,1,'2017-07-12 14:50:13',2,2,5,1,1,'article',1),
	(3,1,'2017-07-17 10:31:23',3,3,4,2,1,'article',2),
	(4,1,'2017-12-29 11:51:23',6,6,7,1,1,'article',NULL);



# Dump of table wame_category_item
# ------------------------------------------------------------



INSERT INTO `wame_category_item` (`category_id`, `item_id`, `id`, `main`)
VALUES
	(3,3,6,0),
	(4,7,7,0),
	(4,8,8,0),
	(4,9,9,0),
	(4,10,10,0),
	(4,11,11,0),
	(4,12,12,0);


# Dump of table wame_category_lang
# ------------------------------------------------------------

INSERT INTO `wame_category_lang` (`id`, `category_id`, `edit_user_id`, `lang`, `title`, `slug`, `edit_date`)
VALUES
	(1,1,1,'en','Articles','articles','2017-07-12 14:49:37'),
	(2,2,1,'en','Blog','blog','2017-07-12 14:50:13'),
	(3,3,1,'en','How does it work?','how-does-it-work','2017-07-17 10:31:23'),
	(4,4,1,'en','Features','features','2017-12-29 11:51:23');

# Dump of table wame_component
# ------------------------------------------------------------

INSERT INTO `wame_component` (`id`, `name`, `type`, `create_date`, `status`, `parameters`, `create_user_id`, `in_list`)
VALUES
	(1,'mainMenuComponent','MenuComponent','2017-07-11 14:38:26',1,'{container: {tag: div}, template: \"navbar-nav-right.latte\"}',1,1),
	(2,'languageSwitchComponent','LanguageSwitcherComponent','2017-07-11 14:53:19',0,'{container: {tag: div, class: navbar-form navbar-right}, template: \"\"}',1,1),
	(3,'sliderHomepageComponent','SliderComponent','2017-07-11 15:25:11',0,'{container: {tag: div}, template: \"\", type: BootstrapCarousel, interval: \"4000\", showIndicators: 1, showControls: 1, pause: 1, wrap: 1, keyboard: 1}',1,1),
	(4,'slideItemSlideImageComponent4','SlideImageComponent','2017-07-11 15:29:26',1,'{container: {tag: \"\"}, template: \"\", version: original, statusType: slideItem}',1,0),
	(5,'imageLogoComponent','ImageComponent','2017-07-11 16:43:16',2,'{container: {tag: div}, template: \"\", type: logo, version: small, statusType: site}',1,1),
	(6,'textBlockAfterLogoComponent','TextBlockComponent','2017-07-11 17:02:02',2,'{container: {tag: p}, template: \"\", showTitle: 0}',1,1),
	(7,'menuBottomComponent','MenuComponent','2017-07-12 11:08:31',1,'{container: {tag: \"div\"}, template: nav-pills.latte}',1,1),
	(8,'socialPageFacebookFooterComponent','SocialPageComponent','2017-07-12 12:23:49',1,'{container: {tag: \"\"}, template: \"\", type: facebook}',1,1),
	(9,'socialPageTwitterFooterComponent','SocialPageComponent','2017-07-12 14:19:20',1,'{container: {tag: \"\"}, template: \"\", type: twitter}',1,1),
	(10,'socialPageGoogleFooterComponent','SocialPageComponent','2017-07-12 14:20:13',1,'{container: {tag: \"\"}, template: \"\", type: google}',1,1),
	(11,'menuFooterComponent','MenuComponent','2017-07-12 14:23:56',1,'{container: {tag: \"div\"}, template: \"list-inline.latte\"}',1,1),
	(12,'imageLogoHeaderComponent','ImageComponent','2017-07-13 14:52:48',1,'{container: {tag: \"\"}, template: navbar-brand.latte, type: logo, version: small, statusType: site}',1,1),
	(13,'textBlockIntroTextComponent','TextBlockComponent','2017-07-13 16:33:34',1,'{container: {tag: div}, template: titleHomepageTextBlock.latte, showTitle: 0}',1,1),
	(14,'offerListLatestJobsComponent','OfferListComponent','2017-07-14 12:44:16',0,'{container: {tag: div, \"\": \"\"}, template: thumbnails.latte}',1,1),
	(15,'articleListStepsManualControl','ArticleListComponent','2017-07-17 10:48:20',2,'{container: {tag: div, class: manual-alist border-btm}, itemsParameters: {container: {tag: \"\"}}, listContainer: {tag: \"ul\", class: \"row\"}, listItemContainer: {tag: \"li\", class: \"col-sm-4 col-md-3 thumbnail-clear\"}, listCriteria: {limit: 4, order: {publishStartDate: DESC}}, template: \"manual.latte\", categories: [\"3\"], paginator_visibility: false, filter_visibility: false, showTitle: 1, showDescription: 1}',1,1),
	(16,'userSignMenu','MenuComponent','2017-07-19 10:44:35',1,'{container: {tag: div, id: ocSignTabs, class: menu-mi}, template: \"nav-tabs.latte\"}',1,1),
	(17,'signInForm','SignInFormComponent','2017-07-19 10:48:15',0,'{container: {tag: div}, template: \"\"}',1,1),
	(18,'signUpForm','SignUpFormComponent','2017-07-19 10:48:39',0,'{container: {tag: div}, template: \"\"}',1,1),
	(19,'signInForm','SignInFormComponent','2017-07-20 10:35:56',1,'{container: {tag: \"\"}, template: \"\"}',1,1),
	(20,'signUpForm','SignUpFormComponent','2017-07-20 10:36:23',1,'{container: {tag: \"\"}, template: \"\"}',1,1),
	(21,'textBlockTextCtaButtonControl','TextBlockComponent','2017-07-20 16:04:58',2,'{container: {tag: div, class: offset-large-vertical}, template: text-cta-button.latte, showTitle: 0}',1,1),
	(22,'imageActionButtonUserComponent','ImageActionButtonComponent','2017-08-01 10:35:45',1,'{container: {tag: div, class: image-action-button}, template: \"\", statusType: user}',1,1),
	(23,'userTest','UserComponent','2017-08-01 10:41:32',0,'{container: {tag: div}, template: \"\"}',1,1),
	(24,'imageUserControl','ImageComponent','2017-08-01 11:50:05',1,'{container: {tag: div, class: image-avatar}, template: avatar-upload.latte, type: null, version: small, statusType: user}',1,1),
	(25,'menuMainUserControl','MenuComponent','2017-08-02 11:10:06',0,'{container: {tag: div}, template: navbar-nav.latte}',1,1),
	(26,'userSettings','UserSettingsButtonComponent','2017-08-02 14:09:33',0,'{container: {tag: div}, template: \"\"}',1,1),
	(27,'allOffers','OfferListComponent','2017-08-02 16:26:10',1,'{container: {tag: div, class: border-btm},  itemsParameters: {container: {tag: \"\"}}, listContainer: {tag: \"ul\", id: offerListMain, class: \"row\"}, listItemContainer: {tag: \"li\", class: \"item col-sm-4 col-md-3\"}, listCriteria: {limit: 8, order: {publishStartDate: DESC}}, showTitle: 0, template: \"thumbnails-pag.latte\"}',1,1),
	(28,'paginator','PaginatorComponent','2017-08-02 17:04:26',1,'{container: {tag: div}, template: \"pagination.latte\"}',1,1),
	(29,'switchMode','DummyComponent','2017-08-03 09:31:25',1,'{container: {tag: div, data-viewmode-target: \"#offerListMain\", class: pull-right}, template: switch-mode.latte}',1,1),
	(30,'parameters','ParameterListComponent','2017-08-14 11:46:19',1,'{container: {tag: \"\"}, template: \"\"}',1,1),
	(31,'quickAddButton','QuickAddButtonComponent','2017-09-05 12:21:41',1,'{container: {tag: \"\"}, template: \"\"}',NULL,1),
	(32,'keyFeatures','ArticleListComponent','2017-12-29 11:46:58',1,'{container: {tag: div}, itemsParameters: {container: {tag: \"\"}}, listContainer: {tag: \"div\", class: \"row articles\"}, listItemContainer: {tag: \"div\", class: \"col-sm-6 col-md-4 keyfeatures\"}, listCriteria: {limit: 6, order: {publishStartDate: ASC}, categories: [4]}, template: \'\', paginator_visibility: false, filter_visibility: false, showTitle: 1}',1,1),
	(33,'headerMenu','MenuComponent','2017-12-29 14:15:36',0,'{container: {tag: \"\"}, template: \"\"}',1,1),
	(34,'textBlockHomepageLeftBottom','TextBlockComponent','2017-12-29 15:21:59',1,'{container: {tag: \"\"}, template: textBlockThumbnails.latte, showTitle: 0}',1,1),
	(35,'textBlockHomepageCenterBottom','TextBlockComponent','2017-12-29 15:21:59',1,'{container: {tag: \"\"}, template: textBlockThumbnails.latte, showTitle: 1}',1,1),
	(36,'textBlockHomepageRightBottom','TextBlockComponent','2017-12-29 15:21:59',1,'{container: {tag: \"\"}, template: textBlockThumbnails.latte, showTitle: 1}',1,1),
	(37,'textBlockHomepageBottom','TextBlockComponent','2017-12-29 16:47:10',1,'{container: {tag: \"\"}, template: \"\", showTitle: 0}',1,1);


# Dump of table wame_component_in_position
# ------------------------------------------------------------

INSERT INTO `wame_component_in_position` (`id`, `component_id`, `sort`, `parameters`, `position_id`)
VALUES
	(3,1,2,NULL,2),
	(6,2,1,NULL,2),
	(7,3,0,NULL,3),
	(8,4,1,NULL,17),
	(10,6,2,NULL,6),
	(11,7,3,NULL,6),
	(14,8,0,NULL,18),
	(15,9,0,NULL,18),
	(16,10,0,NULL,18),
	(17,11,0,NULL,18),
	(18,5,1,NULL,6),
	(20,12,0,NULL,19),
	(21,13,0,NULL,3),
	(22,14,0,NULL,20),
	(23,15,0,NULL,20),
	(24,16,0,NULL,30),
	(25,17,0,NULL,30),
	(26,18,0,NULL,30),
	(27,20,0,NULL,31),
	(28,19,0,NULL,32),
	(29,21,0,NULL,20),
	(31,23,0,NULL,34),
	(34,24,0,NULL,34),
	(35,22,0,NULL,37),
	(36,25,0,NULL,2),
	(37,26,3,NULL,2),
	(38,27,0,NULL,24),
	(40,28,0,NULL,40),
	(41,21,0,NULL,42),
	(42,29,0,NULL,43),
	(43,30,0,NULL,48),
	(44,31,1,'{container: {tag: li, class: quick-menu}, template: \"\"}',13),
	(45,31,1,'{container: {tag: div, class: quick-menu fixed-action-btn click-to-toggle hide-on-large-only}, template: \"\"}',15),
	(46,32,0,NULL,20),
	(48,33,0,NULL,2),
	(49,34,0,NULL,5),
	(50,35,0,NULL,5),
	(51,36,0,NULL,5),
	(52,37,0,NULL,5);


# Dump of table wame_component_lang
# ------------------------------------------------------------


INSERT INTO `wame_component_lang` (`id`, `component_id`, `edit_user_id`, `lang`, `title`, `description`, `edit_date`)
VALUES
	(1,1,1,'en','Main Menu','Main menu in header','2017-07-11 14:46:20'),
	(2,2,1,'en','Language Switch','','2017-07-11 15:15:15'),
	(3,3,1,'en','Landing Slider','slider on homepage','2017-07-11 15:25:11'),
	(4,4,1,'en',NULL,NULL,'2017-07-11 15:29:26'),
	(5,5,1,'en','Logo','','2017-07-13 13:25:57'),
	(6,6,1,'en','Logo description','','2017-07-11 17:02:02'),
	(7,7,1,'en','Bottom Menu','Main Bottom Menu','2017-07-12 11:08:31'),
	(8,8,1,'en','Footer Social Facebook','Link to facebook','2017-07-12 14:18:26'),
	(9,9,1,'en','Footer Social Twitter','Link to twitter','2017-07-12 14:19:20'),
	(10,10,1,'en','Footer Social Google+','Link to google plus','2017-07-12 14:20:13'),
	(11,11,1,'en','Footer Menu','Footer Menu','2017-07-12 14:23:56'),
	(12,12,1,'en','Header Logo','Logo in header','2017-07-13 14:52:48'),
	(13,13,1,'en','Intro text','Intro text overlay slider','2017-12-29 10:51:05'),
	(14,14,1,'en','Kľúčové funkcie','','2017-12-29 11:34:53'),
	(15,15,1,'en','Don’t waste your time with search bars!','Jobtum is made possible by spreading its community. Invite your friends via social media.\nMore users means more jobs... Toto copy treba doriešiť, zdôrazniť community ale\naby to nebolo priliš ako open-source projekt','2017-07-17 11:15:28'),
	(16,16,1,'en','User Sign Menu','','2017-07-19 10:44:35'),
	(17,17,1,'en','Sign In Form','','2017-07-19 10:48:15'),
	(18,18,1,'en','Sign Up Form','','2017-07-19 10:48:39'),
	(19,19,1,'en','Sign In Form','','2017-07-20 10:35:56'),
	(20,20,1,'en','Sign Up Form','','2017-07-20 10:36:23'),
	(21,21,1,'en','Create a Profile','text and CTA button','2017-07-20 16:26:53'),
	(22,22,1,'en','Upload User Image','','2017-08-01 10:35:45'),
	(23,23,1,'en','User test','','2017-08-01 10:41:32'),
	(24,24,1,'en','Image of User','','2017-08-01 13:06:25'),
	(25,25,1,'en','Main User Menu','','2017-08-02 11:12:16'),
	(26,26,1,'en','User settings','','2017-08-02 14:10:05'),
	(27,27,1,'en','All offers','','2017-08-03 09:39:36'),
	(28,28,1,'en','Paginator','','2017-08-02 17:04:26'),
	(29,29,1,'en','Switch mode','','2017-08-03 13:36:21'),
	(30,30,1,'en','Parameters','','2017-08-14 11:46:19'),
	(31,31,NULL,'en','Quick add button','Component for quick add items','2017-09-05 12:21:41'),
	(32,32,1,'en','Kľúčové funkcie','','2017-12-29 12:37:10'),
	(33,33,1,'en','Header menu','','2017-12-29 14:15:36'),
	(34,34,1,'en','<span class=\"icon fa fa-github fa-3x\"></span>STIAHNI ZADARMO','Stiahni zadarmo a začni svoju cestu kontribútora\nčo najskôr.','2017-12-29 18:02:50'),
	(35,35,1,'en','<span class=\"icon fa fa-envelope-o fa-3x\"></span>KONTAKTUJ NÁS','','2017-12-29 18:03:48'),
	(36,36,1,'en','<span class=\"icon fa fa-slack fa-3x\"></span>ČETUJ S KOMUNITOU','','2017-12-29 18:05:15'),
	(37,37,1,'en','Nasleduj','','2017-12-29 18:06:55');


# Dump of table wame_menu
# ------------------------------------------------------------

INSERT INTO `wame_menu` (`id`, `component_id`, `type`, `value_id`, `create_date`, `parameters`, `status`, `showing`, `create_user_id`, `sort`)
VALUES
	(1,1,'homepage',NULL,'2017-07-11 14:43:29','{class: \"\", icon: \"\", only_icon: 0, open: normal}',0,2,1,1),
	(2,1,'signIn',NULL,'2017-07-11 14:48:56','{class: \"\", icon: \"\", only_icon: 0, open: normal}',0,0,1,2),
	(3,1,'signUp',NULL,'2017-07-11 14:49:40','{class: \"\", icon: \"\", only_icon: 0, open: normal}',0,0,1,3),
	(4,1,'signOut',NULL,'2017-07-11 14:50:23','{class: \"\", icon: \"\", only_icon: 0, open: normal}',0,1,1,4),
	(5,7,'homepage',NULL,'2017-07-12 11:09:07','{class: \"\", icon: \"\", only_icon: 0, open: normal}',0,2,1,1),
	(6,7,'signOut',NULL,'2017-07-12 11:09:25','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,1,1,2),
	(7,7,'signIn',NULL,'2017-07-12 11:09:38','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,0,1,3),
	(8,7,'signUp',NULL,'2017-07-12 11:09:53','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,0,1,4),
	(9,11,'homepage',NULL,'2017-07-12 14:25:37','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,1),
	(10,11,'article',1,'2017-07-12 16:47:35','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,2),
	(11,11,'article',2,'2017-07-12 16:48:10','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,3),
	(12,1,'userProfile',NULL,'2017-07-13 17:39:57','{class: \"\", icon: \"\", only_icon: 0, open: normal}',0,1,1,5),
	(13,16,'signIn',NULL,'2017-07-19 10:45:16','{class: action-sign-in ajax-active, icon: \"\", only_icon: 0, open: normal}',1,0,1,1),
	(14,16,'signUp',NULL,'2017-07-19 10:45:37','{class: action-sign-up ajax-active, icon: \"\", only_icon: 0, open: normal}',1,0,1,2),
	(15,33,'userProfile',NULL,'2017-08-02 11:10:29','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,1,1,2),
	(16,25,'message',NULL,'2017-08-02 13:45:54','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,1,1,1),
	(17,33,'externalLink',NULL,'2017-12-29 14:18:12','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,1),
	(18,1,'article',13,'2018-01-02 08:59:37','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,1),
	(19,1,'article',14,'2018-01-02 09:04:22','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,2),
	(20,1,'article',15,'2018-01-02 09:04:52','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,3),
	(21,1,'article',16,'2018-01-02 09:05:15','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,4),
	(22,1,'article',17,'2018-01-02 09:05:37','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,5),
	(23,1,'article',18,'2018-01-02 09:06:00','{class: \"\", icon: \"\", only_icon: 0, open: normal}',1,2,1,6);


# Dump of table wame_menu_lang
# ------------------------------------------------------------


INSERT INTO `wame_menu_lang` (`id`, `item_id`, `edit_user_id`, `alternative_title`, `edit_date`, `lang`, `title`, `slug`, `parameters`)
VALUES
	(1,1,1,NULL,'2017-07-11 14:43:29','en','Homepage',NULL,NULL),
	(2,2,1,NULL,'2017-07-11 14:48:56','en','Sign in',NULL,NULL),
	(3,3,1,NULL,'2017-07-11 14:49:40','en','Sign up',NULL,NULL),
	(4,4,1,NULL,'2017-07-11 14:50:23','en','Sign out',NULL,NULL),
	(5,5,1,NULL,'2017-07-12 11:09:07','en','Homepage',NULL,NULL),
	(6,6,1,NULL,'2017-07-12 11:09:25','en','Sign out',NULL,NULL),
	(7,7,1,NULL,'2017-07-12 11:09:38','en','Sign in',NULL,NULL),
	(8,8,1,NULL,'2017-07-12 11:09:53','en','Sign up',NULL,NULL),
	(9,9,1,NULL,'2017-07-12 14:25:37','en','Homepage',NULL,NULL),
	(10,10,1,'','2017-07-12 16:47:35','en','Help and FAQ','help-and-faq',NULL),
	(11,11,1,'','2017-07-12 16:56:34','en','About Us','about-us',NULL),
	(12,12,1,NULL,'2017-07-13 17:39:57','en','Profile',NULL,NULL),
	(13,13,1,NULL,'2017-07-19 11:46:59','en','Sign in',NULL,NULL),
	(14,14,1,NULL,'2017-07-19 11:47:11','en','Sign up',NULL,NULL),
	(15,15,1,NULL,'2017-08-04 16:23:39','en','My Profile',NULL,NULL),
	(16,16,1,NULL,'2017-08-02 13:49:54','en','Messages',NULL,NULL),
	(17,17,1,NULL,'2017-12-29 14:18:12','en','Funkcie','http://wameis.org',NULL),
	(18,18,1,'','2018-01-02 08:59:37','en','Funkcie','funkcie',NULL),
	(19,19,1,'','2018-01-02 09:04:23','en','Riešenia','riesenia',NULL),
	(20,20,1,'','2018-01-02 09:04:52','en','Dokumentácia','dokumentacia',NULL),
	(21,21,1,'','2018-01-02 09:05:15','en','Demo','demo',NULL),
	(22,22,1,'','2018-01-02 09:05:37','en','Aktuality','aktuality',NULL),
	(23,23,1,'','2018-01-02 09:06:00','en','Viac','viac',NULL);



# Dump of table wame_position
# ------------------------------------------------------------

TRUNCATE TABLE `wame_position`;

INSERT INTO `wame_position` (`id`, `name`, `create_date`, `status`, `parameters`, `create_user_id`, `in_list`)
VALUES
	(1,X'68656164','2017-06-05 12:05:42',1,NULL,NULL,1),
	(2,X'636F72654C61796F7574486561646572','2017-06-05 12:05:45',1,NULL,NULL,1),
	(3,X'686F6D657061676544656661756C74546F70','2017-06-05 12:05:45',1,NULL,NULL,1),
	(4,X'686F6D657061676544656661756C74436F6E74656E74','2017-06-05 12:05:45',0,NULL,NULL,1),
	(5,X'686F6D657061676544656661756C74426F74746F6D','2017-06-05 12:05:45',1,NULL,NULL,1),
	(6,X'636F72654C61796F7574466F6F746572','2017-06-05 12:05:45',1,NULL,NULL,1),
	(7,X'757365725369676E496E546F70','2017-06-08 11:29:46',1,NULL,NULL,1),
	(8,X'757365725369676E496E426F74746F6D','2017-06-08 11:29:47',1,NULL,NULL,1),
	(9,X'757365725369676E5570546F70','2017-06-08 13:10:58',1,NULL,NULL,1),
	(10,X'757365725369676E5570426F74746F6D','2017-06-08 13:10:59',1,NULL,NULL,1),
	(11,X'7573657250617373776F7264466F72676F74546F70','2017-06-08 13:23:47',1,NULL,NULL,1),
	(12,X'7573657250617373776F7264466F72676F74426F74746F6D','2017-06-08 13:23:47',1,NULL,NULL,1),
	(13,X'61646D696E4865616465725269676874','2017-06-08 14:35:45',1,'{container: {tag: ul, class: right hide-on-med-and-down}}',1,1),
	(14,X'61646D696E4265666F7265436F6E74656E74','2017-06-08 14:35:45',1,NULL,1,1),
	(15,X'61646D696E4166746572436F6E74656E74','2017-06-08 14:35:45',1,NULL,1,1),
	(16,X'70726F66696C65','2017-06-08 14:50:13',1,NULL,1,1),
	(17,X'736C69646572536C69646531','2017-07-11 15:27:12',1,NULL,1,0),
	(18,X'636F72654C61796F7574466F6F746572426F74746F6D','2017-07-12 11:16:05',1,NULL,1,1),
	(19,X'636F72654C61796F75744865616465724C6F676F','2017-07-13 15:06:19',1,NULL,1,1),
	(20,X'686F6D657061676544656661756C74436F6E74656E74','2017-07-14 12:43:05',1,NULL,1,1),
	(21,X'6265666F72654F666665724C697374','2017-07-14 13:45:39',1,NULL,1,1),
	(22,X'6F66666572436F6E74726F6C546F70','2017-07-14 13:45:39',1,NULL,1,1),
	(23,X'61667465724F666665724C697374','2017-07-14 13:45:39',1,NULL,1,1),
	(24,X'6F66666572','2017-07-14 15:10:26',1,NULL,1,1),
	(25,X'6F666665725269676874','2017-07-14 15:10:26',1,NULL,1,1),
	(26,X'6F6666657273','2017-07-17 09:33:22',1,NULL,1,1),
	(27,X'6265666F726541727469636C654C697374','2017-07-17 10:49:16',1,NULL,1,1),
	(28,X'61727469636C65436F6E74726F6C546F70','2017-07-17 10:49:16',1,NULL,1,1),
	(29,X'616674657241727469636C654C697374','2017-07-17 10:49:16',1,NULL,1,1),
	(30,X'757365725369676E436F6D6D6F6E436F6E74656E74','2017-07-19 10:39:07',1,NULL,NULL,1),
	(31,X'757365725369676E5570436F6E74656E74','2017-07-20 10:33:57',1,NULL,NULL,1),
	(32,X'757365725369676E496E436F6E74656E74','2017-07-20 10:34:06',1,NULL,NULL,1),
	(33,X'61727469636C65436F6E74726F6C426F74746F6D','2017-07-20 17:22:17',1,NULL,1,1),
	(34,X'7573657250726F66696C65546F70','2017-08-01 10:33:55',1,NULL,1,1),
	(35,X'7573657254657374436F6E74726F6C','2017-08-01 10:43:16',0,NULL,1,1),
	(36,X'75736572436F6E74726F6C','2017-08-01 10:58:17',1,NULL,1,1),
	(37,X'696D616765546F70436F6E74726F6C','2017-08-01 13:04:27',1,NULL,1,1),
	(38,X'6F666665724C697374546F70436F6E74726F6C','2017-08-02 16:48:45',1,NULL,1,1),
	(39,X'6F666665724C6973745468756D626E61696C506167426F74746F6D436F6E74726F6C','2017-08-02 16:48:45',1,'{container: {tag: \"\"}}',1,1),
	(40,X'6F666665724C6973745468756D626E61696C73506167426F74746F6D436F6E74726F6C','2017-08-02 17:04:04',1,NULL,1,1),
	(41,X'6F666665724C697374426F74746F6D436F6E74726F6C','2017-08-02 17:09:33',1,NULL,1,1),
	(42,X'6F66666572426F74746F6D','2017-08-03 09:07:56',1,NULL,1,1),
	(43,X'6F66666572546F70','2017-08-03 09:25:56',1,NULL,1,1),
	(44,X'6F6666657253686F77','2017-08-03 18:05:42',1,NULL,1,1),
	(45,X'61646D696E53686F7755736572486561646572','2017-08-08 18:09:13',1,NULL,1,1),
	(46,X'61646D696E53686F7755736572436F6E74656E74','2017-08-08 18:09:13',1,NULL,1,1),
	(47,X'67726964','2017-08-09 10:28:27',1,NULL,1,1),
	(48,X'7573657250726F66696C65436F6E74656E74','2017-08-14 11:31:19',1,NULL,1,1),
	(49,X'6265666F7265506172616D657465724C697374','2017-08-14 11:47:23',1,NULL,1,1),
	(50,X'6166746572506172616D657465724C697374','2017-08-14 11:47:23',1,NULL,1,1),
	(51,X'6D657373616765546F70','2017-08-18 11:22:01',1,NULL,1,1),
	(52,X'6D657373616765436F6E74656E74','2017-08-18 11:22:01',1,NULL,1,1),
	(53,X'6D657373616765426F74746F6D','2017-08-18 11:22:01',1,NULL,1,1),
	(54,X'7573657250726F66696C654865616465725269676874','2017-09-05 10:54:20',1,NULL,1,1),
	(55,X'61646D696E55736572436F6D70616E79526967687450616E656C','2017-09-05 12:10:52',1,NULL,1,1),
	(56,X'61646D696E4865616465724C656674','2017-09-05 12:11:57',1,'{container: {tag: ul, class: left hide-on-med-and-down}}',NULL,1);


# Dump of table wame_position_lang
# ------------------------------------------------------------

TRUNCATE TABLE `wame_position_lang`;

INSERT INTO `wame_position_lang` (`id`, `position_id`, `edit_user_id`, `lang`, `title`, `description`, `edit_date`)
VALUES
	(1,1,NULL,'en','head',NULL,'2017-06-05 12:05:42'),
	(2,2,NULL,'en','coreLayoutHeader',NULL,'2017-06-05 12:05:45'),
	(3,3,NULL,'en','homepageDefaultTop',NULL,'2017-06-05 12:05:45'),
	(4,4,NULL,'en','homepageDefaultContent',NULL,'2017-06-05 12:05:45'),
	(5,5,NULL,'en','homepageDefaultBottom',NULL,'2017-06-05 12:05:45'),
	(6,6,NULL,'en','coreLayoutFooter',NULL,'2017-06-05 12:05:45'),
	(7,7,NULL,'en','userSignInTop',NULL,'2017-06-08 11:29:46'),
	(8,8,NULL,'en','userSignInBottom',NULL,'2017-06-08 11:29:47'),
	(9,9,NULL,'en','userSignUpTop',NULL,'2017-06-08 13:10:58'),
	(10,10,NULL,'en','userSignUpBottom',NULL,'2017-06-08 13:10:59'),
	(12,11,NULL,'en','userPasswordForgotTop',NULL,'2017-06-08 13:23:47'),
	(13,12,NULL,'en','userPasswordForgotBottom',NULL,'2017-06-08 13:23:47'),
	(14,13,1,'en','adminHeaderRight',NULL,'2017-06-08 14:35:45'),
	(15,14,1,'en','adminBeforeContent',NULL,'2017-06-08 14:35:45'),
	(16,15,1,'en','adminAfterContent',NULL,'2017-06-08 14:35:45'),
	(17,16,1,'en','profile',NULL,'2017-06-08 14:50:13'),
	(18,17,1,'en','sliderSlide1',NULL,'2017-07-11 15:27:12'),
	(19,18,1,'en','coreLayoutFooterBottom',NULL,'2017-07-12 11:16:05'),
	(20,19,1,'en','coreLayoutHeaderLogo',NULL,'2017-07-13 15:06:19'),
	(21,20,1,'en','homepageDefaultContent',NULL,'2017-07-14 12:43:05'),
	(22,21,1,'en','beforeOfferList',NULL,'2017-07-14 13:45:39'),
	(23,22,1,'en','offerControlTop',NULL,'2017-07-14 13:45:39'),
	(24,23,1,'en','afterOfferList',NULL,'2017-07-14 13:45:39'),
	(25,24,1,'en','offer',NULL,'2017-07-14 15:10:26'),
	(26,25,1,'en','offerRight',NULL,'2017-07-14 15:10:26'),
	(27,26,1,'en','offers',NULL,'2017-07-17 09:33:22'),
	(28,27,1,'en','beforeArticleList',NULL,'2017-07-17 10:49:16'),
	(29,28,1,'en','articleControlTop',NULL,'2017-07-17 10:49:16'),
	(30,29,1,'en','afterArticleList',NULL,'2017-07-17 10:49:16'),
	(31,30,NULL,'en','userSignCommonContent',NULL,'2017-07-19 10:39:07'),
	(32,31,NULL,'en','userSignUpContent',NULL,'2017-07-20 10:33:57'),
	(33,32,NULL,'en','userSignInContent',NULL,'2017-07-20 10:34:06'),
	(34,33,1,'en','articleControlBottom',NULL,'2017-07-20 17:22:17'),
	(35,34,1,'en','userProfileTop',NULL,'2017-08-01 10:33:55'),
	(36,35,1,'en','userTestControl',NULL,'2017-08-01 10:43:16'),
	(37,36,1,'en','userControl',NULL,'2017-08-01 10:58:17'),
	(38,37,1,'en','imageTopControl',NULL,'2017-08-01 13:04:27'),
	(39,38,1,'en','offerListTopControl',NULL,'2017-08-02 16:48:45'),
	(40,39,1,'en','offerListBottomControl','','2017-08-02 17:04:54'),
	(41,40,1,'en','offerListThumbnailsPagBottomControl',NULL,'2017-08-02 17:04:04'),
	(42,41,1,'en','offerListBottomControl',NULL,'2017-08-02 17:09:33'),
	(43,42,1,'en','offerBottom',NULL,'2017-08-03 09:07:56'),
	(44,43,1,'en','offerTop',NULL,'2017-08-03 09:25:56'),
	(45,44,1,'en','offerShow',NULL,'2017-08-03 18:05:42'),
	(46,45,1,'en','adminShowUserHeader',NULL,'2017-08-08 18:09:13'),
	(47,46,1,'en','adminShowUserContent',NULL,'2017-08-08 18:09:13'),
	(48,47,1,'en','grid',NULL,'2017-08-09 10:28:27'),
	(49,48,1,'en','userProfileContent',NULL,'2017-08-14 11:31:19'),
	(50,49,1,'en','beforeParameterList',NULL,'2017-08-14 11:47:23'),
	(51,50,1,'en','afterParameterList',NULL,'2017-08-14 11:47:23'),
	(52,51,1,'en','messageTop',NULL,'2017-08-18 11:22:01'),
	(53,52,1,'en','messageContent',NULL,'2017-08-18 11:22:01'),
	(54,53,1,'en','messageBottom',NULL,'2017-08-18 11:22:01'),
	(55,54,1,'en','userProfileHeaderRight',NULL,'2017-09-05 10:54:20'),
	(56,55,1,'en','adminUserCompanyRightPanel',NULL,'2017-09-05 12:10:52'),
	(57,56,NULL,'en','adminHeaderLeft',NULL,'2017-09-05 12:11:57');


# Dump of table wame_router
# ------------------------------------------------------------

TRUNCATE TABLE `wame_router`;

INSERT INTO `wame_router` (`id`, `route`, `lang`, `module`, `presenter`, `action`, `defaults`, `sort`, `sitemap`, `status`, `params`, `parent_id`)
VALUES
	(1,'/[<lang>/]<module>/<presenter>/<action>/[<id>]','en','Homepage','Homepage','default',NULL,-10,1,1,NULL,NULL),
	(2,'/[<lang>/]<module>/<presenter>/<action>/[<id>]','de','Homepage','Homepage','default',NULL,-10,1,1,NULL,NULL),
	(3,'/[<lang>/]api/[v<apiVersion>/]<apiResource>','en','RestApi','RestApi','default','{apiVersion: 1, apiResource: null}',-2,0,1,NULL,NULL),
	(4,'/[<lang>/]api/[v<apiVersion>/]<apiResource>','de','RestApi','RestApi','default','{apiVersion: 1, apiResource: null}',-2,0,1,NULL,NULL),
	(5,'/[<lang>/]login','en','User','Sign','in',NULL,0,1,1,NULL,NULL),
	(6,'/[<lang>/]login','de','User','Sign','in',NULL,0,1,1,NULL,NULL),
	(7,'/[<lang>/]admin/languages','en','','Admin','Language',NULL,0,1,1,NULL,NULL),
	(8,'/[<lang>/]admin/languages','de','','Admin','Language',NULL,0,1,1,NULL,NULL),
	(9,'/[<lang>/]admin/language/create','en','Admin','Language','create',NULL,0,1,1,NULL,NULL),
	(10,'/[<lang>/]admin/language/create','de','Admin','Language','create',NULL,0,1,1,NULL,NULL),
	(11,'/[<lang>/]admin/language/edit/<id>','en','Admin','Language','edit',NULL,0,1,1,NULL,NULL),
	(12,'/[<lang>/]admin/language/edit/<id>','de','Admin','Language','edit',NULL,0,1,1,NULL,NULL),
	(13,'/[<lang>/]admin/language/delete/<id>','en','Admin','Language','delete',NULL,0,1,1,NULL,NULL),
	(14,'/[<lang>/]admin/language/delete/<id>','de','Admin','Language','delete',NULL,0,1,1,NULL,NULL),
	(15,'/[<lang>/]users','en','User','User','default',NULL,0,1,1,NULL,NULL),
	(16,'/[<lang>/]users','de','User','User','default',NULL,0,1,1,NULL,NULL),
	(17,'/[<lang>/]user/<id>','en','User','User','show',NULL,2,1,1,NULL,NULL),
	(18,'/[<lang>/]user/<id>','de','User','User','show',NULL,2,1,1,NULL,NULL),
	(19,'/[<lang>/]logout','en','User','Sign','out',NULL,0,1,1,NULL,NULL),
	(20,'/[<lang>/]logout','de','User','Sign','out',NULL,0,1,1,NULL,NULL),
	(21,'/[<lang>/]registration','en','User','Sign','up',NULL,0,1,1,NULL,NULL),
	(22,'/[<lang>/]registration','de','User','Sign','up',NULL,0,1,1,NULL,NULL),
	(23,'/[<lang>/]profile','en','User','Profile','default',NULL,0,1,1,NULL,NULL),
	(24,'/[<lang>/]profile','de','User','Profile','default',NULL,0,1,1,NULL,NULL),
	(25,'/[<lang>/]settings','en','User','Settings','default',NULL,0,1,1,NULL,NULL),
	(26,'/[<lang>/]settings','de','User','Settings','default',NULL,0,1,1,NULL,NULL),
	(27,'/[<lang>/]reset-password','en','User','Password','forgot',NULL,0,1,1,NULL,NULL),
	(28,'/[<lang>/]reset-password','de','User','Password','forgot',NULL,0,1,1,NULL,NULL),
	(29,'/[<lang>/]user/company','en','User','Company','default',NULL,0,1,1,NULL,NULL),
	(30,'/[<lang>/]user/company','de','User','Company','default',NULL,0,1,1,NULL,NULL),
	(31,'/[<lang>/]user/company/create','en','User','Company','create',NULL,0,1,1,NULL,NULL),
	(32,'/[<lang>/]user/company/create','de','User','Company','create',NULL,0,1,1,NULL,NULL),
	(33,'/[<lang>/]admin/users','en','Admin','User','default',NULL,0,1,1,NULL,NULL),
	(34,'/[<lang>/]admin/users','de','Admin','User','default',NULL,0,1,1,NULL,NULL),
	(35,'/[<lang>/]admin/user/create','en','Admin','User','create',NULL,0,1,1,NULL,NULL),
	(36,'/[<lang>/]admin/user/create','de','Admin','User','create',NULL,0,1,1,NULL,NULL),
	(37,'/[<lang>/]admin/user/edit/<id>','en','Admin','User','edit',NULL,0,1,1,NULL,NULL),
	(38,'/[<lang>/]admin/user/edit/<id>','de','Admin','User','edit',NULL,0,1,1,NULL,NULL),
	(39,'/[<lang>/]admin/user/delete/<id>','en','Admin','User','delete',NULL,0,1,1,NULL,NULL),
	(40,'/[<lang>/]admin/user/delete/<id>','de','Admin','User','delete',NULL,0,1,1,NULL,NULL),
	(41,'/[<lang>/]sites','en','Site','Site','default',NULL,0,1,1,NULL,NULL),
	(42,'/[<lang>/]sites','de','Site','Site','default',NULL,0,1,1,NULL,NULL),
	(43,'/[<lang>/]site/<id>','en','Site','Site','show',NULL,0,1,1,NULL,NULL),
	(44,'/[<lang>/]site/<id>','de','Site','Site','show',NULL,0,1,1,NULL,NULL),
	(45,'/[<lang>/]site/create','en','Site','Site','create',NULL,0,1,1,NULL,NULL),
	(46,'/[<lang>/]site/create','de','Site','Site','create',NULL,0,1,1,NULL,NULL),
	(47,'/[<lang>/]site/edit/<id>','en','Site','Site','edit',NULL,0,1,1,NULL,NULL),
	(48,'/[<lang>/]site/edit/<id>','de','Site','Site','edit',NULL,0,1,1,NULL,NULL),
	(49,'/[<lang>/]my-site','en','Site','Site','my',NULL,0,1,1,NULL,NULL),
	(50,'/[<lang>/]my-site','de','Site','Site','my',NULL,0,1,1,NULL,NULL),
	(51,'/[<lang>/]admin/sites','en','Admin','Site','default',NULL,0,1,1,NULL,NULL),
	(52,'/[<lang>/]admin/sites','de','Admin','Site','default',NULL,0,1,1,NULL,NULL),
	(53,'/[<lang>/]admin/site/create','en','Admin','Site','create',NULL,0,1,1,NULL,NULL),
	(54,'/[<lang>/]admin/site/create','de','Admin','Site','create',NULL,0,1,1,NULL,NULL),
	(55,'/[<lang>/]admin/site/edit/<id>','en','Admin','Site','edit',NULL,0,1,1,NULL,NULL),
	(56,'/[<lang>/]admin/site/edit/<id>','de','Admin','Site','edit',NULL,0,1,1,NULL,NULL),
	(57,'/[<lang>/]admin/site/delete/<id>','en','Admin','Site','delete',NULL,0,1,1,NULL,NULL),
	(58,'/[<lang>/]admin/site/delete/<id>','de','Admin','Site','delete',NULL,0,1,1,NULL,NULL),
	(59,'/[<lang>/]admin/dashboard','en','Admin','Dashboard','default',NULL,0,1,1,NULL,NULL),
	(60,'/[<lang>/]admin/dashboard','de','Admin','Dashboard','default',NULL,0,1,1,NULL,NULL),
	(61,'/[<lang>/]admin/file/default','en','Admin','File','default',NULL,0,1,1,NULL,NULL),
	(62,'/[<lang>/]admin/file/default','de','Admin','File','default',NULL,0,1,1,NULL,NULL),
	(63,'/[<lang>/]admin/files','en','Admin','File','create',NULL,0,1,1,NULL,NULL),
	(64,'/[<lang>/]admin/files','de','Admin','File','create',NULL,0,1,1,NULL,NULL),
	(65,'/[<lang>/]admin/file/edit/<id>','en','Admin','File','edit',NULL,0,1,1,NULL,NULL),
	(66,'/[<lang>/]admin/file/edit/<id>','de','Admin','File','edit',NULL,0,1,1,NULL,NULL),
	(67,'/[<lang>/]admin/file/delete/<id>','en','Admin','File','delete',NULL,0,1,1,NULL,NULL),
	(68,'/[<lang>/]admin/file/delete/<id>','de','Admin','File','delete',NULL,0,1,1,NULL,NULL),
	(69,'/[<lang>/]social/<action>','en','Social','Social','default',NULL,0,1,1,NULL,NULL),
	(70,'/[<lang>/]social/<action>','de','Social','Social','default',NULL,0,1,1,NULL,NULL),
	(71,'[<lang>/]admin/category/<id>','en','Admin','Category','default',NULL,0,0,1,NULL,NULL),
	(72,'[<lang>/]admin/category/<id>','de','Admin','Category','default',NULL,0,0,1,NULL,NULL),
	(73,'/[<lang>/]categories/<type>','en','Category','Category','default',NULL,0,1,1,NULL,NULL),
	(74,'/[<lang>/]categories/<type>','de','Category','Category','default',NULL,0,1,1,NULL,NULL),
	(75,'/[<lang>/]category/<id>','en','Category','Category','show',NULL,0,1,1,NULL,NULL),
	(76,'/[<lang>/]category/<id>','de','Category','Category','show',NULL,0,1,1,NULL,NULL),
	(77,'/[<lang>/]admin/category/create/<id>','en','Admin','Category','create',NULL,0,1,1,NULL,NULL),
	(78,'/[<lang>/]admin/category/create/<id>','de','Admin','Category','create',NULL,0,1,1,NULL,NULL),
	(79,'/[<lang>/]admin/category/edit/<id>','en','Admin','Category','edit',NULL,0,1,1,NULL,NULL),
	(80,'/[<lang>/]admin/category/edit/<id>','de','Admin','Category','edit',NULL,0,1,1,NULL,NULL),
	(81,'/[<lang>/]admin/category/delete/<id>','en','Admin','Category','delete',NULL,0,1,1,NULL,NULL),
	(82,'/[<lang>/]admin/category/delete/<id>','de','Admin','Category','delete',NULL,0,1,1,NULL,NULL),
	(83,'/[<lang>/]articles','en','Article','Article','default',NULL,0,1,1,NULL,NULL),
	(84,'/[<lang>/]articles','de','Article','Article','default',NULL,0,1,1,NULL,NULL),
	(85,'/[<lang>/]article/<id>','en','Article','Article','show',NULL,0,1,1,NULL,NULL),
	(86,'/[<lang>/]article/<id>','de','Article','Article','show',NULL,0,1,1,NULL,NULL),
	(87,'/[<lang>/]admin/article','en','Admin','Article','default',NULL,0,1,1,NULL,NULL),
	(88,'/[<lang>/]admin/article','de','Admin','Article','default',NULL,0,1,1,NULL,NULL),
	(89,'/[<lang>/]admin/article/create','en','Admin','Article','create',NULL,0,1,1,NULL,NULL),
	(90,'/[<lang>/]admin/article/create','de','Admin','Article','create',NULL,0,1,1,NULL,NULL),
	(91,'/[<lang>/]admin/article/edit/<id>','en','Admin','Article','edit',NULL,0,1,1,NULL,NULL),
	(92,'/[<lang>/]admin/article/edit/<id>','de','Admin','Article','edit',NULL,0,1,1,NULL,NULL),
	(93,'/[<lang>/]admin/article/delete/<id>','en','Admin','Article','delete',NULL,0,1,1,NULL,NULL),
	(94,'/[<lang>/]admin/article/delete/<id>','de','Admin','Article','delete',NULL,0,1,1,NULL,NULL),
	(95,'/[<lang>/]admin/emails','en','Admin','Email','default',NULL,0,1,1,NULL,NULL),
	(96,'/[<lang>/]admin/emails','de','Admin','Email','default',NULL,0,1,1,NULL,NULL),
	(97,'/[<lang>/]admin/email/create','en','Admin','Email','create',NULL,0,1,1,NULL,NULL),
	(98,'/[<lang>/]admin/email/create','de','Admin','Email','create',NULL,0,1,1,NULL,NULL),
	(99,'/[<lang>/]admin/email/edit/<id>','en','Admin','Email','edit',NULL,0,1,1,NULL,NULL),
	(100,'/[<lang>/]admin/email/edit/<id>','de','Admin','Email','edit',NULL,0,1,1,NULL,NULL),
	(101,'/[<lang>/]admin/email/delete/<id>','en','Admin','Email','delete',NULL,0,1,1,NULL,NULL),
	(102,'/[<lang>/]admin/email/delete/<id>','de','Admin','Email','delete',NULL,0,1,1,NULL,NULL),
	(103,'/[<lang>/]verify-account','en','User','Verify','default',NULL,0,1,1,NULL,NULL),
	(104,'/[<lang>/]verify-account','de','User','Verify','default',NULL,0,1,1,NULL,NULL),
	(105,'/[<lang>/]offers','en','Offer','Offer','default',NULL,0,1,1,NULL,NULL),
	(106,'/[<lang>/]offers','de','Offer','Offer','default',NULL,0,1,1,NULL,NULL),
	(107,'/[<lang>/]offer/<id>','en','Offer','Offer','show',NULL,0,1,1,NULL,NULL),
	(108,'/[<lang>/]offer/<id>','de','Offer','Offer','show',NULL,0,1,1,NULL,NULL),
	(109,'/[<lang>/]offer/create','en','Offer','Offer','create',NULL,0,1,1,NULL,NULL),
	(110,'/[<lang>/]offer/create','de','Offer','Offer','create',NULL,0,1,1,NULL,NULL),
	(111,'/[<lang>/]offer/edit/<id>','en','Offer','Offer','edit',NULL,0,1,1,NULL,NULL),
	(112,'/[<lang>/]offer/edit/<id>','de','Offer','Offer','edit',NULL,0,1,1,NULL,NULL),
	(113,'/[<lang>/]admin/offers','en','Admin','Offer','default',NULL,0,1,1,NULL,NULL),
	(114,'/[<lang>/]admin/offers','de','Admin','Offer','default',NULL,0,1,1,NULL,NULL),
	(115,'/[<lang>/]admin/offer/create','en','Admin','Offer','create',NULL,0,1,1,NULL,NULL),
	(116,'/[<lang>/]admin/offer/create','de','Admin','Offer','create',NULL,0,1,1,NULL,NULL),
	(117,'/[<lang>/]admin/offer/edit/<id>','en','Admin','Offer','edit',NULL,0,1,1,NULL,NULL),
	(118,'/[<lang>/]admin/offer/edit/<id>','de','Admin','Offer','edit',NULL,0,1,1,NULL,NULL),
	(119,'/[<lang>/]admin/offer/delete/<id>','en','Admin','Offer','delete',NULL,0,1,1,NULL,NULL),
	(120,'/[<lang>/]admin/offer/delete/<id>','de','Admin','Offer','delete',NULL,0,1,1,NULL,NULL),
	(121,'/[<lang>/]admin/units','en','Admin','Unit','default',NULL,0,1,1,NULL,NULL),
	(122,'/[<lang>/]admin/units','de','Admin','Unit','default',NULL,0,1,1,NULL,NULL),
	(123,'/[<lang>/]admin/unit/create','en','Admin','Unit','create',NULL,0,1,1,NULL,NULL),
	(124,'/[<lang>/]admin/unit/create','de','Admin','Unit','create',NULL,0,1,1,NULL,NULL),
	(125,'/[<lang>/]admin/unit/edit/<id>','en','Admin','Unit','edit',NULL,0,1,1,NULL,NULL),
	(126,'/[<lang>/]admin/unit/edit/<id>','de','Admin','Unit','edit',NULL,0,1,1,NULL,NULL),
	(127,'/[<lang>/]admin/unit/delete/<id>','en','Admin','Unit','delete',NULL,0,1,1,NULL,NULL),
	(128,'/[<lang>/]admin/unit/delete/<id>','de','Admin','Unit','delete',NULL,0,1,1,NULL,NULL),
	(129,'/[<lang>/]products','en','ShopProduct','ShopProduct','default',NULL,0,1,1,NULL,NULL),
	(130,'/[<lang>/]products','de','ShopProduct','ShopProduct','default',NULL,0,1,1,NULL,NULL),
	(131,'/[<lang>/]product/<id>','en','ShopProduct','ShopProduct','show',NULL,0,1,1,NULL,NULL),
	(132,'/[<lang>/]product/<id>','de','ShopProduct','ShopProduct','show',NULL,0,1,1,NULL,NULL),
	(133,'/[<lang>/]my-products','en','ShopProduct','ShopProduct','my',NULL,0,1,1,NULL,NULL),
	(134,'/[<lang>/]my-products','de','ShopProduct','ShopProduct','my',NULL,0,1,1,NULL,NULL),
	(135,'/[<lang>/]product/create','en','ShopProduct','ShopProduct','create',NULL,0,1,1,NULL,NULL),
	(136,'/[<lang>/]product/create','de','ShopProduct','ShopProduct','create',NULL,0,1,1,NULL,NULL),
	(137,'/[<lang>/]product/edit/<id>','en','ShopProduct','ShopProduct','edit',NULL,0,1,1,NULL,NULL),
	(138,'/[<lang>/]product/edit/<id>','de','ShopProduct','ShopProduct','edit',NULL,0,1,1,NULL,NULL),
	(139,'/[<lang>/]admin/products','en','Admin','ShopProduct','default',NULL,0,1,1,NULL,NULL),
	(140,'/[<lang>/]admin/products','de','Admin','ShopProduct','default',NULL,0,1,1,NULL,NULL),
	(141,'/[<lang>/]admin/product/create','en','Admin','ShopProduct','create',NULL,0,1,1,NULL,NULL),
	(142,'/[<lang>/]admin/product/create','de','Admin','ShopProduct','create',NULL,0,1,1,NULL,NULL),
	(143,'/[<lang>/]admin/product/edit/<id>','en','Admin','ShopProduct','edit',NULL,0,1,1,NULL,NULL),
	(144,'/[<lang>/]admin/product/edit/<id>','de','Admin','ShopProduct','edit',NULL,0,1,1,NULL,NULL),
	(145,'/[<lang>/]admin/product/delete/<id>','en','Admin','ShopProduct','delete',NULL,0,1,1,NULL,NULL),
	(146,'/[<lang>/]admin/product/delete/<id>','de','Admin','ShopProduct','delete',NULL,0,1,1,NULL,NULL),
	(147,'/[<lang>/]product-sets','en','ShopProductSet','ShopProductSet','default',NULL,0,1,1,NULL,NULL),
	(148,'/[<lang>/]product-sets','de','ShopProductSet','ShopProductSet','default',NULL,0,1,1,NULL,NULL),
	(149,'/[<lang>/]product-set/<id>','en','ShopProductSet','ShopProductSet','show',NULL,0,1,1,NULL,NULL),
	(150,'/[<lang>/]product-set/<id>','de','ShopProductSet','ShopProductSet','show',NULL,0,1,1,NULL,NULL),
	(151,'/[<lang>/]product-set/create','en','ShopProductSet','ShopProductSet','create',NULL,0,1,1,NULL,NULL),
	(152,'/[<lang>/]product-set/create','de','ShopProductSet','ShopProductSet','create',NULL,0,1,1,NULL,NULL),
	(153,'/[<lang>/]product-set/edit/<id>','en','ShopProductSet','ShopProductSet','edit',NULL,0,1,1,NULL,NULL),
	(154,'/[<lang>/]product-set/edit/<id>','de','ShopProductSet','ShopProductSet','edit',NULL,0,1,1,NULL,NULL),
	(155,'/[<lang>/]my-product-sets','en','ShopProductSet','ShopProductSet','my',NULL,0,1,1,NULL,NULL),
	(156,'/[<lang>/]my-product-sets','de','ShopProductSet','ShopProductSet','my',NULL,0,1,1,NULL,NULL),
	(157,'/[<lang>/]admin/product-sets','en','Admin','ShopProductSet','default',NULL,0,1,1,NULL,NULL),
	(158,'/[<lang>/]admin/product-sets','de','Admin','ShopProductSet','default',NULL,0,1,1,NULL,NULL),
	(159,'/[<lang>/]admin/product-set/create/<id>','en','Admin','ShopProductSet','create',NULL,0,1,1,NULL,NULL),
	(160,'/[<lang>/]admin/product-set/create/<id>','de','Admin','ShopProductSet','create',NULL,0,1,1,NULL,NULL),
	(161,'/[<lang>/]admin/product-set/edit/<id>','en','Admin','ShopProductSet','edit',NULL,0,1,1,NULL,NULL),
	(162,'/[<lang>/]admin/product-set/edit/<id>','de','Admin','ShopProductSet','edit',NULL,0,1,1,NULL,NULL),
	(163,'/[<lang>/]admin/product-set/delete/<id>','en','Admin','ShopProductSet','delete',NULL,0,1,1,NULL,NULL),
	(164,'/[<lang>/]admin/product-set/delete/<id>','de','Admin','ShopProductSet','delete',NULL,0,1,1,NULL,NULL),
	(165,'/[<lang>/]messages[/<id>][/<f>]','en','Message','Message','default',NULL,0,1,1,NULL,NULL),
	(166,'/[<lang>/]messages[/<id>][/<f>]','de','Message','Message','default',NULL,0,1,1,NULL,NULL),
	(167,'/[<lang>/]message/<id>','en','Message','Message','show',NULL,0,1,1,NULL,NULL),
	(168,'/[<lang>/]message/<id>','de','Message','Message','show',NULL,0,1,1,NULL,NULL);



# Dump of table wame_text_block
# ------------------------------------------------------------


INSERT INTO `wame_text_block` (`id`, `component_id`)
VALUES
	(1,6),
	(2,13),
	(3,21),
	(4,34),
	(5,35),
	(6,36),
	(7,37);


# Dump of table wame_text_block_lang
# ------------------------------------------------------------


INSERT INTO `wame_text_block_lang` (`id`, `text_block_id`, `edit_user_id`, `text`, `edit_date`, `lang`)
VALUES
	(1,1,1,'Let your job find you','2017-07-11 17:02:02','en'),
	(2,2,1,'<h1 align=\"center\">Modul&aacute;rny Informačn&yacute; syst&eacute;m</h1>\n<h2 align=\"center\">CMS, CRM, ERP, eCommerce</h2>\n<h3 align=\"center\">OPEN SOURCE</h3>\n<div align=\"center\">\n<button type=\"button\" class=\"btn btn-success\">SŤIAHNUŤ</button>\n<button type=\"button\" class=\"btn btn-default\">RIEŠENIA</button>\n</div>','2017-12-29 10:51:06','en'),
	(3,3,1,'<p>Create a profile on jobtum a be ready for your next career new opportunity.</p>','2017-07-20 16:26:53','en'),
	(4,4,1,'<p>Stiahni zadarmo a začni svoju cestu kontribútora čo najskôr.</p>\n<p><a class=\"btn btn-success\" href=\"#\" target=\" _blank\" title=\"\" rel=\"\">STIAHNUŤ</a></p>','2017-12-29 18:02:52','en'),
	(5,5,1,'<p>Aj keď je WAME IS poháňaný komunitou, existuje core tím projektu, ktorý Vám rád pomôže.</p>\n<p><a href=\"mailto:info@wameis.org\" target=\" _blank\" title=\"\" rel=\"\">info@wameis.org</a></p>','2017-12-29 18:03:48','en'),
	(6,6,1,'<p>Začni četovať a uč sa pomocôu nášho slacku, ktorý je dostupný 24/7.</p>\n<p><a class=\"btn btn-success\" href=\"#\" target=\" _blank\" title=\"\" rel=\"\">ČETUJ</a></p>','2017-12-29 18:05:16','en'),
	(7,7,1,'<p>\n<span>FOLLOW US:</span>\n<a href=\"https://fb.me/wameis\"><i class=\"fa fa-facebook-square fa-2x\"></i></a>\n<a href=\"https://twitter.com/wame_is\"><i class=\"fa fa-twitter-square fa-2x\"></i></a>\n</p>','2017-12-29 18:06:56','en');

SET FOREIGN_KEY_CHECKS = 1;