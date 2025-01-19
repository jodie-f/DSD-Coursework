-- dsd_cw2

-- ---------------------------
-- Table Structure for DEPARTMENT_CATEGORY
-- ---------------------------
CREATE TYPE category AS ENUM ('Academic', 'Business');
CREATE TABLE department_category(
    dept_category_id SERIAL PRIMARY KEY,
    dept_category_name category NOT NULL
);

-- ---------------------------
-- Records for DEPARTMENT_CATEGORY
-- ---------------------------
INSERT INTO department_category (dept_category_id, dept_category_name)
VALUES
(1,'Academic'),
(2, 'Business');

-- ---------------------------
-- Table Structure for DEPARTMENT
-- ---------------------------
CREATE TABLE department(
    dept_id SERIAL PRIMARY KEY,
    dept_category_id INT NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (dept_category_id) REFERENCES department_category(dept_category_id)
);

-- ---------------------------
-- Records for DEPARTMENT
-- ---------------------------
INSERT INTO department (dept_id, dept_category_id, dept_name)
VALUES
(1, 1, 'Mathematics'),
(2, 1, 'Computing'),
(3, 1, 'Humanities'),
(4, 1, 'Arts'),
(5, 2, 'HR'),
(6, 2, 'Finance');

-- ---------------------------
-- Table Structure for STAFF
-- ---------------------------
CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    staff_name VARCHAR(50) NOT NULL,
    staff_middle_name VARCHAR(50), -- can be null
    staff_surname VARCHAR(50) NOT NULL,
    staff_dob DATE NOT NULL,
    staff_business_email VARCHAR(50) NOT NULL UNIQUE,
    staff_personal_email VARCHAR(50) NOT NULL UNIQUE,
    staff_telephone VARCHAR(15) NOT NULL UNIQUE,
    staff_addr1 VARCHAR(50) NOT NULL,
    staff_addr2 VARCHAR(50), -- can be null
    staff_city VARCHAR(30) NOT NULL,
    staff_postcode CHAR(8) NOT NULL
);

-- ---------------------------
-- Records for STAFF
-- ---------------------------
INSERT INTO staff (staff_id, staff_name, staff_middle_name, staff_surname, staff_dob, staff_business_email, staff_personal_email, staff_telephone, staff_addr1, staff_addr2, staff_city, staff_postcode) 
VALUES
(1, 'Thia', 'Sibelle', 'Maroney', '1998-05-31', 'smaroney0@friendfeed.com', 'smaroney0@live.com', '6911683643', '70 Kipling Street', 'Apt 1204', 'Cempa', 'YM4 5QE'),
(2, 'Archaimbaud', 'Benny', 'Grinsted', '1971-03-16', 'bgrinsted1@npr.org', 'bgrinsted1@telegraph.co.uk', '3119201934', '49023 Menomonie Junction', 'PO Box 52148', 'Naas', 'OQ1 9IJ'),
(3, 'Kerrill', 'Loren', 'Stitwell', '1973-06-20', 'lstitwell2@cyberchimps.com', 'lstitwell2@newsvine.com', '5816843819', '911 Hallows Alley', null, 'Al ‘Awjah', 'IX7 0CP'),
(4, 'Salomo', 'Risa', 'Perillo', '1976-08-27', 'rperillo3@ed.gov', 'rperillo3@github.com', '7959031647', '86 Summit Terrace', null, 'Raychikhinsk', 'LA5 0FV'),
(5, 'Donaugh', 'Aila', 'Schimmang', '1970-06-06', 'aschimmang4@home.pl', 'aschimmang4@ibm.com', '7524063442', '235 Heffernan Hill', 'Room 1612', 'Solotcha', 'FZ49 2OS'),
(6, 'Hussein', 'Virginie', 'Darmody', '1986-03-30', 'vdarmody5@ucoz.ru', 'vdarmody5@reuters.com', '7411547491', '72 Tomscot Trail', 'Apt 1435', 'Tzaneen', 'BK51 1SS'),
(7, 'Aksel', 'Amanda', 'Leake', '1993-08-13', 'aleake6@vkontakte.ru', 'aleake6@google.cn', '2008398503', '0 Little Fleur Plaza', null, 'Mangxing', 'UJ8 2RV'),
(8, 'Phaidra', null, 'Ashe', '1971-05-06', 'sashe7@wikimedia.org', 'tashe7@sogou.com', '5333437923', '530 Gateway Road', null, 'Poshnje', 'FJ9 6HJ'),
(9, 'Stacee', 'Thorvald', 'Skune', '1973-12-21', 'tskune8@ustream.tv', 'tskune8@msn.com', '4116189100', '846 Becker Crossing', null, 'Ulaandel', 'RM13 7GU'),
(10, 'Nyssa', 'Celle', 'McGawn', '1996-10-01', 'cmcgawn9@hud.gov', 'cmcgawn9@ebay.co.uk', '5327629433', '0 Beilfuss Drive', 'Room 1389', 'Gornji Milanovac', 'HT9 1JN'),
(11, 'Artur', 'Heather', 'Cutler', '1963-04-16', 'hcutlera@squidoo.com', 'hcutlera@imdb.com', '7801672376', '3 Springview Pass', null, 'Palmeira', 'ZC8 4DY'),
(12, 'Jasmina', 'Jori', 'Werner', '1983-05-18', 'jwernerb@barnesandnoble.com', 'jwernerb@delicious.com', '7367590296', '2585 Dawn Trail', null, 'Limanancong', 'MD0 0AX'),
(13, 'Florencia', 'Rubetta', 'Neligan', '1972-02-18', 'rneliganc@google.nl', 'rneliganc@odnoklassniki.ru', '8397486312', '6099 Golf View Terrace', 'Apt 1761', 'Xinshi', 'XB5 1NY'),
(14, 'Jacobo', 'Evelina', 'Reiach', '1971-03-18', 'ereiachd@drupal.org', 'ereiachd@123-reg.co.uk', '1151215241', '0819 Monterey Pass', null, 'Ortiga', 'NG38 1FH'),
(15, 'Sue', 'Elyn', 'Simounet', '1968-07-24', 'esimounete@blogger.com', 'esimounete@ebay.com', '1785620105', '31 Judy Street', '17th Floor', 'Las Junturas', 'NM0 9WD'),
(16, 'Lucine', null, 'Leif', '1975-06-29', 'mleiff@imageshack.us', 'sleiff@vimeo.com', '8677607833', '8447 Lighthouse Bay Point', 'PO Box 64273', 'Famaillá', 'HC3 6VR'),
(17, 'Griffie', 'Mario', 'Barthelme', '1971-07-21', 'mbarthelmeg@homestead.com', 'mbarthelmeg@scribd.com', '5852204818', '937 Express Place', null, 'Fengdian', 'TF0 5YF'),
(18, 'Essy', 'Mollee', 'Flobert', '1973-11-23', 'mfloberth@dailymail.co.uk', 'mfloberth@list-manage.com', '5558267444', '2 Welch Terrace', null, 'Danxi', 'ZH08 8EK'),
(19, 'Brietta', 'Clarisse', 'Kryszkiecicz', '1985-03-15', 'ckryszkieciczi@shinystat.com', 'ckryszkieciczi@trellian.com', '1122013734', '49 Becker Junction', null, 'Huxu', 'SR72 2TO'),
(20, 'Annabelle', 'Jill', 'McInulty', '1965-10-26', 'jmcinultyj@oaic.gov.au', 'jmcinultyj@desdev.cn', '2212871222', '23173 3rd Point', null, 'Kangping', 'PV5 9DC'),
(21, 'Maryl', 'Bald', 'Bunnell', '1972-12-04', 'bbunnellk@usda.gov', 'bbunnellk@google.es', '5386070709', '38 Dottie Plaza', 'PO Box 99368', 'Tiabaya', 'JI4 1QT'),
(22, 'Vladimir', null, 'Beharrell', '1968-04-21', 'hbeharrelll@chicagotribune.com', 'ebeharrelll@paypal.com', '1843498801', '5 Scott Park', 'Apt 1210', 'Magay', 'QW9 5MS'),
(23, 'Fran', 'Kassey', 'Kalinsky', '1965-06-14', 'kkalinskym@paypal.com', 'kkalinskym@addtoany.com', '2774321709', '73038 Esker Way', null, 'Pergamos', 'IG59 9JL'),
(24, 'Janeva', null, 'Crannell', '1994-12-03', 'acrannelln@nba.com', 'scrannelln@ucsd.edu', '4863808100', '8067 Little Fleur Street', '8th Floor', 'Kamyshin', 'JS5 7SC'),
(25, 'Jacques', null, 'Ludovici', '1963-06-21', 'hludovicio@comcast.net', 'oludovicio@ebay.com', '9393691745', '015 Waubesa Place', '5th Floor', 'Victoria', 'FZ9 4WY'),
(26, 'Ruperto', 'Rahal', 'Loveland', '1977-07-05', 'rlovelandp@baidu.com', 'rlovelandp@vimeo.com', '2314078877', '12 Texas Center', null, 'Juli', 'MV0 5JS'),
(27, 'Cesya', 'Blakeley', 'Avory', '1973-02-18', 'bavoryq@weather.com', 'bavoryq@squarespace.com', '8276928776', '13 Dryden Center', null, 'Ar Rawnah', 'BG48 8BN'),
(28, 'Valentino', 'Margery', 'Morrilly', '1998-10-10', 'mmorrillyr@nasa.gov', 'mmorrillyr@fc2.com', '2014887265', '925 Garrison Place', null, 'Ishqoshim', 'HT93 2ZF'),
(29, 'Skye', 'Fayina', 'Olyff', '1996-11-15', 'folyffs@posterous.com', 'folyffs@is.gd', '4044586771', '4110 Vernon Terrace', null, 'Mocupe', 'KS8 5RU'),
(30, 'Read', 'Elane', 'McAdam', '1981-09-21', 'emcadamt@so-net.ne.jp', 'emcadamt@ihg.com', '1088952158', '473 Becker Street', 'PO Box 59884', 'Dauriya', 'US60 3VR');

