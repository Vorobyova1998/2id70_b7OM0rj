SELECT	Courses.CourseName, CourseRegistrations.Grade FROM 	StudentRegistrationToDegrees, CourseRegistrations, CourseOffers, Courses WHERE	StudentRegistrationToDegrees.StudentId = %1% AND StudentRegistrationToDegrees.DegreeId = %2% AND StudentRegistrationToDegrees.StudentRegistrationId = CourseRegistrations.StudentRegistrationId AND CourseRegistrations.CourseOfferId = CourseOffers.CourseOfferId AND 	StudentRegistrationToDegrees.DegreeId=Courses.DegreeId AND CourseOffers.CourseId = Courses.CourseId AND CourseRegistrations.grade >=5 RDER BY CourseOffers.year, CourseOffers.Quartile, CourseOffers.CourseOfferId;												
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
SELECT 0;
