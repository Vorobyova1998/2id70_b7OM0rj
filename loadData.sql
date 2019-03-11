CREATE UNLOGGED TABLE Students(StudentId int, StudentName varchar(50), Address varchar(200), BirthyearStudent smallint, Gender char, primary key(StudentId));
CREATE UNLOGGED TABLE degrees(degreeId int, dept varchar(50), degreedescription varchar(200), totalects smallint, primary key(degreeId));
CREATE UNLOGGED TABLE StudentRegistrationsToDegrees(StudentRegistrationId int, Studentid int, degreeId int, registrationyear smallint);
CREATE UNLOGGED TABLE teachers(teacherid int, teachername varchar(50), address varchar(200), birthyearteacher smallint, gender char, primary key(teacherid));
CREATE UNLOGGED TABLE courses(courseid int, coursename varchar(50), coursedescription varchar(200), degreeid int, ects int, primary key(courseid));
CREATE UNLOGGED TABLE courseoffers(courseofferid int, courseid int, year smallint, quartile smallint);
CREATE UNLOGGED TABLE TeacherAssignmentsToCourses(courseofferid int, teacherid int);
CREATE UNLOGGED TABLE studentassistants(courseofferid int , StudentRegistrationId int);
CREATE UNLOGGED TABLE courseregistrations(courseofferid int, studentregistrationid int, grade smallint);
