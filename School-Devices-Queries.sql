-- Identify all devices assigned to students at PS 105. Display the student name and device type.
SELECT DISTINCT STUDENT_FIRST, STUDENT_LAST, DEVICE_TYPE
FROM STUDENTS, DEVICES
WHERE STUDENTS.SCHOOLID = '226' AND DEVICES.STUDENTID = STUDENTS.STUDENT_ID;

-- Identify the number of devices assigned by school. Display 2 columns: school name and number of devices. Sort by school name. Utilize a function to answer this question.
SELECT SCHOOL_NAME, COUNT(DEVICE_TYPE)
FROM SCHOOLS, DEVICES
WHERE SCHOOLS.SCHOOL_ID = DEVICES.SCHOOL__ID
GROUP BY SCHOOL_NAME
ORDER BY SCHOOL_NAME;

-- Identify devices assigned to student Bo Li. Display the student name, school and device name and assigned date.
SELECT STUDENT_FIRST, STUDENT_LAST, SCHOOLID, DEVICE_TYPE, ASSIGNED_DATE
FROM STUDENTS, DEVICES
WHERE STUDENTS.STUDENT_ID = '41267' AND 
DEVICES.MAC_ADDRESS ='9808765780';

-- Identify students without devices. Display the student name and email. Use a nested select to answer this question.
SELECT STUDENT_FIRST, STUDENT_LAST, STUDENT_EMAIL
FROM STUDENTS
WHERE STUDENT_ID IN (
	SELECT STUDENT_ID
    FROM STUDENTS
    WHERE STUDENTS.HASDEVICE = FALSE
    );

-- Identify devices that were not returned. Display the student name and device type.
SELECT DISTINCT STUDENT_FIRST, STUDENT_LAST, DEVICE_TYPE
FROM STUDENTS, DEVICES
WHERE STUDENTS.RETURNED_DEVICE = FALSE AND DEVICES.STUDENTID = STUDENTS.STUDENT_ID;

-- Identify the total number of students by borough. Display 1 row for each borough. Use a function to answer this question
SELECT STUDENT_BOROUGH, COUNT(STUDENT_ID)
FROM STUDENTS
GROUP BY STUDENT_BOROUGH;