-- ---------------------------
-- Table Structure for DEPARTMENT_TEAM
-- ---------------------------
-- team ranges from 5 to 10 members
CREATE TABLE department_team(
    dept_id INT NOT NULL,
    staff_id INT NOT NULL,
    PRIMARY KEY (dept_id, staff_id),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

-- ---------------------------
-- Records for department_team
-- ---------------------------
INSERT INTO department_team (dept_id, staff_id)
VALUES
(1, 1), -- mathematics
(1, 5),
(1, 6),
(1, 7),
(1, 8), --5
(2, 2), -- computing
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13), -- 6
(3, 3), -- humanities
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19), -- 7
(4, 4), -- arts
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24), -- 6
(5, 25), -- HR
(5, 26),
(5, 27), -- 3
(6, 28), -- finance
(6, 29),
(6, 30); -- 3

-- ---------------------------
-- Table Structure for ROLE_TYPE
-- ---------------------------
CREATE TABLE role_type(
    role_type_id SERIAL PRIMARY KEY,
    role_type_name VARCHAR(50) NOT NULL,
    teaching_type BOOLEAN NOT NULL
);

-- ---------------------------
-- Records for ROLE_TYPE
-- ---------------------------
INSERT INTO role_type(role_type_id, role_type_name, teaching_type)
VALUES
(1, 'Faculty', true), -- 8
(2, 'Administration', false), -- 3
(3, 'Technology Support', false), -- 4
(4, 'Human Resources', false), -- 3
(5, 'Academic Support', true), -- 6
(6, 'Department Head', true); -- 6

-- ---------------------------
-- Table Structure for STAFF_ROLE
-- ---------------------------
CREATE TABLE staff_role(
    staff_id INT NOT NULL,
    role_type_id INT NOT NULL,
    PRIMARY KEY (staff_id, role_type_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (role_type_id) REFERENCES role_type(role_type_id)
);

-- ---------------------------
-- Records for STAFF_ROLE
-- ---------------------------
INSERT INTO staff_role(staff_id, role_type_id)
VALUES
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 1),
(6, 1),
(7, 5),
(8, 5),
(9, 1),
(10, 1),
(11, 3),
(12, 3),
(13, 5),
(14, 1),
(15, 1),
(16, 5),
(17, 5),
(18, 4),
(19, 2),
(20, 1),
(21, 1),
(22, 5),
(23, 3),
(24, 3),
(25, 6),
(26, 4),
(27, 4),
(28, 6),
(29, 2),
(30, 2);

-- ---------------------------
-- Table Structure for LEVEL_CATEGORY
-- ---------------------------
CREATE TYPE academic_level AS ENUM ('L4', 'L5', 'L6', 'L7');

CREATE TABLE level_category(
    level_id SERIAL PRIMARY KEY,
    level_number academic_level NOT NULL
);

-- ---------------------------
-- Records for LEVEL_CATEGORY
-- ---------------------------
INSERT INTO level_category(level_id, level_number)
VALUES
(1, 'L4'),
(2, 'L5'),
(3, 'L6'),
(4, 'L7');

-- ---------------------------
-- Table Structure for COURSE
-- ---------------------------
CREATE TABLE course(
    course_id SERIAL PRIMARY KEY,
    head_id INT NOT NULL,
    dept_id INT NOT NULL,
    level_id INT NOT NULL,
    course_name VARCHAR(50) NOT NULL,
    course_duration INT NOT NULL,
    course_desc TEXT NOT NULL,
    FOREIGN KEY (head_id) REFERENCES staff(staff_id),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id),
    FOREIGN KEY (level_id) REFERENCES level_category(level_id)
);

