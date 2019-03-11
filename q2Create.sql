CREATE INDEX sr_sID ON StudentRegistrationsToDegrees(StudentId);
create index student_index  on greaterfive(studentid);
CREATE VIEW finishedstudents AS select st.studentregistrationid from studentregistrationstodegrees sr, studenttotalcredits as st where st.studentregistrationid = sr.studentregistrationid and st.totalects >= sr.totalects;
create materialized view activestudents as (select sr.studentregistrationid from studentregistrationstodegrees sr except select studentregistrationid from finishedstudents);
CREATE VIEW excelentstudents AS SELECT studentregistrationid from finishedstudents except SELECT studentregistrationid from failedcourses;
CREATE MATERIALIZED VIEW excelentgpa AS SELECT excelentstudents.studentregistrationid, gradeects::numeric/totalects AS gpa FROM excelentstudents, studenttotalcredits WHERE excelentstudents.studentregistrationid = studenttotalcredits.studentregistrationid;
create materialized view studs (courseofferid, total) as (select courseofferid, count(studentregistrationid) from courseregistrations group by courseofferid);
create view assists (courseofferid, total) as (select courseofferid, count(studentregistrationid) from studentassistants group by courseofferid);
create view no as (select co.courseofferid, co.coursename, co.year, co.quartile, total from courseoffers co left join assists on co.courseofferid = assists.courseofferid);
