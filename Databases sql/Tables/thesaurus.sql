-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2021 at 05:57 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `english`
--

-- --------------------------------------------------------

--
-- Table structure for table `thesaurus`
--

CREATE TABLE `thesaurus` (
  `id` int(11) NOT NULL,
  `word` varchar(100) NOT NULL,
  `syn1` varchar(100) NOT NULL,
  `syn2` varchar(100) NOT NULL,
  `syn3` varchar(100) NOT NULL,
  `syn4` varchar(100) NOT NULL,
  `synonyms` varchar(200) NOT NULL,
  `ant1` varchar(100) NOT NULL,
  `ant2` varchar(100) NOT NULL,
  `antonyms` varchar(200) NOT NULL,
  `sen1` varchar(250) NOT NULL,
  `sen2` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thesaurus`
--

INSERT INTO `thesaurus` (`id`, `word`, `syn1`, `syn2`, `syn3`, `syn4`, `synonyms`, `ant1`, `ant2`, `antonyms`, `sen1`, `sen2`) VALUES
(1, 'Angry', 'Wrathful', 'Furious', 'Enraged', 'Indignant', 'Wrathful,Furious,Enraged,Indignant', 'Calm', 'Pleased', 'Calm,Pleased', 'Trapped inside the molten core of Nevendaar grew angry.', 'She gave her companion an angry glance'),
(2, 'Answer', 'Reply', 'Respond', 'Retort', 'Acknowledge', 'Reply,Respond,Retort,Acknowledge', 'Question', 'Querry', 'Question,Querry', 'She answered all my questions.', 'He answered only three of the test questions correctly'),
(3, 'Ask', 'Question', 'Inquire', 'Query', 'Interrogate', 'Question,Inquire,Query,Interrogate', 'Dismiss', 'Negate', 'Dismiss,Negate', 'I didn\'t ask about his family tree.', 'You must ask him about every small thing'),
(4, 'Awful', 'Dreadful', 'Terrible', 'Abominable', 'Unpleasant', 'Dreadful,Terrible,Abominable,Unpleasant', 'Lovely', 'Good', 'Lovely,Good', 'Martha looked awful but apologized for her actions.', 'We don\'t wish to be eaten by such awful beasts.'),
(5, 'Amazing', 'Incredible', 'Unbelievable', 'Improbable', 'Astonishing', 'Incredible,Unbelievable,Improbable,Astonishing', 'Usual', 'Ordinary', 'Usual,Ordinary', 'It was amazing how a person could change.', ' It was amazing how much they could change in less than a week.'),
(6, 'Beautiful', 'Gorgeous', 'Dazzling', 'Splendid', 'Magnificent', 'Gorgeous,Dazzling,Splendid,Magnificent', 'Awful', 'Ordinary', 'Awful,Ordinary', 'Look at those big gray eyes and that beautiful red hair!', 'You are the most beautiful woman I have ever seen.'),
(7, 'Begin', 'Start', 'Open', 'Launch', 'Initiate', 'Start,Open,Launch,Initiate', 'End', 'Cease', 'End,Cease', 'They will begin construction on the new school soon.', 'I got the job and I begin work on Monday! '),
(8, 'Big', 'Enormous', 'Huge', 'Immense', 'Gigantic', 'Enormous,Huge,Immense,Gigantic', 'Small', 'Tiny', 'Small,Tiny', 'It was a very big room.', 'She gave him a big smile.'),
(9, 'Brave', 'Courageous', 'Fearless', 'Dauntless', 'Intrepid', 'Courageous,Fearless,Dauntless,Intrepid', 'Cowardy', 'Fearful', 'Cowardy,Fearful', 'He was brave now that he faced only a woman', 'Her eyes watered at his brave words, and she hugged him.'),
(10, 'Bad', 'Depraved', 'Rotten', 'Contaminated', 'Sinful', 'Depraved,Rotten,Contaminated,Sinful', 'Good', 'Excellent', 'Good,Excellent', ' I just had a bad dream.', 'It\'s kind of small, but the rent isn\'t too bad, and it\'ll be available by then.'),
(11, 'Calm', 'Quiet', 'Peaceful', 'Unruffled', 'Tranquil', 'Quiet,Peaceful,Unruffled,Tranquil', 'Windy', 'Stormy', 'Windy,Stormy', 'Please calm yourself down.', 'The natural day is very calm'),
(12, 'Come', 'Approach', 'Advance', 'Near', 'Arrive', 'Approach,Advance,Near,Arrive', 'Go', 'Flee', 'Go,Flee', 'Come here.', 'I can come back'),
(13, 'Cool', 'Chilly', 'Cold', 'Frosty', 'Frigid', 'Chilly,Cold,Frosty,Frigid', 'Warm', 'Hot', 'Warm,Hot', 'How cool and delicious it was!', 'She ate the meat and drank some of the cool water.'),
(14, 'Crooked', 'Bent', 'Twisted', 'Zigzag', 'Hooked', 'Bent,Twisted,Zigzag,Hooked', 'Honest', 'Straight', 'Honest,Straight', 'The roads were crooked and muddy and rough. ', 'He was the most stunning man she\'d ever seen despite his crooked nose.'),
(15, 'Cry', 'Weep', 'Wail', 'Sob', 'Bawl', 'Weep,Wail,Sob,Bawl', 'Laugh', 'Smile', 'Laugh,Smile', 'There she collapsed on the bed and started to cry', 'I don\'t cry that much. '),
(16, 'Dangerous', 'Perilous', 'Hazardous', 'Risky', 'Uncertain', 'Perilous,Hazardous,Risky,Uncertain', 'Harmless', 'Safe', 'Harmless,Safe', 'You\'re treading on dangerous ground. ', ' If it was so dangerous out there in the woods, why did Giddon feel so safe? '),
(17, 'Dark', 'Shadowy', 'Unlit', 'Murky', 'Gloomy', 'Shadowy,Unlit,Murky,Gloomy', 'Light', 'Bright', 'Light,Bright', 'He looked tall and lean in a dark suit. ', 'At the kitchen door she nearly ran into a dark form'),
(18, 'Decide', 'Determine', 'Settle', 'Choose', 'Resolve', 'Determine,Settle,Choose,Resolve', 'disagree', 'begin', 'disagree,begin', 'I hope you decide to take the job.', 'But you must decide on something!'),
(19, 'Definite', 'Certain', 'Sure', 'Positive', 'Determined', 'Certain,Sure,Positive,Determined', 'fuzzy', 'obscure', 'fuzzy,obscure', 'That woman has a definite problem.', 'He obviously had something definite on his mind.'),
(20, 'Delicious', 'Savory', 'Delectable', 'Appetizing', 'Luscious', 'Savory,Delectable,Appetizing,Luscious', 'inedible', 'unpalatable', 'inedible,unpalatable', 'She met that delicious chocolate gaze and smiled.', 'He looked delicious in that dark suit. '),
(21, 'Eager', 'Keen', 'Fervent', 'Enthusiastic', 'Involved', 'Keen,Fervent,Enthusiastic,Involved', 'uninterested', 'emotionless', 'uninterested,emotionless', 'Betsy was more than eager to comply.', 'He seemed eager to talk all night.'),
(22, 'End', 'Stop', 'Finish', 'Terminate', 'Conclude', 'Stop,Finish,Terminate,Conclude', 'start', 'begin', 'start,begin', 'The end glowed as he inhaled.', 'The light was coming from under a closed door at the end of a hallway.'),
(23, 'Enjoy', 'Appreciate', 'Delight In', 'Be Pleased', 'Indulge In', 'Appreciate,Delight In,Be Pleased,Indulge In', 'dislike', 'lack', 'dislike,lack', '\"We really enjoyed your company tonight.', 'I am really enjoying this sunshine'),
(24, 'Explain', 'Elaborate', 'Clarify', 'Define', 'Interpret', 'Elaborate,Clarify,Define,Interpret', 'obscure', 'hide', 'obscure,hide', 'Let him explain all of it to his mother.', 'It was hard to explain how her beauty was different than so many others, but it was.'),
(25, 'encourage', 'Cheer', 'Uplift', 'Inspire', 'Motivate', 'Cheer,Uplift,Inspire,Motivate', 'discourage ', 'unsupportive', 'discourage ,unsupportive', 'I think you will not encourage him', ' It was intended to encourage her, but it was more a distraction.'),
(26, 'Fair', 'Just', 'Impartial', 'Unbiased', 'Objective', 'Just,Impartial,Unbiased,Objective', 'unfair', 'dark', 'unfair,dark', 'Each student should receive a fair amount of the prize.', 'He gave you fair warning that he would do that.'),
(27, 'Fall', 'Drop', 'Descend', 'Plunge', 'Topple', 'Drop,Descend,Plunge,Topple', 'rise', 'get up', 'rise,get up', 'The leaves broke his fall from the tree.', 'She had a nasty fall.'),
(28, 'Funny', 'Humorous', 'Amusing', 'Droll', 'Laughable', 'Humorous,Amusing,Droll,Laughable', 'serios', 'tragic', 'serios,tragic', 'That child is so funny.', 'The dance of that candidate was so funny.'),
(29, 'Fast', 'Quick', 'Rapid', 'Hasty', 'Swiftly', 'Quick,Rapid,Hasty,Swiftly', 'slow', 'steady', 'slow,steady', 'How fast was I going? ', 'Just as fast, she looked away.'),
(30, 'Fat', 'Stout', 'Corpulent', 'Paunchy', 'Plump', 'Stout,Corpulent,Paunchy,Plump', 'thin', 'skinny', 'thin,skinny', 'I feel fat and lazy.', 'he never went on no fat diet. '),
(31, 'Get', 'Acquire', 'Obtain', 'Secure', 'Procure', 'Acquire,Obtain,Secure,Procure', 'give', 'send', 'give,send', 'Let\'s get the kids ready to go.', 'Let\'s get in out of this cold wind.'),
(32, 'Go', 'Recede', 'Depart', 'Fade', 'Disappear', 'Recede,Depart,Fade,Disappear', 'come', 'arrive', 'come,arrive', 'Alex would make the misery go away. ', 'Maybe we should go home.'),
(33, 'Good', 'Excellent', 'Apt', 'Marvelous', 'Qualified', 'Excellent,Apt,Marvelous,Qualified', 'bad', 'wicked', 'bad,wicked', 'It was a good thing they were going home tomorrow. ', 'You have a good family. '),
(34, 'Great', 'Noteworthy', 'Worthy', 'Distinguished', 'Remarkable', 'Noteworthy,Worthy,Distinguished,Remarkable', 'little', 'small', 'little,small', 'But you went to great lengths to help her. ', 'You\'re doing a great job.'),
(35, 'Gross', 'Improper', 'Rude', 'Coarse', 'Indecent', 'Improper,Rude,Coarse,Indecent', 'invisible', 'decent', 'invisible,decent', 'They have suffered a gross injustice. ', 'She has a gross habit of chewing on the ends of her hair. '),
(36, 'Happy', 'Pleased', 'Contented', 'Satisfied', 'Delighted', 'Pleased,Contented,Satisfied,Delighted', 'sad', 'upset', 'sad,upset', 'I am happy to see you at my place.', 'she wasn\'t happy with the way her parents lived. '),
(37, 'Hate', 'Despise', 'Loathe', 'Detest', 'Abhor', 'Despise,Loathe,Detest,Abhor', 'Love', 'affection', 'Love,affection', 'I hate to see things done by halves', ' He that fears you present, will hate you absent.'),
(38, 'Have', 'Acquire', 'Gain', 'Maintain', 'Believe', 'Acquire,Gain,Maintain,Believe', 'send', 'give', 'send,give', 'It is a little speech that I have written for him.', 'You have done well'),
(39, 'Help', 'Aid', 'Assist', 'Succor', 'Encourage', 'Aid,Assist,Succor,Encourage', 'hinder', 'refrain', 'hinder,refrain', 'Help is on the way. ', 'he could help in that difficulty.'),
(40, 'Hide', 'Conceal', 'Camouflage', 'Shroud', 'Veil', 'Conceal,Camouflage,Shroud,Veil', 'flaunt', 'expose', 'flaunt,expose', 'You hide everything that is lovely.', 'He did nothing but hide the truth from you.'),
(41, 'Important', 'Necessary', 'Vital', 'Critical', 'Indispensable', 'Necessary,Vital,Critical,Indispensable', 'unimportant', 'inessential', 'unimportant,inessential', 'Scientists have made an important discovery. ', 'In his editorial, he made several important points. '),
(42, 'Interesting', 'Fascinating', 'Bright', 'Intelligent', 'Animated', 'Fascinating,Bright,Intelligent,Animated', 'uninteresting', 'boring', 'uninteresting,boring', ' It is very interesting to watch a plant grow.', 'She had an interesting perspective'),
(43, 'Immortal', 'Everlasting', 'Timeless', 'Eternal', 'Perpetual', 'Everlasting,Timeless,Eternal,Perpetual', 'mortal', 'obscure', 'mortal,obscure', 'No man was ever immortal. ', 'A writer becomes immortal through his writings. '),
(44, 'Immovable', 'fixed', 'set ', 'static', 'stationary', 'fixed,set ,static,stationary', 'mobile', 'fickle', 'mobile,fickle', 'Second immovable parasitic larva casting its skin.', 'The dying man lay as lifeless and immovable as before.'),
(45, 'intelligent', 'sharp', 'quick', 'brilliant', 'canny', 'sharp,quick,brilliant,canny', 'duffer', 'stupid', 'duffer,stupid', 'They\'re intelligent kids ', 'I want someone who can contribute intelligent conversation'),
(46, 'Joyous', 'joyful', 'cheerful', 'merry', ' festive', 'joyful,cheerful,merry, festive', 'sad', 'miserable', 'sad,miserable', 'Loud, coarse laughter and joyous shouts ensued.', 'The result was celebrated by joyous festivities in all the East. '),
(47, 'Jump', 'Skip', 'Bounce', 'Leap', 'Hop', 'Skip,Bounce,Leap,Hop', 'ascent', 'decline', 'ascent,decline', 'Bison can jump six feet high.', 'Would anyone not jump in anyway? '),
(48, 'justify', 'explain', 'support', 'approve', 'uphold', 'explain,support,approve,uphold', 'deny', 'contradict', 'deny,contradict', 'we are at war does not justify treating innocent people as criminals.', 'Justify your statement.'),
(49, 'Juice', 'extract', 'liquid', 'sap', 'fluid', 'extract,liquid,sap,fluid', 'inflexible', 'fixed', 'inflexible,fixed', 'She squeezed all the juice out of the oranges.', 'My son spilled the juice on the floor.'),
(50, 'Juvenile', 'child', 'youth', 'minor', 'junior', 'child,youth,minor,junior', 'adult', 'mature', 'adult,mature', 'The city has a juvenile court', 'There is also an increase in juvenile delinquency. '),
(51, 'Keep', 'Hold', 'Maintain', 'Sustain', 'Support', 'Hold,Maintain,Sustain,Support', 'lose', 'break', 'lose,break', ' I can see why you wanted to keep this a secret. ', 'They can\'t keep her temperature down.'),
(52, 'Kill', 'Slay', 'Execute', 'Assassinate', 'Abolish', 'Slay,Execute,Assassinate,Abolish', 'pass', 'accept', 'pass,accept', 'I can\'t tell if you want to kill me or sleep with me', 'Get out of here before I kill you.'),
(53, 'Kind', 'affectionate', 'amiable', 'courteous', 'gentle', 'affectionate,amiable,courteous,gentle', 'mean', 'cruel', 'mean,cruel', 'What kind of a job do you have now?', 'The years had not been kind to him.'),
(54, 'Key', 'answer', 'clue', 'solution', 'lead', 'answer,clue,solution,lead', 'secondary', 'peripheral', 'secondary,peripheral', 'I took the key from the office and made a copy.', 'He has a key to the mine gate.'),
(55, 'King', 'ruler', 'monarch', 'majesty', 'sovereign', 'ruler,monarch,majesty,sovereign', 'discrown', 'subvert', 'discrown,subvert', 'Mr. Marsh was the undisputed king of the castle', 'Henry became king of England.'),
(56, 'Lazy', 'Indolent', 'Slothful', 'Idle', 'Inactive', 'Indolent,Slothful,Idle,Inactive', 'active', 'industrious', 'active,industrious', ' It was a lazy day, more like the beginning of summer than the end.', 'He says they\'re too lazy to work. '),
(57, 'Little', 'Dinky', 'Puny', 'Diminutive', 'Miniature', 'Dinky,Puny,Diminutive,Miniature', 'big', 'large', 'big,large', 'They are able to speak Spanish a little.', ' I have known Tom since I was a little boy. '),
(58, 'Look', 'Scrutinize', 'Inspect', 'Survey', 'Study', 'Scrutinize,Inspect,Survey,Study', 'ignore', 'spurn', 'ignore,spurn', 'Let\'s look at how this happened.', 'Do I look that bad?'),
(59, 'Love', 'Like', 'Admire', 'Esteem', 'Fancy', 'Like,Admire,Esteem,Fancy', 'hate', 'despise', 'hate,despise', ' If he didn\'t love you, he wouldn\'t care.', 'We love our parents, siblings and friends.'),
(60, 'Last', 'rearmost', 'end', 'final', 'hindmost', 'rearmost,end,final,hindmost', 'first', 'leading', 'first,leading', 'Toward what place was the eagle flying when you last saw it?', 'These happy days did not last long.'),
(61, 'Make', 'Design', 'Fabricate', 'Manufacture', 'Produce', 'Design,Fabricate,Manufacture,Produce', 'destroy', 'lose', 'destroy,lose', 'That does make sense.', 'Did you make any real progress?'),
(62, 'Mark', 'Impress', 'Effect', 'Trace', 'Imprint', 'Impress,Effect,Trace,Imprint', 'impotency', 'unmark', 'impotency,unmark', ' I saw the mark with my own eyes. ', 'His mark is inconsequential.'),
(63, 'Mischievous', 'Prankish', 'Waggish', 'Impish', 'Sportive', 'Prankish,Waggish,Impish,Sportive', 'sober', 'serious', 'sober,serious', 'she glanced up at him with a mischievous smile.', 'An idea brought a mischievous smile to her lips.'),
(64, 'Move', 'Plod', 'Go', 'Creep', 'Crawl', 'Plod,Go,Creep,Crawl', 'fixed', 'static', 'fixed,static', 'I just want to move on. ', 'You can move in with me.'),
(65, 'Mask', 'disguise', 'veil', 'conceal', 'cloak', 'disguise,veil,conceal,cloak', 'unmask', 'verity', 'unmask,verity', 'He dropped the mask on the ground. ', 'His face was a mask of fright.'),
(66, 'Nab', 'catch', 'capture', 'arrest', 'seize', 'catch,capture,arrest,seize', 'free', 'give', 'free,give', 'The authorities can nab him.', ' they can nab the next victim. '),
(67, 'Nail', 'pin', 'spike', 'tack', 'rivet', 'pin,spike,tack,rivet', 'detatch', 'separate', 'detatch,separate', 'The final nail in the coffin of their friendship left her feeling depressed. ', 'He flicked his nail against the pad of his thumb.'),
(68, 'Nap', 'doze', 'drowse', 'rest', 'snooze', 'doze,drowse,rest,snooze', 'sweat', 'awake', 'sweat,awake', 'We can still get a nap before morning.', 'he realized he wouldn\'t be catching a nap for some time.'),
(69, 'Narrow', 'small', 'tapered', 'strait', 'slender', 'small,tapered,strait,slender', 'wide', 'broad', 'wide,broad', 'He pointed to a set of narrow stairs.', ' the narrow road to let a Jeep pass.'),
(70, 'Natural', 'innate', 'inborn', 'intrinsic', 'intuitive', 'innate,inborn,intrinsic,intuitive', 'abnormal', 'irregular', 'abnormal,irregular', 'We think he might have some natural ability.', 'You have a natural instinct for the simple but elegant.'),
(71, 'Opposite', 'facing', 'fronting', 'conflicting', 'converse', 'facing,fronting,conflicting,converse', 'same', 'identical', 'same,identical', 'Kris sat opposite his brother.', 'he turned the horse and kicked it into a trot in the opposite direction. '),
(72, 'Old', 'elderly', 'mature', 'aged', 'senior', 'elderly,mature,aged,senior', 'young', 'modern', 'young,modern', 'She was becoming a bitter old maid.', 'My parents used to listen to those old songs. '),
(73, 'Obey', 'heed', 'bow', 'comply', '', 'heed,bow,comply,', 'disobey', 'defy', 'disobey,defy', 'Agree to obey the laws ', 'He has raised me to obey '),
(74, 'Object', 'thing', 'article', 'item', 'piece', 'thing,article,item,piece', 'notion', '', 'notion,', 'He shoved a shiny red object at her.', 'She dropped the cloth and moved to the next object'),
(75, 'Observe', 'notice', 'see', 'note', 'perceive', 'notice,see,note,perceive', 'overlook', 'ignore', 'overlook,ignore', 'I find it interesting to observe Molly.', 'Good people, observe me carefully.'),
(76, 'Part', 'Portion', 'Section', 'Fraction', 'Fragment', 'Portion,Section,Fraction,Fragment', 'whole', 'entirety', 'whole,entirety', 'They will become part of the solution. ', 'It was part of his personality. '),
(77, 'Place', 'Space', 'Area', 'Spot', 'Plot', 'Space,Area,Spot,Plot', 'misplace', 'dislocate', 'misplace,dislocate', 'He lifted the nest gently and put it in a safe place in the forks of the tree.', 'She returned to her place at the table'),
(78, 'Plan', 'Region', 'Location', 'Situation', 'Position', 'Region,Location,Situation,Position', 'disorganize', 'disorder', 'disorganize,disorder', 'Her plan was to approach the building from the back parking lot.', 'Where did you plan to sleep tonight? '),
(79, 'Predicament', 'Quandary', 'Dilemma', 'Plight', 'Spot', 'Quandary,Dilemma,Plight,Spot', 'agreement', 'solution', 'agreement,solution', 'I hope you can understand the predicament I was in.', 'It is a predicament I cannot even conjecture. '),
(80, 'Pity', 'sin', 'distress', 'sorrow', 'regret', 'sin,distress,sorrow,regret', 'indifference', 'cruelity', 'indifference,cruelity', 'I always thought he felt more pity than love for the old lady.', 'Your pity is a weakness.'),
(81, 'Quiet', 'Tranquil', 'Peaceful', 'Calm', 'Restful', 'Tranquil,Peaceful,Calm,Restful', 'loud', 'public', 'loud,public', 'That didn\'t come out quite right', 'I am considered quite unusual'),
(82, 'uestion', 'Interrogate', 'Ask', 'Inquire', 'Query', 'Interrogate,Ask,Inquire,Query', 'answer', 'resonse', 'answer,resonse', 'a question that had been nagging her since his offer.', 'The big question was, would her confidence last?'),
(83, 'Quit', 'cease', 'stop', 'withdraw', 'Leave', 'cease,stop,withdraw,Leave', 'occupy', 'persist', 'occupy,persist', ' I guess I\'ll just have to quit school then.', 'I\'m ready to quit already.'),
(84, 'Quake', 'Aftershock', 'Quaker', 'Shake', 'Tremor', 'Aftershock,Quaker,Shake,Tremor', '', '', ',', 'There was a slight quake to her voice.', 'a quake in her voice would expose her trepidation.'),
(85, 'Quality', 'Character', 'Condition', 'Kind', 'Aspect', 'Character,Condition,Kind,Aspect', 'atrocity', 'lousy', 'atrocity,lousy', 'She felt the quality of the material.', 'The speed and quality of those algorithms will get ever better. '),
(86, 'Right', 'Correct', 'Accurate', 'Factual', 'TRUE', 'Correct,Accurate,Factual,TRUE', 'wrong ', 'unjust', 'wrong ,unjust', 'Do you have to go back right away?', 'Right now she didn\'t care where they were.'),
(87, 'Run', 'Race', 'Sprint', 'Dash', 'Rush', 'Race,Sprint,Dash,Rush', 'stay', 'dawdle', 'stay,dawdle', 'I didn\'t run away.', 'One common type of run-on sentence is a comma splice.'),
(88, 'Rest', 'repose', 'lie', 'relax', 'laze', 'repose,lie,relax,laze', 'move', 'active', 'move,active', 'The rest of the ride was pleasant.', 'He dumped the rest of his coffee in the sink'),
(89, 'Rely', 'plan', 'bank', 'count', 'depend', 'plan,bank,count,depend', 'distrust', '', 'distrust,', 'You cannot rely completely on others.', 'They rely heavily on oil exports.'),
(90, 'Respect', 'regard', 'acclaim', 'admiration', 'admire', 'regard,acclaim,admiration,admire', 'disrespect', 'contempt', 'disrespect,contempt', 'Treat them with respect and take care of them.', 'I\'m disappointed in your decision, but I respect it. '),
(91, 'Say', 'Recount', 'Narrate', 'Explain', 'Reveal', 'Recount,Narrate,Explain,Reveal', 'ask', 'inquire', 'ask,inquire', ' I won\'t say anything to anyone.', 'I like the way you say thank you.'),
(92, 'Scared', 'Panicked', 'Fearful', 'Unnerved', 'Insecure', 'Panicked,Fearful,Unnerved,Insecure', 'confident', 'calm', 'confident,calm', 'My dog scared the thieves away.', 'That\'s what scared me.'),
(93, 'Show', 'Display', 'Exhibit', 'Present', 'Note', 'Display,Exhibit,Present,Note', 'suppress', 'hide', 'suppress,hide', 'He might show up any time to claim the ranch.', 'I\'ll show you where you can sleep.'),
(94, 'Slow', 'Unhurried', 'Behind', 'Tedious', 'Slack', 'Unhurried,Behind,Tedious,Slack', 'fast', 'rapid', 'fast,rapid', 'Don\'t let me slow you down.', 'A slow smile came to his lips.'),
(95, 'Stop', 'Cease', 'Halt', 'Stay', 'Pause', 'Cease,Halt,Stay,Pause', 'start', 'begin', 'start,begin', 'My house is close to a bus stop. ', ' I wish they would stop fighting.'),
(96, 'Take', 'Hold', 'Catch', 'Seize', 'Grasp', 'Hold,Catch,Seize,Grasp', 'give', 'dodge', 'give,dodge', 'We\'ll take care of them together.', 'I can take care of myself.'),
(97, 'Tell', 'Disclose', 'Reveal', 'Show', 'Expose', 'Disclose,Reveal,Show,Expose', 'ask', 'question', 'ask,question', 'She wanted him to tell her that he loved her.', 'She\'ll tell him about it when she comes back.'),
(98, 'Think', 'Consider', 'Contemplate', 'Reflect', 'Mediate', 'Consider,Contemplate,Reflect,Mediate', 'act', 'perform', 'act,perform', 'He could not think of anything else. ', 'Who do you think I am? '),
(99, 'Trouble', 'Distress', 'Anguish', 'Anxiety', 'Wretchedness', 'Distress,Anguish,Anxiety,Wretchedness', 'order', 'peace', 'order,peace', 'She got into trouble with her credit cards.', 'He had no trouble finding a new job. '),
(100, 'TRUE', 'Accurate', 'Right', 'Proper', 'Precise', 'Accurate,Right,Proper,Precise', 'untrue', 'FALSE', 'untrue,FALSE', 'A person had one true friend in a lifetime', 'A few months ago she didn\'t know the true meaning of love.'),
(101, 'Ultra', 'drastic', 'excessive', 'extremist', 'fanatical', 'drastic,excessive,extremist,fanatical', 'middle', 'moderate', 'middle,moderate', 'Pulling the contents out, she stared at the ultra sound', 'The ultra sound photo brought back a vivid memory of Alex '),
(102, 'U-turn', 'reversal', 'turnaround', 'mindchange', 'retraction', 'reversal,turnaround,mindchange,retraction', 'deflate', 'expand', 'deflate,expand', 'He immediately turned on his lights and made a quick U turn. ', 'Paul made a quick U-turn'),
(103, 'unbiased', 'impartial ', 'unprejudiced', 'fair', 'neutral', 'impartial ,unprejudiced,fair,neutral', 'partial', 'heedful', 'partial,heedful', 'Unbiased statements are expected from all salesmen', 'tell the entire story to an unbiased audience.'),
(104, 'upset', 'perturb', ' ruffle', 'agitate', 'unsettle', 'perturb, ruffle,agitate,unsettle', 'good', 'harmless', 'good,harmless', 'He was upset about his brother.', ' it will only upset him more.'),
(105, 'urgent', 'crucial ', 'important', 'imperative', 'hasty', 'crucial ,important,imperative,hasty', 'beseeching', 'decompression', 'beseeching,decompression', 'What was so urgent that it couldn\'t wait?', 'My queen sent an urgent message to him.'),
(106, 'vacant', 'unoccupied', 'empty', 'unfilled', 'uninhabited', 'unoccupied,empty,unfilled,uninhabited', 'full', 'emptiness', 'full,emptiness', 'He found Elisabeth\'s studio vacant at 4:30.', 'The cottage was vacant '),
(107, 'valiant', 'courageous ', 'brave ', 'heroic', 'fearless', 'courageous ,brave ,heroic,fearless', 'coawrdly', 'irresolute', 'coawrdly,irresolute', 'She made a valiant attempt to fix the problem.', 'She died last year after a valiant battle with cancer.'),
(108, 'vibrate', 'shake ', 'quiver', '  tremble', 'shiver', 'shake ,quiver,  tremble,shiver', 'steady', 'still', 'steady,still', 'She should be with someone as young and vibrant as she is. ', 'The needles were long and soft, their vibrant green coloring leaving her breathless.'),
(109, 'vicious', 'malicious ', ' spiteful ', ' ferocious', 'brutal', 'malicious , spiteful , ferocious,brutal', 'gentle', 'kind', 'gentle,kind', 'A vicious circle is obviously involved.', 'She thinks she is some kind of vicious animal.'),
(110, 'vague', 'hazy', 'unclear', 'cloudy', 'indistinct', 'hazy,unclear,cloudy,indistinct', 'clear', 'firm', 'clear,firm', 'He longed in some vague way for something different.', 'She felt a vague sense of uneasiness when she was around him.'),
(111, 'wait', 'standby', 'holdback', 'pause', 'interval', 'standby,holdback,pause,interval', 'move', 'proceed', 'move,proceed', 'Please wait a little while longer.', ' I\'ll wait here till he comes back. '),
(112, 'wake', 'awake', 'rouse', 'stir', 'getup', 'awake,rouse,stir,getup', 'sleep', 'asleep', 'sleep,asleep', 'I didn\'t want to wake you.', 'My flight was delayed an hour so my early wake up was in vain.'),
(113, 'wedding', 'marriage', 'matrimony', 'nupital', 'betrothal', 'marriage,matrimony,nupital,betrothal', 'divorce', 'jilt', 'divorce,jilt', 'He forgot his wedding vows.', 'The wedding ceremony was beautiful.'),
(114, 'wonder', 'awe', 'admiration', 'fascination', 'surprise', 'awe,admiration,fascination,surprise', 'certainity', 'disinterest', 'certainity,disinterest', 'I wonder if this is how he felt,', 'No wonder Dulce had been so upset.'),
(115, 'wrong', 'incorrect', 'mistake', 'inaccurate', 'illicit', 'incorrect,mistake,inaccurate,illicit', 'right', 'correct', 'right,correct', 'Right or wrong, the decision had been made.', 'Sometimes I make a mistake and do the wrong thing.'),
(116, 'zeal', 'passion', 'ardour', 'love', 'fervour', 'passion,ardour,love,fervour', 'apathy', 'indifference', 'apathy,indifference', 'His zeal is represented in a twofold aspect.', 'His zeal and energy met everywhere with conspicuous success. '),
(117, 'zazzy', 'fashy', 'splashy', 'shiny', '', 'fashy,splashy,shiny,', 'uninteresting', '', 'uninteresting,', 'Your room is so much more zazzy than mine.', 'Her zazzy nature is the reason that made her a leading blogger'),
(118, 'zip', 'speed', 'hurry', 'race', 'sprint', 'speed,hurry,race,sprint', 'dawdle', 'lathargy', 'dawdle,lathargy', 'He pretended to zip a zipper across his lips.', 'Could you help me zip this? ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `thesaurus`
--
ALTER TABLE `thesaurus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `thesaurus`
--
ALTER TABLE `thesaurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