-- ---------------------------
-- Records for COURSE
-- ---------------------------
-- REMOVE SEMI-COLONS LATER
INSERT INTO course (course_id, head_id, dept_id, level_id, course_name, course_duration, course_desc)
VALUES
(1, 1, 1, 3, 'Mathematics', 4, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.'),
-- (2, 16, 4, 1, 'Mathematics with Statistics', 3, 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.');
(2, 1, 1, 3, 'Physics', 3, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.'),
-- (4, 7, 6, 1, 'Networks', 3, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.');
(3, 2, 2, 2, 'Computer Science', 4, 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
-- (6, 10, 3, 3, 'Computing', 3, 'In hac habitasse platea dictumst.');
(4, 2, 2, 2, 'Cyber Security', 3, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.'),
-- (5, 2, 2, 4, 'Data Science', 4, 'Vestibulum rutrum rutrum neque.');
(5, 2, 2, 3, 'Software Engineering', 3, 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.'),
(6, 3, 3, 3, 'Environmental Science', 4, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.'),
(7, 3, 3, 4, 'Geography', 4, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.'),
(8, 3, 3, 1, 'History', 3, 'Integer ac leo.'),
(9, 4, 4, 1, 'Film Studies', 3, 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.'),
(10, 4, 4, 3, 'Music Technology', 4, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.'),
(11, 4, 4, 1, 'Theatre', 3, 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.');

-- ---------------------------
-- Table Structure for STUDENT
-- ---------------------------
CREATE TABLE student(
    stu_id SERIAL PRIMARY KEY,
    stu_name VARCHAR(50) NOT NULL,
    stu_middle_name VARCHAR(50), -- can be null
    stu_surname VARCHAR(50) NOT NULL,
    stu_email VARCHAR(50) NOT NULL UNIQUE,
    stu_telephone VARCHAR(15) NOT NULL UNIQUE,
    stu_dob DATE NOT NULL,
    stu_addr1 VARCHAR(50) NOT NULL,
    stu_addr2 VARCHAR(50), -- can be null
    stu_city VARCHAR(30) NOT NULL,
    stu_postcode CHAR(8) NOT NULL
);

-- ---------------------------
-- Records for STUDENT
-- ---------------------------
INSERT INTO student (stu_id, stu_name, stu_middle_name, stu_surname, stu_email, stu_telephone, stu_dob, stu_addr1, stu_addr2, stu_city, stu_postcode) 
VALUES
(1, 'Drew', 'Pattin', 'Frederich', 'flacknor0@shop-pro.jp', '4484002018', '2004-12-28', '36 Talisman Parkway', null, 'Sakon Nakhon', 'ZU11 8NU'),
(2, 'Charmion', null, 'Jecho', 'jklosser1@shinystat.com', '3905601943', '1999-10-12', '3 Scoville Street', null, 'Wiset Chaichan', 'ZR4 3EA'),
(3, 'Ermengarde', 'Vina', 'Adora', 'atether2@usatoday.com', '9231637023', '1993-02-14', '93 Kim Junction', null, 'San Luis del Palmar', 'PE50 7XG'),
(4, 'Kiah', 'Brendin', 'Alfie', 'aciabatteri3@reference.com', '7926340504', '2001-03-12', '2337 Nevada Hill', null, 'Karlstad', 'KL1 4DQ'),
(5, 'Jack', null, 'Tristan', 'tyarn4@squidoo.com', '8705434077', '1991-10-02', '8 Surrey Place', null, 'Agualva', 'LV9 3VQ'),
(6, 'Felisha', null, 'Rena', 'rlieber5@weibo.com', '4265600161', '1992-01-13', '596 Karstens Circle', 'Room 378', 'Calvaria de Baixo', 'BF9 2ON'),
(7, 'Kizzee', 'Kristine', 'Annabell', 'anendick6@ebay.co.uk', '8283466558', '1995-08-06', '46 Cambridge Parkway', null, 'Ja Ela', 'XI5 2DD'),
(8, 'Brody', null, 'Haily', 'hmoorey7@wunderground.com', '7043272874', '1991-01-10', '23 Lakewood Gardens Junction', null, 'Blimbing', 'KU05 0AQ'),
(9, 'Daphene', 'Iain', 'Roldan', 'rsarre8@youtube.com', '4764187474', '2002-01-09', '72 Forest Run Junction', '15th Floor', 'Sebu', 'HA36 6OM'),
(10, 'Ulrike', 'Otis', 'Jory', 'jlewsey9@1und1.de', '3447433749', '1990-12-04', '4 Montana Lane', null, 'Longtian', 'ES47 6IB'),
(11, 'Catie', 'Barbette', 'Eb', 'ebruneaua@yahoo.co.jp', '9097040327', '2005-04-14', '21 Lerdahl Court', '7th Floor', 'Halayhayin', 'UJ1 8AS'),
(12, 'Javier', 'Celinda', 'Winnifred', 'wtillertonb@dmoz.org', '8884697985', '2003-05-02', '28 Transport Parkway', null, 'Kamiennik', 'AT7 2YD'),
(13, 'Daffi', 'Daryl', 'Standford', 'srobotthamc@google.ru', '7122358944', '1993-12-23', '46 Nobel Center', '12th Floor', 'Keffin Hausa', 'KT9 5MZ'),
(14, 'Germana', null, 'Enoch', 'emewburnd@prnewswire.com', '4415540542', '1999-01-30', '1119 Londonderry Pass', 'Apt 803', 'Jangas', 'AR6 5TV'),
(15, 'Aldin', null, 'Elysee', 'ecudde@epa.gov', '4941345168', '1999-11-02', '593 Bobwhite Pass', null, 'Huangsha', 'AM98 6SH'),
(16, 'Tucky', null, 'Joly', 'jcluef@go.com', '5753549160', '2005-10-25', '5981 Elmside Street', null, 'Pondoktelo', 'JE75 9DZ'),
(17, 'Kate', 'Dalt', 'Abel', 'adeclercqg@answers.com', '5718607864', '2000-05-31', '94 Summer Ridge Plaza', 'PO Box 6358', 'Arlington', 'WD0 7EQ'),
(18, 'Libbie', 'Leighton', 'Sidoney', 'spatish@jigsy.com', '2106820720', '1996-10-12', '46 Spohn Trail', null, 'Gaoqiao', 'UU9 7CG'),
(19, 'Jobie', null, 'Robby', 'rharyngtoni@aol.com', '9062317739', '1991-04-24', '9 Prentice Circle', null, 'Shofirkon', 'YF2 7LZ'),
(20, 'Fredia', null, 'Tamera', 'tgreedierj@cnbc.com', '2427947207', '1994-08-22', '843 Lakeland Hill', '10th Floor', 'Mae Hi', 'SE08 5FR'),
(21, 'Burlie', null, 'Blisse', 'bdelcastellok@squarespace.com', '5499064459', '1990-11-17', '2548 Packers Plaza', null, 'Montréal-Ouest', 'DG4 1TW'),
(22, 'Darrel', 'Fanny', 'Elisha', 'ebeartupl@independent.co.uk', '1542886971', '2000-09-08', '447 Pleasure Court', '17th Floor', 'Pasirbitung', 'ET15 6IT'),
(23, 'Garnette', null, 'Frannie', 'fcausonm@loc.gov', '3165775627', '2002-11-02', '4591 Cascade Alley', null, 'Tirapata', 'IK6 6JP'),
(24, 'Ed', null, 'Tad', 'tjeffcoatn@jugem.jp', '7686892211', '2003-09-10', '9 Mockingbird Center', null, 'Rolândia', 'KH9 2TP'),
(25, 'Glyn', 'Christabella', 'Elias', 'etomczykowskio@friendfeed.com', '5604552454', '1999-11-08', '2093 Rowland Drive', '20th Floor', 'Gaoshi', 'RR5 0YV'),
(26, 'Ashton', 'Jannel', 'Raymond', 'rfranklinp@dion.ne.jp', '6137749377', '2003-12-12', '009 Granby Plaza', 'Room 1071', 'Ban Tak', 'WC0 0AM'),
(27, 'Morley', 'Melania', 'Hayward', 'hvandaleq@stumbleupon.com', '7032432274', '2005-04-13', '9 North Alley', 'Room 442', 'Buri', 'GH72 9WJ'),
(28, 'Delphine', 'Calhoun', 'Elana', 'eflayr@engadget.com', '1545519208', '2002-05-05', '8993 3rd Pass', 'Suite 100', 'Gunungbatu', 'WX3 7RU'),
(29, 'Jarrid', 'Maible', 'Ginelle', 'gshaplins@hud.gov', '9851406800', '2004-10-15', '46174 Toban Junction', 'Room 303', 'Kombandaru', 'YA52 2VY'),
(30, 'Brittney', null, 'Helen-elizabeth', 'hstandbrooket@wikia.com', '7486166795', '1998-07-03', '3363 West Hill', null, 'Bajawa', 'AS73 0CS'),
(31, 'Sutherland', null, 'Deena', 'ddrewsonu@addthis.com', '3597230011', '1996-01-21', '36 Dottie Junction', 'Apt 88', 'Fuyong', 'PF17 1BO'),
(32, 'Jourdain', null, 'Karlotta', 'kmckiddinv@privacy.gov.au', '5816191503', '1993-09-23', '5220 Raven Junction', null, 'Thị Trấn Mộc Châu', 'PG4 0CU'),
(33, 'Jacinthe', 'Jed', 'Joela', 'jdejuaresw@mlb.com', '8718826530', '1996-05-21', '69 7th Trail', null, 'Akarakar', 'RC7 3EP'),
(34, 'Alison', null, 'Herold', 'hshillomx@desdev.cn', '6355270408', '1992-06-04', '58346 Annamark Park', '10th Floor', 'Bromma', 'NI68 0IX'),
(35, 'Zachary', null, 'Karrah', 'kjehany@sciencedirect.com', '7176160517', '1998-09-04', '33266 Loeprich Point', null, 'Krasnyye Chetai', 'MW64 7XL'),
(36, 'Aldwin', null, 'Kimberlee', 'kballamz@twitter.com', '7664063934', '1999-05-07', '6 Fair Oaks Terrace', null, 'Kurgan', 'UQ2 6TO'),
(37, 'Shermy', 'Meara', 'Jeffrey', 'jbranchet10@seattletimes.com', '8647513926', '2004-04-07', '04 7th Crossing', '16th Floor', 'Lile', 'FI2 9GE'),
(38, 'Adora', 'Emilie', 'Livvie', 'lhardingham11@bloglovin.com', '4268686293', '1990-01-16', '6679 Hansons Crossing', null, 'Drammen', 'RY85 4HC'),
(39, 'Marlene', 'Cam', 'Husain', 'hwilcockes12@amazon.com', '4467161068', '1994-02-20', '1 Transport Place', 'Suite 18', 'Cangkreng', 'UJ0 3KG'),
(40, 'Grier', 'Van', 'Arleta', 'ariddiford13@nymag.com', '9206407782', '2005-03-11', '442 Troy Crossing', 'Apt 155', 'Longping', 'BM24 0II'),
(41, 'Dalila', 'Haley', 'Lee', 'lstellman14@imdb.com', '4052536597', '1994-02-23', '8 Maryland Lane', null, 'Niimi', 'BF1 5IW'),
(42, 'Alejandrina', null, 'Marcos', 'mdafforne15@addthis.com', '2416365986', '1999-01-21', '20 Di Loreto Pass', 'PO Box 17624', 'Preserje pri Radomljah', 'YB12 4HH'),
(43, 'Avrom', 'Velvet', 'Angelita', 'athames16@mashable.com', '2911761949', '1997-06-29', '77930 Debra Hill', null, 'Pengwan', 'TQ65 3HT'),
(44, 'Mozes', 'Sandro', 'Filippo', 'fkohrt17@photobucket.com', '2077977295', '1990-06-06', '74768 Village Green Junction', 'Room 1641', 'Duyanggang', 'ND31 7IN'),
(45, 'Donalt', 'Kristina', 'Riva', 'rwhitely18@4shared.com', '4726086074', '1990-06-16', '51267 Orin Park', null, 'Rueil-Malmaison', 'NZ67 3ZQ'),
(46, 'Stanleigh', null, 'Garrot', 'gradki19@weebly.com', '5999702460', '2004-03-03', '9903 Sunnyside Park', 'Apt 1147', 'Jiantang', 'XZ8 4BM'),
(47, 'Marrilee', null, 'Frederik', 'fvenable1a@joomla.org', '8247995489', '1991-09-06', '56 Scott Pass', 'Apt 1857', 'Lavras', 'UW92 3FW'),
(48, 'Iggy', null, 'Aggie', 'agumbrell1b@de.vu', '3244921618', '1996-02-23', '740 Fuller Street', null, 'Umuquena', 'WY8 3TF'),
(49, 'Tam', null, 'Isak', 'ipilley1c@oracle.com', '4649465226', '1999-05-28', '72191 Russell Center', null, 'Rybatskoye', 'MY90 8AY'),
(50, 'Scot', 'Della', 'Lucine', 'lpetroulis1d@indiatimes.com', '8191138275', '2002-04-18', '368 Warbler Alley', 'PO Box 32603', 'Capiíbary', 'RQ87 6SB'),
(51, 'Rafaello', null, 'Vilhelmina', 'vtordoff1e@ucla.edu', '9543596260', '2001-05-08', '33109 Bluestem Lane', null, 'Vilca', 'RP93 3AK'),
(52, 'Daniel', null, 'Muire', 'mstutte1f@tripod.com', '1942367979', '2000-08-28', '6764 Ruskin Street', 'Room 672', 'Zhajin', 'OY4 1KS'),
(53, 'Irving', 'Christian', 'Garald', 'gmarkovic1g@cdc.gov', '5502142755', '2002-07-30', '341 Bluestem Terrace', '9th Floor', 'Ananea', 'UM05 4HS'),
(54, 'Rutger', 'Leone', 'Price', 'pobell1h@census.gov', '1677982967', '1998-10-10', '2510 Bluestem Alley', 'Apt 1029', 'Keren', 'NA37 3IJ'),
(55, 'Aloin', null, 'Baron', 'bgammel1i@usa.gov', '1551405855', '2000-10-13', '4 Emmet Street', null, 'Jirjā', 'HR91 4GQ'),
(56, 'Latrena', 'Eugenie', 'Adara', 'aalgeo1j@eepurl.com', '7631006854', '2004-07-11', '0 Hayes Alley', null, 'Nhà Bàng', 'SF1 6VJ'),
(57, 'Rita', 'Cart', 'Nelie', 'nmoorman1k@technorati.com', '7258795256', '2001-03-19', '82993 2nd Pass', null, 'Saint-Malo', 'YD44 0OJ'),
(58, 'Agneta', 'Samantha', 'Lyle', 'lface1l@unblog.fr', '1302568794', '2004-03-16', '44323 Delaware Alley', null, 'Fengshuling', 'WK4 1ND'),
(59, 'Sheffie', 'Annabella', 'Mose', 'mkunzler1m@fema.gov', '6418125054', '1996-05-30', '305 Comanche Point', null, 'Bršadin', 'WH00 9JG'),
(60, 'Harley', null, 'Pren', 'pmottershead1n@dyndns.org', '1105412833', '1996-07-27', '14 Little Fleur Circle', 'Apt 1919', 'Beishan', 'RY3 7PZ'),
(61, 'Retha', null, 'Irwinn', 'iturtle1o@earthlink.net', '1445308866', '1996-11-14', '96 Brentwood Point', null, 'Roblin', 'GM0 5KW'),
(62, 'Calida', 'Jobi', 'Phillipe', 'pbryning1p@wikispaces.com', '6707717742', '1991-09-19', '8 Messerschmidt Way', null, 'Jiuchi', 'CM74 2TR'),
(63, 'Earlie', 'Pall', 'Johnna', 'jwickes1q@discuz.net', '8785040453', '1994-01-04', '2 Rigney Street', null, 'Dabachang', 'ZZ5 0GR'),
(64, 'Blancha', null, 'Maxi', 'mboriston1r@apache.org', '2058668647', '2005-05-26', '01339 Mayfield Center', '2nd Floor', 'Yuncheng', 'KL90 4WF'),
(65, 'Germaine', null, 'Alison', 'alocard1s@woothemes.com', '9857170929', '1995-10-14', '9 Katie Park', null, 'Jiawu', 'EV17 7HN'),
(66, 'Esteban', 'Vivian', 'Jan', 'jraoul1t@google.ru', '3829400043', '1992-04-20', '15991 Scofield Plaza', null, 'Burnside', 'GP5 7HA'),
(67, 'Shannan', 'Felecia', 'Amabel', 'aputman1u@creativecommons.org', '8307316805', '1998-08-08', '83 Carberry Street', null, 'Bukovany', 'ZD82 6YO'),
(68, 'Tim', 'Oren', 'Bond', 'bsiggers1v@google.com.hk', '2013243249', '1993-12-11', '773 Briar Crest Terrace', '11th Floor', 'Newark', 'LC42 9QA'),
(69, 'Eddy', 'Bobby', 'Noach', 'nworks1w@independent.co.uk', '8957912293', '1997-11-28', '6838 Oneill Way', null, 'San Marcos', 'HZ3 9BV'),
(70, 'Mayer', null, 'Rodd', 'rluten1x@unesco.org', '7466385443', '2000-11-11', '4079 Montana Hill', null, 'Baluk', 'LU4 2HV'),
(71, 'Angel', 'Laureen', 'Jenda', 'jelsmore1y@privacy.gov.au', '7945422558', '2000-09-10', '595 Spohn Avenue', null, 'Cosquín', 'ZG39 0LG'),
(72, 'Rosene', 'Feodor', 'Natasha', 'nwitham1z@com.com', '5295562928', '1995-05-09', '4330 Express Avenue', null, 'Guatimozín', 'NQ5 1MC'),
(73, 'Garnet', 'Harwell', 'Sam', 'sandrzejczak20@cdc.gov', '6852882936', '2001-09-15', '1 Spohn Trail', 'Apt 670', 'Haihui', 'NR60 9BP'),
(74, 'Alfonse', 'Tammy', 'Adham', 'aquirke21@omniture.com', '2116373293', '1997-06-03', '79550 Valley Edge Lane', null, 'Bojonegoro', 'NT3 2TS'),
(75, 'Clarine', 'Yale', 'Pippy', 'priall22@thetimes.co.uk', '9623541519', '2005-09-11', '53513 Bartelt Avenue', '6th Floor', 'Yanglin', 'HT53 7TG'),
(76, 'Codie', 'Petronilla', 'Devi', 'dbutchard23@hc360.com', '7363676484', '1994-04-24', '43908 Twin Pines Plaza', 'Suite 79', 'Krajan Satu', 'LE6 3TJ'),
(77, 'Margot', 'Sheffield', 'Heriberto', 'hcretney24@linkedin.com', '1385770515', '2002-10-10', '1348 Elka Trail', 'PO Box 4999', 'Al Qamşīyah', 'JI2 1LD'),
(78, 'Charlton', 'Adda', 'Joellyn', 'jdrioli25@jigsy.com', '8477868758', '1996-04-11', '5 Leroy Alley', null, 'Foz Giraldo', 'QJ62 4ST'),
(79, 'Godiva', 'Chaunce', 'Cecil', 'cedlestone26@oakley.com', '2394832013', '2005-08-20', '2028 Rockefeller Way', '5th Floor', 'Murun-kuren', 'UX2 2HE'),
(80, 'Carver', null, 'Luce', 'lhillan27@delicious.com', '6206880311', '1991-03-07', '59 Moulton Plaza', null, 'Askim', 'YA9 6BF');

-- ---------------------------
-- Table Structure for COURSE_STUDENT
-- ---------------------------
CREATE TYPE course_stu_status AS ENUM ('Ongoing', 'Completed', 'Dropped Out');
CREATE TABLE course_student(
    course_id INT NOT NULL,
    stu_id INT NOT NULL,
    course_stu_start_date DATE NOT NULL,
    status course_stu_status NOT NULL,
    PRIMARY KEY (course_id, stu_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id)
);

-- ---------------------------
-- Records for COUSE_STUDENT
-- ---------------------------
INSERT INTO course_student (course_id, stu_id, course_stu_start_date, status)
VALUES
(1, 1, '2020-10-20', 'Ongoing'),
(1, 2, '2020-10-27', 'Ongoing'),
(1, 3, '2020-11-20', 'Ongoing'),
(1, 4, '2021-01-01', 'Ongoing'),
(1, 5, '2021-01-09', 'Completed'),
(1, 6, '2020-12-04', 'Completed'),
(1, 7, '2021-01-11', 'Completed'), -- 7 in maths
(2, 8, '2020-12-21', 'Ongoing'),
(2, 9, '2021-01-23', 'Ongoing'),
(2, 10, '2020-12-31', 'Ongoing'),
(2, 11, '2020-12-03', 'Ongoing'),
(2, 12, '2021-01-21', 'Ongoing'),
(2, 13, '2021-01-21', 'Completed'),
(2, 14, '2020-12-23', 'Completed'),
(2, 15, '2021-01-12', 'Completed'), -- 8 in phys
(3, 16, '2021-01-27', 'Ongoing'),
(3, 17, '2020-12-18', 'Ongoing'),
(3, 18, '2021-01-13', 'Ongoing'),
(3, 19, '2020-12-25', 'Dropped Out'),
(3, 20, '2020-12-26', 'Dropped Out'),
(3, 21, '2020-12-27', 'Completed'),
(3, 22, '2020-12-02', 'Completed'), -- 7 in cs
(4, 23, '2021-01-30', 'Ongoing'),
(4, 24, '2020-12-02', 'Ongoing'),
(4, 25, '2021-01-16', 'Ongoing'),
(4, 26, '2020-11-07', 'Ongoing'),
(4, 27, '2020-10-15', 'Dropped Out'),
(4, 28, '2020-12-07', 'Completed'),
(4, 29, '2020-11-04', 'Completed'), -- 7 in cyber sec
(5, 30, '2020-11-24', 'Ongoing'),
(5, 31, '2020-10-28', 'Ongoing'),
(5, 32, '2021-01-26', 'Ongoing'),
(5, 33, '2020-11-06', 'Ongoing'),
(5, 34, '2020-12-29', 'Dropped Out'),
(5, 35, '2021-01-24', 'Completed'),
(5, 36, '2020-11-19', 'Completed'), -- 7 in software eng
(6, 37, '2020-12-02', 'Ongoing'),
(6, 38, '2021-01-25', 'Ongoing'),
(6, 39, '2021-01-18', 'Ongoing'),
(6, 40, '2021-01-08', 'Ongoing'),
(6, 41, '2020-11-28', 'Ongoing'),
(6, 42, '2020-12-04', 'Completed'),
(6, 43, '2020-12-27', 'Completed'), -- 7 in environmental sci
(7, 44, '2020-10-29', 'Ongoing'),
(7, 45, '2020-11-17', 'Ongoing'),
(7, 46, '2021-01-19', 'Ongoing'),
(7, 47, '2020-12-30', 'Ongoing'),
(7, 48, '2020-11-07', 'Dropped Out'),
(7, 49, '2020-11-20', 'Dropped Out'),
(7, 50, '2021-01-27', 'Completed'), -- 7 in geog
(8, 51, '2020-11-08', 'Ongoing'),
(8, 52, '2021-01-17', 'Ongoing'),
(8, 53, '2021-01-03', 'Ongoing'),
(8, 54, '2020-12-01', 'Ongoing'),
(8, 55, '2020-10-31', 'Completed'),
(8, 56, '2020-10-17', 'Completed'),
(8, 57, '2021-01-14', 'Completed'),
(8, 58, '2020-11-25', 'Completed'), -- 8 history
(9, 59, '2020-11-29', 'Ongoing'),
(9, 60, '2020-10-22', 'Ongoing'),
(9, 61, '2021-01-30', 'Ongoing'),
(9, 62, '2021-01-20', 'Ongoing'),
(9, 63, '2020-11-29', 'Ongoing'),
(9, 64, '2020-10-28', 'Dropped Out'),
(9, 65, '2020-12-20', 'Dropped Out'),
(9, 66, '2020-11-13', 'Dropped Out'), -- 8 film studies
(10, 67, '2020-12-26', 'Ongoing'),
(10, 68, '2020-12-25', 'Ongoing'),
(10, 69, '2020-10-17', 'Ongoing'),
(10, 70, '2020-11-24', 'Ongoing'),
(10, 71, '2020-12-31', 'Completed'),
(10, 72, '2020-10-19', 'Completed'),
(10, 73, '2020-11-20', 'Completed'), -- 7 in music tech
(11, 74, '2020-11-24', 'Ongoing'),
(11, 75, '2021-01-23', 'Ongoing'),
(11, 76, '2020-11-26', 'Ongoing'),
(11, 77, '2020-11-29', 'Dropped Out'),
(11, 78, '2020-12-05', 'Completed'),
(11, 79, '2020-11-21', 'Completed'),
(11, 80, '2020-12-28', 'Completed'), -- 7 in theatre
-- students taking more courses:
(2, 5, '2023-01-09', 'Ongoing'), -- phys
(2, 6, '2022-12-04', 'Ongoing'), -- phys
(3, 7, '2023-01-11', 'Ongoing'), -- cs
(3, 15, '2023-01-21', 'Ongoing'), -- cs
(4, 21, '2022-12-02', 'Ongoing'), -- cyber sec
(5, 22, '2022-10-15', 'Ongoing'), -- software eng
(6, 36, '2022-11-28', 'Ongoing'), -- environ
(6, 56, '2022-10-17', 'Ongoing'), -- environ
(6, 57, '2023-01-14', 'Ongoing'), -- environ
(7, 58, '2022-11-25', 'Ongoing'), -- geog
(7, 71, '2022-12-31', 'Ongoing'), -- geog
(8, 72, '2022-10-19', 'Ongoing'), -- history
(9, 78, '2022-12-05', 'Ongoing'), -- film stu
(10, 79, '2022-11-21', 'Ongoing'); -- music tech

-- ---------------------------
-- Table Structure for SUBJECT
-- ---------------------------
CREATE TABLE subject(
    subject_id SERIAL PRIMARY KEY,
    course_id INT NOT NULL,
    subject_name VARCHAR(150) NOT NULL,
    subject_desc TEXT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

-- ---------------------------
-- Records for SUBJECT
-- 3 subjects per course
-- ---------------------------
INSERT INTO subject (subject_id, course_id, subject_name, subject_desc)
VALUES 
(1, 1, 'Calculus I', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(2, 1, 'Linear Algebra', 'Donec dapibus. Duis at velit eu est congue elementum.'),
(3, 1, 'Probability and Statistics', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.'),
(4, 2, 'Mathematical Physics', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
(5, 2, 'Computational Physics', 'Proin risus. Praesent lectus.'),
(6, 2, 'Waves and Optics', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),
(7, 3, 'Networks', 'Integer ac neque. Duis bibendum.'),
(8, 3, 'Data Structures and Algorithms', 'Nulla tellus. In sagittis dui vel nisl.'),
(9, 3, 'Database Management Systems', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.'),
(10, 4, 'Introduction to Cyber Security', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.'),
(11, 4, 'Network Security', 'Etiam pretium iaculis justo.'),
(12, 4, 'Ethical Hacking', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.'),
(13, 5, 'Introduction to Software Engineering', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
(14, 5, 'Object-Oriented Programming', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
(15, 5, 'Software Testing and Quality Assurance', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),
(16, 6, 'Introduction to Environmental Science', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo.'),
(17, 6, 'Ecology and Biodiversity', 'Duis ac nibh.'),
(18, 6, 'Climate Change and Sustainability', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),
(19, 7, 'Introduction to Human Geography', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.'),
(20, 7, 'Human Geography: Global Patterns and Local Lives', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
(21, 7, 'Geographical Information Systems (GIS)', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.'),
(22, 8, 'Discovering World Histories: People and Places', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.'),
(23, 8, 'Beliefs, Communities and Conflicts: Europe 1400 - 1750', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
(24, 8, 'Societies, Nations and Empires: Europe 1750-2000', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'),
(25, 9, 'Introduction to Film Studies', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.'),
(26, 9, 'Film Theory and Criticism', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.'),
(27, 9, 'History of Cinema', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.'),
(28, 10, 'Introduction to Music Production', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(29, 10, 'Sound Design Techniques', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.'),
(30, 10, 'Live Sound Engineering', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
(31, 11, 'Introduction to Theatre', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.'),
(32, 11, 'Acting Techniques', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.'),
(33, 11, 'Stagecraft 101', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.');

-- ---------------------------
-- Table Structure for SUBJECT_LEVEL
-- ---------------------------
CREATE TABLE subject_level(
    subject_id INT NOT NULL,
    level_id INT NOT NULL,
    PRIMARY KEY (subject_id, level_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),
    FOREIGN KEY (level_id) REFERENCES level_category(level_id)
);

-- ---------------------------
-- Records for SUBJECT_LEVEL
-- l4 = id1, l5 = id2, l6 = id3, l7 = id4
-- ---------------------------
INSERT INTO subject_level(subject_id, level_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(10, 1), -- intro
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(13, 1), -- intro
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(16, 1), -- intro
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(19, 1), -- intro
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(25, 1), -- intro
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(28, 1), -- intro
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(31, 1), -- intro
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(33, 1),
(33, 2),
(33, 3),
(33, 4);

-- ---------------------------
-- Table Structure for STAFF_SUBJECT
-- ---------------------------
CREATE TABLE staff_subject(
    subject_id INT NOT NULL,
    staff_id INT NOT NULL,
    PRIMARY KEY (staff_id, subject_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id)
);

-- ---------------------------
-- Records for STAFF_SUBJECT
-- ---------------------------
INSERT INTO staff_subject(subject_id,staff_id)
VALUES
(1,5),
(2,1),
(3,6),
(4,1),
(5,6),
(6,5),
(7,2),
(8,9),
(9,10),
(10,10),
(11,2),
(12,9),
(13,10),
(14,9),
(15,2),
(16,3),
(17,14),
(18,15),
(19,14),
(20,3),
(21,15),
(22,15),
(23,14),
(24,3),
(25,4),
(26,21),
(27,20),
(28,21),
(29,4),
(30,20),
(31,4),
(32,20),
(33,21);

-- ---------------------------
-- Table Structure for PROGRESS_REPORT
-- ---------------------------
CREATE TABLE progress_report(
    subject_id INT NOT NULL,
    stu_id INT NOT NULL,
    comment TEXT NOT NULL,
    PRIMARY KEY (subject_id, stu_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id)
);

-- ---------------------------
-- Records for PROGRESS_REPORT
-- ---------------------------
INSERT INTO progress_report(subject_id, stu_id, comment)
VALUES
(1, 1, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.'),
(1, 2, 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.'),
(1, 3, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.'),
(1, 4, 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.'),
(2, 5, 'Proin eu mi.'),
(2, 6, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.'),
(2, 8, 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),
(2, 9, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.'),
(2, 10, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae, Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.'),
(2, 11, 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.'),
(2, 12, 'Aliquam quis turpis eget elit sodales scelerisque.'),
(3, 7, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(3, 15, 'Donec ut dolor.'),
(3, 16, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.'),
(3, 17, 'Nam dui.'),
(3, 18, 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.'),
(4, 21, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'),
(4, 23, 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.'),
(4, 24, 'Duis mattis egestas metus.'),
(4, 25, 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.'),
(4, 26, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.'),
(5, 22, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.'),
(5, 30, 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.'),
(5, 31, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.'),
(5, 32, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.'),
(5, 33, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
(6, 36, 'Aenean sit amet justo. Morbi ut odio.'),
(6, 37, 'Nullam porttitor lacus at turpis.'),
(6, 38, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.'),
(6, 39, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
(6, 40, 'Nulla tellus. In sagittis dui vel nisl.'),
(6, 41, 'Etiam vel augue. Vestibulum rutrum rutrum neque.'),
(6, 56, 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.'),
(6, 57, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.'),
(7, 44, 'Integer a nibh. In quis justo.'),
(7, 45, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.'),
(7, 46, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
(7, 47, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'),
(7, 58, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.'),
(7, 71, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
(8, 51, 'Etiam justo. Etiam pretium iaculis justo.'),
(8, 52, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.'),
(8, 53, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.'),
(8, 54, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae, Nulla dapibus dolor vel est.'),
(8, 72, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.'),
(9, 59, 'Vestibulum rutrum rutrum neque.'),
(9, 60, 'Pellentesque at nulla.'),
(9, 61, 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.'),
(9, 62, 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.'),
(9, 63, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.'),
(9, 78, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.'),
(10, 67, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),
(10, 68, 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
(10, 69, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae, Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),
(10, 70, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.'),
(10, 79, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.'),
(11, 74, 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.'),
(11, 75, 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.'),
(11, 76, 'Curabitur at ipsum ac tellus semper interdum.'),
(11, 77, 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.');

-- ---------------------------
-- Table Structure for SUBJECT_CREDIT
-- ---------------------------
CREATE TABLE subject_credit(
    subject_id INT NOT NULL,
    stu_id INT NOT NULL,
    level_id INT NOT NULL,
    credit INT NOT NULL,
    PRIMARY KEY (subject_id, stu_id, level_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id),
    FOREIGN KEY (level_id) REFERENCES level_category(level_id)
);

-- ---------------------------
-- Records for SUBJECT_CREDIT
-- ---------------------------
INSERT INTO subject_credit(subject_id, stu_id, level_id, credit)
VALUES
(1, 1, 1, 26),
(1, 2, 2, 36),
(1, 4, 3, 28),
(2, 1, 4, 25),
(2, 3, 1, 27),
(2, 4, 2, 38),
(3, 2, 3, 7),
(3, 3, 4, 13),
(3, 4, 1, 9),
(4, 5, 2, 39),
(4, 6, 3, 4),
(4, 8, 4, 24),
(4, 9, 1, 34), 
(4, 10, 2, 16),
(5, 6, 3, 22),
(5, 9, 4, 10),
(5, 10, 1, 4),
(5, 11, 2, 18),
(5, 12, 3, 10),
(6, 5, 4, 5),
(6, 8, 1, 13),
(6, 9, 2, 33),
(6, 10, 3, 18),
(6, 11, 4, 20),
(7, 16, 1, 26),
(7, 17, 2, 27),
(7, 18, 3, 20),
(8, 7, 4, 20),
(8, 15, 1, 10), 
(8, 16, 2, 17),
(9, 7, 3, 15),
(9, 17, 4, 17),
(9, 18, 1, 31), 
(10, 23, 1, 40),
(10, 24, 1, 22),
(10, 25, 1, 35),
(11, 21, 1, 2),
(11, 24, 2, 1),
(11, 26, 3, 8),
(12, 24, 4, 17),
(12, 25, 1, 30),
(12, 26, 2, 11),
(13, 22, 1, 6),
(13, 30, 1, 29),
(13, 31, 1, 33),
(13, 32, 1, 17),
(14, 31, 3, 21),
(14, 32, 4, 33),
(14, 33, 1, 11),
(15, 22, 3, 26),
(15, 30, 4, 24),
(15, 33, 1, 26),
(16, 36, 2, 22),
(16, 37, 1, 34),
(16, 38, 1, 38),
(16, 39, 1, 17),
(16, 40, 1, 4),
(16, 41, 1, 24),
(17, 36, 2, 9),
(17, 39, 4, 29),
(17, 40, 1, 19),
(17, 41, 2, 39),
(17, 56, 3, 16),
(17, 57, 4, 3),
(18, 38, 1, 27),
(18, 39, 2, 32),
(18, 40, 3, 17),
(18, 41, 4, 9),
(18, 56, 1, 40),
(19, 44, 1, 17),
(19, 45, 1, 13),
(19, 58, 1, 15),
(19, 71, 1, 7),
(20, 44, 2, 33),
(20, 45, 3, 16),
(20, 46, 4, 20),
(20, 47, 1, 30),
(21, 45, 2, 18),
(21, 56, 3, 28),
(21, 58, 4, 33),
(21, 71, 1, 29),
(22, 51, 2, 28),
(22, 52, 3, 13),
(22, 53, 4, 12),
(22, 54, 1, 10),
(23, 72, 2, 37),
(23, 51, 3, 2),
(23, 52, 4, 28),
(24, 53, 1, 7),
(24, 54, 2, 17),
(24, 72, 3, 21),
(25, 59, 1, 32),
(25, 60, 1, 6),
(25, 61, 1, 7),
(25, 78, 1, 11),
(26, 60, 4, 29),
(26, 62, 1, 14),
(26, 63, 2, 14),
(26, 78, 3, 5),
(27, 59, 4, 18),
(27, 60, 1, 12),
(27, 61, 2, 36),
(27, 62, 3, 35),
(28, 67, 1, 12),
(28, 68, 1, 4),
(28, 69, 1, 40),
(29, 69, 3, 7),
(29, 70, 4, 18),
(29, 79, 1, 7),
(30, 59, 2, 17),
(30, 60, 3, 36),
(30, 63, 4, 34),
(31, 74, 1, 30),
(31, 75, 1, 10),
(32, 75, 4, 18),
(32, 76, 1, 10),
(33, 74, 3, 11),
(33, 75, 4, 25),
(33, 76, 1, 39);

-- ---------------------------
-- Table Structure for SESSION
-- ---------------------------
CREATE TABLE session(
    session_id SERIAL PRIMARY KEY,
    subject_id INT NOT NULL,
    session_date DATE NOT NULL,
    session_time TIME NOT NULL,
    session_completion BOOLEAN NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id)
);

-- ---------------------------
-- Records for SESSION
-- ---------------------------
INSERT INTO session (session_id, subject_id, session_date, session_time, session_completion)
VALUES

(1, 1, '2023-12-10', '11:57', true),
(2, 2, '2023-11-06', '12:01', true),
(3, 3, '2024-03-26', '13:43', false),
(4, 4, '2023-12-12', '10:54', true),
(5, 5, '2023-11-30', '10:28', true),
(6, 6, '2023-09-20', '10:26', true),
(7, 7, '2024-05-26', '9:10', false),
(8, 8, '2023-10-08', '14:30', true),
(9, 9, '2024-01-16', '17:04', true),
(10, 10, '2024-01-20', '13:05', true),
(11, 11, '2024-02-12', '10:01', true),
(12, 12, '2024-04-10', '13:43', false),
(13, 13, '2024-01-21', '11:51', true),
(14, 14, '2024-03-13', '14:13', false),
(15, 15, '2024-04-16', '9:20', false),
(16, 16, '2024-01-02', '14:54', true),
(17, 17, '2024-05-16', '16:48', false),
(18, 18, '2023-11-04', '14:53', true),
(19, 19, '2023-12-09', '12:22', true),
(20, 20, '2023-12-21', '17:08', true),
(21, 21, '2024-05-18', '14:53', false),
(22, 22, '2023-10-31', '11:16', true),
(23, 23, '2023-10-01', '17:22', true),
(24, 24, '2024-02-27', '14:06', false),
(25, 25, '2023-10-21', '17:18', true),
(26, 26, '2023-10-31', '14:56', true),
(27, 27, '2023-09-18', '14:45', true),
(28, 28, '2024-04-09', '11:54', false),
(29, 29, '2024-06-11', '13:18', false),
(30, 30, '2023-12-09', '11:48', true),
(31, 31, '2023-10-06', '9:47', true),
(32, 32, '2024-06-21', '14:09', false),
(33, 33, '2023-12-06', '9:31', true),
(34, 1, '2024-06-16', '15:20', false),
(35, 2, '2024-01-06', '15:13', true),
(36, 3, '2024-06-02', '11:53', false),
(37, 4, '2023-09-21', '14:17', true),
(38, 5, '2024-03-04', '17:43', false),
(39, 6, '2023-12-03', '17:18', true),
(40, 7, '2023-10-31', '16:56', true),
(41, 8, '2024-01-29', '11:55', true),
(42, 9, '2023-10-03', '14:52', true),
(43, 10, '2024-05-01', '14:21', false),
(44, 11, '2024-02-15', '15:20', false),
(45, 12, '2023-12-18', '11:19', true),
(46, 13, '2023-10-10', '15:20', true),
(47, 14, '2024-06-16', '11:39', false),
(48, 15, '2024-05-27', '11:43', false),
(49, 16, '2024-06-20', '14:14', false),
(50, 17, '2024-02-10', '9:55', true),
(51, 18, '2023-12-25', '9:17', true),
(52, 19, '2023-12-24', '13:40', true),
(53, 20, '2023-11-21', '12:21', true),
(54, 21, '2023-12-03', '12:40', true),
(55, 22, '2023-12-07', '9:24', true),
(56, 23, '2024-03-29', '16:43', false),
(57, 24, '2024-04-04', '11:38', false),
(58, 25, '2023-09-25', '9:42', true),
(59, 26, '2024-05-16', '10:46', false),
(60, 27, '2023-10-27', '11:35', true),
(61, 28, '2024-05-20', '11:48', false),
(62, 29, '2024-03-26', '14:30', false),
(63, 30, '2024-05-16', '11:48', false),
(64, 31, '2024-05-06', '13:18', false),
(65, 32, '2024-01-09', '16:51', true),
(66, 33, '2024-01-27', '14:55', true),
(67, 1, '2023-10-07', '11:24', true),
(68, 2, '2024-03-23', '11:05', false),
(69, 3, '2023-11-30', '17:38', true),
(70, 4, '2023-10-02', '9:14', true),
(71, 5, '2023-12-18', '11:03', true),
(72, 6, '2024-05-06', '17:11', false),
(73, 7, '2023-12-16', '12:54', true),
(74, 8, '2024-03-20', '10:41', false),
(75, 9, '2023-10-14', '15:27', true),
(76, 10, '2023-10-04', '15:27', true),
(77, 11, '2024-04-17', '14:36', false),
(78, 12, '2024-02-17', '17:56', false),
(79, 13, '2023-12-29', '13:07', true),
(80, 14, '2024-05-24', '9:06', false),
(81, 15, '2024-03-13', '13:26', false),
(82, 16, '2023-10-01', '12:05', true),
(83, 17, '2024-03-12', '10:00', false),
(84, 18, '2024-06-05', '15:50', false),
(85, 19, '2024-04-16', '9:28', false),
(86, 20, '2024-04-10', '14:46', false),
(87, 21, '2023-12-11', '10:41', true),
(88, 22, '2024-04-03', '10:54', false),
(89, 23, '2024-02-17', '11:05', false),
(90, 24, '2023-12-05', '9:18', true),
(91, 25, '2024-02-16', '14:39', false),
(92, 26, '2024-01-22', '10:57', true),
(93, 27, '2024-02-22', '14:26', false),
(94, 28, '2024-04-23', '15:34', false),
(95, 29, '2024-01-24', '10:52', true),
(96, 30, '2023-10-24', '12:02', true),
(97, 31, '2024-04-28', '13:17', false),
(98, 32, '2024-02-06', '13:38', true),
(99, 33, '2024-04-22', '14:57', false);

-- ---------------------------
-- Table Structure for STAFF_SESSION
-- ---------------------------
CREATE TABLE staff_session(
    session_id INT NOT NULL,
    staff_id INT NOT NULL,
    PRIMARY KEY (staff_id, session_id),
    FOREIGN KEY (session_id) REFERENCES session(session_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

-- ---------------------------
-- Records for STAFF_SESSION
-- ---------------------------
INSERT INTO staff_session(session_id,staff_id)
VALUES
(1,5),
(1,7),
(2,1),
(2,8),
(3,6),
(3,7),
(4,1),
(4,8),
(5,6),
(5,7),
(6,5),
(6,8),
(7,2),
(7,13),
(8,9),
(8,7),
(9,10),
(9,8),
(10,10),
(10,13),
(11,2),
(11,7),
(12,9),
(12,8),
(13,10),
(13,13),
(14,9),
(14,13),
(15,2),
(15,13),
(16,3),
(16,16),
(17,14),
(17,17),
(18,15),
(18,16),
(19,14),
(19,17),
(20,3),
(20,16),
(21,15),
(21,17),
(22,15),
(22,16),
(23,14),
(23,17),
(24,3),
(24,16),
(25,4),
(25,17),
(26,21),
(26,23),
(27,20),
(27,24),
(28,21),
(28,23),
(29,4),
(29,24),
(30,20),
(30,23),
(31,4),
(31,24),
(32,20),
(32,23),
(33,21),
(33,24),
(34,5),
(34,7),
(35,1),
(35,8),
(36,6),
(36,7),
(37,1),
(37,8),
(38,6),
(37,7),
(39,5),
(39,8),
(40,2),
(40,13),
(41,9),
(41,7),
(42,10),
(42,8),
(43,10),
(43,13),
(44,2),
(44,7),
(45,9),
(45,8),
(46,10),
(46,13),
(47,9),
(47,13),
(48,2),
(48,13),
(49,3),
(49,16),
(50,14),
(50,17),
(51,15),
(51,16),
(52,14),
(52,17),
(53,3),
(53,16),
(54,15),
(54,17),
(55,15),
(55,16),
(56,14),
(56,17),
(57,3),
(57,16),
(58,4),
(58,17),
(59,21),
(59,23),
(60,20),
(60,24),
(61,21),
(61,23),
(62,4),
(62,24),
(63,20),
(63,23),
(64,4),
(64,24),
(65,20),
(65,23),
(66,21),
(66,24),
(67,5),
(67,7),
(68,1),
(68,8),
(69,6),
(69,7),
(70,1),
(70,8),
(71,6),
(71,7),
(72,5),
(72,8),
(73,2),
(73,13),
(74,9),
(74,7),
(75,10),
(75,8),
(76,10),
(76,13),
(77,2),
(77,7),
(78,9),
(78,8),
(79,10),
(79,13),
(80,9),
(80,13),
(81,2),
(81,13),
(82,3),
(82,16),
(83,14),
(83,17),
(84,15),
(84,16),
(85,14),
(85,17),
(86,3),
(86,16),
(87,15),
(87,17),
(88,15),
(88,16),
(89,14),
(89,17),
(90,3),
(90,16),
(91,4),
(91,17),
(92,21),
(92,23),
(93,20),
(93,24),
(94,21),
(94,23),
(95,4),
(95,24),
(96,20),
(96,23),
(97,4),
(97,24),
(98,20),
(98,23),
(99,21),
(99,24);

-- ---------------------------
-- Table Structure for STUDENT_SESSION
-- ---------------------------
CREATE TABLE student_session(
    session_id INT NOT NULL,
    stu_id INT NOT NULL,
    PRIMARY KEY (stu_id, session_id),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id),
    FOREIGN KEY (session_id) REFERENCES session(session_id)
);

-- ---------------------------
-- Records for STUDENT_SESSION
-- ---------------------------
INSERT INTO student_session(session_id, stu_id)
VALUES
(1, 1), -- calculus
(1, 2),
(1, 4),
(2, 1), -- algebra
(2, 3),
(2, 4),
(3, 2), -- prob and stats
(3, 3),
(3, 4),
(4, 5), -- math phys
(4, 6),
(4, 8),
(4, 9), --
(4, 10),
(5, 6), -- comp phys
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(6, 5), -- waves and opt
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(7, 16), -- networks
(7, 17), 
(7, 18), 
(8, 7), -- data structures
(8, 15),
(8, 16), 
(9, 7), -- dsd
(9, 17),
(9, 18),
(10, 23), -- intro to cyber sec
(10, 24), 
(10, 25), 
(11, 21), -- network sec
(11, 24), 
(11, 26), 
(12, 24), -- ethical hacking
(12, 25), 
(12, 26), 
(13, 22), -- intro to soft en
(13, 30), 
(13, 31), 
(13, 32), 
(14, 31), -- oop
(14, 32), 
(14, 33), 
(15, 22), -- soft test + qual 
(15, 30), 
(15, 33), 
(16, 36), -- intro to environ
(16, 37), 
(16, 38), 
(16, 39), 
(16, 40), 
(16, 41), 
(17, 39), -- ecology and biodiversity
(17, 36), 
(17, 40),
(17, 41),
(17, 56),
(17, 57),
(18, 38), -- climate change and sustain
(18, 39),
(18, 40),
(18, 41),
(18, 56),
(19, 44), -- intro to human geo
(19, 45),
(19, 58),
(19, 71),
(20, 44), -- global patterns
(20, 45),
(20, 46),
(20, 47),
(21, 45), -- geographical info systems
(21, 56),
(21, 58),
(21, 71),
(22, 51), -- world history
(22, 52),
(22, 53),
(22, 54),
(23, 72), -- europe 1400
(23, 51), 
(23, 52),
(24, 53), -- europe 1750-2000
(24, 54),
(24, 72),
(25, 59), -- intro to film stu
(25, 60),
(25, 61),
(25, 78),
(26, 60), -- film theory
(26, 62),
(26, 63),
(26, 78),
(27, 59), -- history of cinema
(27, 60),
(27, 61),
(27, 62),
(28, 67), -- intro to music
(28, 68),
(28, 69),
(29, 69), -- sound design
(29, 70),
(29, 79),
(30, 59), -- live sound engin
(30, 60),
(30, 63),
(31, 74), -- intro to theatre
(31, 75),
(32, 75), -- acting tech
(32, 76),
(33, 74), -- stagecraft 101
(33, 75),
(33, 76),
(34, 1), -- calculus
(34, 2),
(34, 4),
(35, 1), -- algebra
(35, 3),
(35, 4),
(36, 2), -- prob and stats
(36, 3),
(36, 4),
(37, 5), -- math phys
(37, 6),
(37, 8),
(37, 9),
(37, 10),
(38, 6), -- comp phys
(38, 9),
(38, 10),
(38, 11),
(38, 12),
(39, 5), -- waves and opt
(39, 8),
(39, 9),
(39, 10),
(39, 11),
(40, 16), -- networks
(40, 17), 
(40, 18), 
(41, 7), -- data structures
(41, 15),
(41, 16), 
(42, 7), -- dsd
(42, 17),
(42, 18),
(43, 23), -- intro to cyber sec
(43, 24), 
(43, 25), 
(44, 21), -- network sec
(44, 24), 
(44, 26), 
(45, 24), -- ethical hacking
(45, 25), 
(45, 26), 
(46, 22), -- intro to soft en
(46, 30), 
(46, 31), 
(46, 32), 
(47, 31), -- oop
(47, 32), 
(47, 33), 
(48, 22), -- soft test + qual 
(48, 30), 
(48, 33), 
(49, 36), -- intro to environ
(49, 37), 
(49, 38), 
(49, 39), 
(49, 40), 
(49, 41), 
(50, 36), -- ecology and biodiversity
(50, 39), 
(50, 40),
(50, 41),
(50, 56),
(50, 57),
(51, 56), -- climate change and sustain
(51, 38),
(51, 39),
(51, 40),
(51, 41),
(52, 58), -- intro to human geo
(52, 71),
(52, 44),
(52, 45),
(53, 44), -- global patterns
(53, 45),
(53, 46),
(53, 47),
(54, 58), -- geographical info systems
(54, 71),
(54, 45),
(54, 56),
(55, 51), -- world history
(55, 52),
(55, 54),
(55, 53),
(56, 72), -- europe 1400
(56, 51), 
(56, 52),
(57, 53), -- europe 1750-2000
(57, 54),
(57, 72),
(58, 78), -- intro to film stu
(58, 59),
(58, 60),
(58, 61),
(59, 60), -- film theory
(59, 62),
(59, 63),
(59, 78),
(60, 59), -- history of cinema
(60, 60),
(60, 61),
(60, 62),
(61, 67), -- intro to music
(61, 68),
(61, 69),
(62, 69), -- sound design
(62, 70),
(62, 79),
(63, 59), -- live sound engin
(63, 60),
(63, 63),
(64, 74), -- intro to theatre
(64, 75),
(65, 75), -- acting tech
(65, 76),
(66, 74), -- stagecraft 101
(66, 75),
(66, 76),
(67, 1), -- calculus
(67, 2),
(67, 4),
(68, 1), -- algebra
(68, 3),
(68, 4),
(69, 2), -- prob and stats
(69, 3),
(69, 4),
(70, 5), -- math phys
(70, 6),
(70, 8),
(70, 9),
(70, 10),
(71, 6), -- comp phys
(71, 9),
(71, 10),
(71, 11),
(71, 12),
(72, 5), -- waves and opt
(72, 8),
(72, 9),
(72, 10),
(72, 11),
(73, 16), -- networks
(73, 17), 
(73, 18), 
(74, 7), -- data structures
(74, 15),
(74, 16), 
(75, 7), -- dsd
(75, 17),
(75, 18),
(76, 23), -- intro to cyber sec
(76, 24), 
(76, 25), 
(77, 21), -- network sec
(77, 24), 
(77, 26), 
(78, 24), -- ethical hacking
(78, 25), 
(78, 26), 
(79, 22), -- intro to soft en
(79, 30), 
(79, 31), 
(79, 32), 
(80, 31), -- oop
(80, 32), 
(80, 33), 
(81, 22), -- soft test + qual 
(81, 30), 
(81, 33), 
(82, 36), -- intro to environ
(82, 37), 
(82, 38), 
(82, 39), 
(82, 40), 
(82, 41), 
(83, 36), -- ecology and biodiversity
(83, 39), 
(83, 40),
(83, 41),
(83, 56),
(83, 57),
(84, 56), -- climate change and sustain
(84, 38),
(84, 39),
(84, 40),
(84, 41),
(85, 58), -- intro to human geo
(85, 71),
(85, 44),
(85, 45),
(86, 44), -- global patterns
(86, 45),
(86, 46),
(86, 47),
(87, 58), -- geographical info systems
(87, 71),
(87, 45),
(87, 56),
(88, 51), -- world history
(88, 52),
(88, 54),
(88, 53),
(89, 72), -- europe 1400
(89, 51), 
(89, 52),
(90, 53), -- europe 1750-2000
(90, 54),
(90, 72),
(91, 78), -- intro to film stu
(91, 59),
(91, 60),
(91, 61),
(92, 60), -- film theory
(92, 62),
(92, 63),
(92, 78),
(93, 59), -- history of cinema
(93, 60),
(93, 61),
(93, 62),
(94, 67), -- intro to music
(94, 68),
(94, 69),
(95, 69), -- sound design
(95, 70),
(95, 79),
(96, 59), -- live sound engin
(96, 60),
(96, 63),
(97, 74), -- intro to theatre
(97, 75),
(98, 75), -- acting tech
(98, 76),
(99, 74), -- stagecraft 101
(99, 75),
(99, 76);

-- ---------------------------
-- Table Structure for QUALIFICATION
-- ---------------------------
CREATE TABLE qualification(
    qual_id SERIAL PRIMARY KEY,
    course_id INT NOT NULL,
    level_id INT NOT NULL,
    qual_name VARCHAR(50) NOT NULL,
    qual_desc TEXT,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (level_id) REFERENCES level_category(level_id)
);

------------------------------------------------------------------------------------------------------------------------------------------ ---------------------------
-- Records for QUALIFICATION
-- ---------------------------
INSERT INTO qualification(qual_id, course_id, level_id, qual_name, qual_desc)
VALUES
(1, 1, 3, 'Bachelor of Science', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
'), -- maths
(2, 2, 3, 'Bachelor of Science', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.
'), -- physics
(3, 2, 4, 'Master of Physics', NULL), -- physics
(4, 3, 3, 'Bachelor of Science', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.
'), -- cs
(5, 3, 4, 'Master of Engineering', NULL), -- cs
(6, 4, 3, 'Bachelor of Science', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.
'), -- cyber sec
(7, 5, 3, 'Bachelor of Science', NULL), -- software eng
(8, 6, 3, 'Bachelor of Science', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.
'), -- environmental sci
(9, 7, 3, 'Bachelor of the Arts', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.
'), -- geog
(10, 8, 3, 'Bachelor of the Arts', NULL), -- history
(11, 9, 3, 'Bachelor of the Arts', NULL), -- film studies
(12, 10, 3, 'Bachelor of Science', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.
'), -- music tech
(13, 11, 3, 'Bachelor of the Arts', NULL); -- theatre

-- ---------------------------
-- Table Structure for STUDENT_QUALIFICATION
-- ---------------------------
CREATE TABLE student_qualification(
    qual_id INT NOT NULL,
    stu_id INT NOT NULL,
    total_credits INT NOT NULL,
    PRIMARY KEY (qual_id, stu_id),
    FOREIGN KEY (qual_id) REFERENCES qualification(qual_id),
    FOREIGN KEY (stu_id) REFERENCES student(stu_id)
);

-- ---------------------------
-- Records for STUDENT_QUALIFICATION
-- ---------------------------
INSERT INTO student_qualification(qual_id, stu_id, total_credits)
VALUES
(1, 5, 43),
(1, 6, 90),
(1, 7, 41),
(2, 13, 64),
(2, 14, 57),
(2, 15, 51),
(3, 21, 95),
(3, 22, 107),
(4, 28, 84),
(4, 29, 50),
(5, 35, 94),
(5, 36, 47),
(6, 42, 41),
(6, 43, 59),
(7, 50, 47),
(8, 55, 68),
(8, 56, 43),
(8, 57, 60),
(8, 58, 78),
(10, 71, 92),
(10, 72, 100),
(10, 73, 60),
(11, 78, 41),
(11, 79, 98),
(11, 80, 60);


-- WITH SELECTS
SELECT * FROM 