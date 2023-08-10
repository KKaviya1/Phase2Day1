CREATE DATABASE OurExerciseDb ON PRIMARY
(NAME = 'OurExercise_Db',FILENAME = 'F:\Phase 3\Day 1\Assessment - 1\OurExercise_Db.mdf')
LOG ON
(NAME = 'OurExercise_log',FILENAME ='F:\Phase 3\Day 1\Assessment - 1\OurExercise_log.ldf' )
COLLATE SQL_Latin1_General_CP1_CI_AS
drop database OurExerciseDb

CREATE DATABASE OurExerciseDb ON PRIMARY
(NAME = 'OurExercise_Db',FILENAME = 'F:\Phase 3\Day 1\Assessment - 1\OurExercise_Db.mdf',
SIZE =24MB, MAXSIZE = 32MB , FILEGROWTH = 8MB)
LOG ON
(NAME = 'OurExercise_log',FILENAME ='F:\Phase 3\Day 1\Assessment - 1\OurExercise_log.ldf',
SIZE =8MB, MAXSIZE = 16MB , FILEGROWTH = 4MB)
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table StudentRegistrations
(StudentId int,
CourseCode nvarchar(50),
RegistrationDate date,
constraint pk_SR primary key(StudentId, CourseCode))
insert into StudentRegistrations values(123, 'CSE102', '11/07/2023')
insert into StudentRegistrations values(125, 'CSE103','09/010/2023')
insert into StudentRegistrations values(127, 'CSE104','07/06/2023')
insert into StudentRegistrations values(134, 'CSE105', '04/06/2023')
insert into StudentRegistrations values(256, 'CSE106', '21/05/2023')
insert into StudentRegistrations values(139, 'CSE107', '11/07/2023')
select * from StudentRegistrations