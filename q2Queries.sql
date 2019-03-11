SELECT	Courses.CourseName, CourseRegistrations.Grade ORDER BY CourseOffers.year, CourseOffers.Quartile FROM 	StudentRegistrationToDegrees, CourseRegistrations, CourseOffers, Courses WHERE	StudentRegistrationToDegrees.StudentId = %1% AND StudentRegistrationToDegrees.DegreeId = %2% AND StudentRegistrationToDegrees.StudentRegistrationId = CourseRegistrations.StudentRegistrationId AND CourseRegistrations.CourseOfferId = CourseOffers.CourseOfferId AND 	StudentRegistrationToDegrees.DegreeId = Courses.DegreeId AND CourseOffers.CourseId = Courses.CourseId;												
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
