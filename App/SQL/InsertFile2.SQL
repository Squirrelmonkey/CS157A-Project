INSERT INTO Accountant(AccountantID, DepartmentID)


VALUES('AC1','D4');


INSERT INTO Accountant(AccountantID, DepartmentID)


VALUES('AC2','D3');


INSERT INTO Accountant(AccountantID, DepartmentID)


VALUES('AC3','D7');


INSERT INTO Accountant(AccountantID, DepartmentID)


VALUES('AC4','D5');


INSERT INTO Accountant(AccountantID, DepartmentID)


VALUES('AC5','D2');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A1','D6','lectus',to_date('05/06/2022','MM-DD-YYYY'),'1:38 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A2','D20','enim',to_date('07/14/2022','MM-DD-YYYY'),'3:38 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A3','D14','hac',to_date('10/28/2015','MM-DD-YYYY'),'3:08 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A4','D14','in',to_date('06/29/2022','MM-DD-YYYY'),'12:28 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A5','D13','felis',to_date('09/27/2017','MM-DD-YYYY'),'5:13 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A6','D7','eu',to_date('06/09/2017','MM-DD-YYYY'),'9:40 AM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A7','D9','tellus',to_date('07/21/2016','MM-DD-YYYY'),'4:36 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A8','D1','lectus',to_date('10/29/2020','MM-DD-YYYY'),'9:48 AM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A9','D1','orci',to_date('09/13/2020','MM-DD-YYYY'),'4:25 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A10','D14','duis',to_date('01/18/2017','MM-DD-YYYY'),'11:42 AM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A11','D11','sodales',to_date('02/21/2019','MM-DD-YYYY'),'12:50 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A12','D19','rutrum',to_date('09/18/2020','MM-DD-YYYY'),'1:33 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A13','D13','metus',to_date('02/02/2019','MM-DD-YYYY'),'1:02 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A14','D13','ultrices',to_date('12/14/2020','MM-DD-YYYY'),'9:49 AM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A15','D5','nibh',to_date('10/08/2015','MM-DD-YYYY'),'12:30 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A16','D9','massa',to_date('09/28/2020','MM-DD-YYYY'),'5:01 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A17','D15','duis',to_date('08/19/2020','MM-DD-YYYY'),'4:36 PM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A18','D18','nec',to_date('10/06/2018','MM-DD-YYYY'),'8:26 AM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A19','D4','id',to_date('07/23/2017','MM-DD-YYYY'),'8:15 AM');


INSERT INTO Appointment(Appointment, AptDoctorIDAssigned, AptType, AptDate, AptTime)


VALUES('A20','D20','corn',to_date('08/26/2018','MM-DD-YYYY'),'10:40 AM');


INSERT INTO Department(DepartmentID, DepartmentName, DepartmentFunctions)


VALUES('D1','Product Management','amet eleifend pede libero quis orci nullam molestie nibh in');


INSERT INTO Department(DepartmentID, DepartmentName, DepartmentFunctions)


VALUES('D2','Business Development','odio elementum eu interdum eu tincidunt');


INSERT INTO Department(DepartmentID, DepartmentName, DepartmentFunctions)


VALUES('D3','Business Development','morbi non lectus aliquam sit amet diam');


INSERT INTO Department(DepartmentID, DepartmentName, DepartmentFunctions)


VALUES('D4','Support','integer ac leo pellentesque ultrices mattis odio donec vitae nisi');


INSERT INTO Department(DepartmentID, DepartmentName, DepartmentFunctions)


VALUES('D5','Support','fusce posuere felis sed lacus morbi sem mauris');


INSERT INTO Department(DepartmentID, DepartmentName, DepartmentFunctions)


VALUES('D6','Research and Development','scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula');


INSERT INTO Department(DepartmentID, DepartmentName, DepartmentFunctions)


VALUES('D7','Services','nunc proin at turpis a');


INSERT INTO Doctor(DoctorID, DepartmentID, OfficeID)


VALUES('do1','D1','R1');


INSERT INTO Doctor(DoctorID, DepartmentID, OfficeID)


VALUES('do2','D5','R4');


INSERT INTO Doctor(DoctorID, DepartmentID, OfficeID)


VALUES('do3','D4','R17');


INSERT INTO Doctor(DoctorID, DepartmentID, OfficeID)


VALUES('do4','D7','R15');


INSERT INTO Doctor(DoctorID, DepartmentID, OfficeID)


VALUES('do5','D6','R16');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E1','Jared','Reschke','Male',to_date('07/13/1990','MM-DD-YYYY'),'257 Comanche Trail','Emilio','Caddock','244-336-4056');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E2','Clem','Ibbs','Female',to_date('04/26/1977','MM-DD-YYYY'),'0948 Golf Course Alley','Noelyn','Teresse','277-107-7399');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E3','Angelico','Cree','Male',to_date('01/20/1966','MM-DD-YYYY'),'1 Village Green Hill','Tybalt','Sturdey','397-326-6468');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E4','Morris','Pyson','Male',to_date('12/26/1987','MM-DD-YYYY'),'81 Oriole Center','Mohammed','Sussans','255-462-6865');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E5','Rafaellle','Colenutt','Male',to_date('10/31/1990','MM-DD-YYYY'),'70 Huxley Street','Conn','Welden','154-464-3264');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E6','Bonita','Oloshin','Female',to_date('01/10/1987','MM-DD-YYYY'),'07 Lakewood Terrace','Rafaelia','McCarlich','649-357-1624');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E7','Leoine','Beany','Female',to_date('03/21/1977','MM-DD-YYYY'),'55212 Bayside Court','Dasi','Dearan','198-265-3349');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E8','Domenic','Feeley','Male',to_date('01/14/1983','MM-DD-YYYY'),'18 Tony Hill','Farley','Budcock','795-649-1219');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E9','Sandye','Blackey','Female',to_date('07/08/1956','MM-DD-YYYY'),'19 Brickson Park Circle','Sileas','Sarton','283-579-6144');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E10','Coriss','Ebenezer','Female',to_date('06/19/1965','MM-DD-YYYY'),'2610 Vernon Way','Chrissie','Romanin','724-884-5557');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E11','Meta','Faithfull','Female',to_date('01/03/1960','MM-DD-YYYY'),'850 Wayridge Drive','Cherise','Phelip','394-424-4581');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E12','Valencia','Bridgstock','Female',to_date('02/28/1983','MM-DD-YYYY'),'4029 Blaine Street','Marlee','Thurske','674-189-7874');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E13','Brigid','Helin','Female',to_date('03/11/1988','MM-DD-YYYY'),'0357 Moulton Terrace','Dorita','Willwood','270-114-8849');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E14','Corrinne','Wainer','Female',to_date('10/21/1994','MM-DD-YYYY'),'50778 Vernon Junction','Elbertina','Stopher','714-160-8670');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E15','Alaine','Schulkins','Female',to_date('07/02/1957','MM-DD-YYYY'),'35 Dahle Plaza','Lizette','Zanitti','291-883-7920');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E16','Bidget','Luter','Female',to_date('01/26/1992','MM-DD-YYYY'),'949 Buena Vista Avenue','Denyse','Guynemer','509-366-0264');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E17','Kala','Mourbey','Female',to_date('05/08/1958','MM-DD-YYYY'),'58305 Harbort Circle','Clareta','Haggith','873-978-0266');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E18','Allx','Jedrzejewski','Female',to_date('06/30/1982','MM-DD-YYYY'),'25568 Pearson Avenue','Amalia','Whenham','633-567-6177');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E19','Yance','Riccardini','Male',to_date('05/21/1983','MM-DD-YYYY'),'0 Golf View Way','Kerk','Davidovic','144-893-2443');


INSERT INTO Employee(EmployeeID,EmployeeFNAME ,EmployeeLNAME ,  GENDER ,  BIRTHDATE , Address , ContactFName ,ContactLName , PhoneNumber  )


VALUES('E20','Lucretia','Chasles','Female',to_date('03/22/1986','MM-DD-YYYY'),'77 Everett Alley','Dori','Bonnefin','732-503-8717');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H1','Flashspan');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H2','Skinix');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H3','Tagcat');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H4','Tagopia');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H5','Riffwire');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H6','Skyba');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H7','Riffpedia');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H8','Demimbu');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H9','Vitz');


INSERT INTO Hospital(HospitalID, HospitalName)


VALUES('H10','Voolith');


INSERT INTO Insurance(InsuranceID, InsCoverage, InsPrice, InsFullName)


VALUES('I1','ante ipsum primis in faucibus',24,'Yozio');


INSERT INTO Insurance(InsuranceID, InsCoverage, InsPrice, InsFullName)


VALUES('I2','nam congue risus semper porta volutpat quam pede',41,'Tagpad');


INSERT INTO Insurance(InsuranceID, InsCoverage, InsPrice, InsFullName)


VALUES('I3','orci luctus et ultrices posuere cubilia',68,'Zoomzone');


INSERT INTO Insurance(InsuranceID, InsCoverage, InsPrice, InsFullName)


VALUES('I4','ipsum integer a nibh in quis justo',69,'Quire');


INSERT INTO Insurance(InsuranceID, InsCoverage, InsPrice, InsFullName)


VALUES('I5','in magna bibendum imperdiet nullam orci pede',84,'Skidoo');


INSERT INTO Insurance(InsuranceID, InsCoverage, InsPrice, InsFullName)


VALUES('I6','diam neque vestibulum eget vulputate ut ultrices vel',41,'Blognation');


INSERT INTO Insurance(InsuranceID, InsCoverage, InsPrice, InsFullName)


VALUES('I7','curae duis faucibus accumsan odio',20,'Aibox');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M1','Antibiotic','Acetaminophen, Aspirin',to_date('12/03/2012','MM-DD-YYYY'),to_date('04/16/2029','MM-DD-YYYY'),36,'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M2','Back Pain Relief','Phenazopyridine Hydrochloride',to_date('06/23/2011','MM-DD-YYYY'),to_date('06/29/2024','MM-DD-YYYY'),35,'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M3','DG Health migraine relief','Acetaminophen, Aspirin, Caffeine',to_date('07/05/2016','MM-DD-YYYY'),to_date('05/23/2025','MM-DD-YYYY'),62,'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M4','Morphine Sulfate','MORPHINE SULFATE',to_date('12/11/2013','MM-DD-YYYY'),to_date('08/26/2029','MM-DD-YYYY'),46,'adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M5','Black Birch','Black Birch',to_date('09/04/2012','MM-DD-YYYY'),to_date('08/14/2027','MM-DD-YYYY'),89,'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M6','Antibiotic','NEOMYCIN SULFATE',to_date('09/24/2019','MM-DD-YYYY'),to_date('08/30/2025','MM-DD-YYYY'),23,'rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M7','Amlodipine Besylate and Benazepril Hydrochloride','Amlodipine Besylate and Benazepril Hydrochloride',to_date('07/10/2014','MM-DD-YYYY'),to_date('06/28/2031','MM-DD-YYYY'),68,'massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M8','Apis Belladonna','Apis Belladonna',to_date('07/22/2015','MM-DD-YYYY'),to_date('02/10/2032','MM-DD-YYYY'),16,'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M9','ANTI-AGING HAND SANITIZER','ETHYL ALCOHOL',to_date('07/02/2012','MM-DD-YYYY'),to_date('08/06/2030','MM-DD-YYYY'),41,'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M10','ANTI-AGING CONCEALER FACE EYES SUNSCREEN SPF 20 Shade 40','OCTINOXATE, OCTISALATE, OXYBENZONE',to_date('05/24/2016','MM-DD-YYYY'),to_date('03/05/2023','MM-DD-YYYY'),18,'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M11','diphenhydramine hydrochloride','diphenhydramine hydrochloride',to_date('11/20/2017','MM-DD-YYYY'),to_date('07/14/2032','MM-DD-YYYY'),77,'nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M12','Lisinopril','Lisinopril',to_date('11/28/2015','MM-DD-YYYY'),to_date('06/12/2030','MM-DD-YYYY'),71,'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M13','FungiClear Natural','EUCALYPTUS GLOBULUS LEAF, MELALEUCA ALTERNIFOLIA LEAF',to_date('12/26/2012','MM-DD-YYYY'),to_date('11/10/2022','MM-DD-YYYY'),21,'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M14','Methocarbamol','Methocarbamol',to_date('02/04/2015','MM-DD-YYYY'),to_date('11/16/2025','MM-DD-YYYY'),33,'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M15','Stool Softener with Laxative','Docusate sodium and Sennosides',to_date('06/19/2012','MM-DD-YYYY'),to_date('08/05/2026','MM-DD-YYYY'),82,'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M16','Metoprolol Tartrate','metoprolol tartrate',to_date('09/11/2012','MM-DD-YYYY'),to_date('05/20/2028','MM-DD-YYYY'),67,'velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M17','Metronidazole','Metronidazole',to_date('07/26/2019','MM-DD-YYYY'),to_date('06/22/2029','MM-DD-YYYY'),97,'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M18','ZENPEP','pancrelipase',to_date('07/12/2011','MM-DD-YYYY'),to_date('02/07/2023','MM-DD-YYYY'),87,'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M19','Face Moisturiser','Avobenzone and Octinoxate',to_date('02/22/2020','MM-DD-YYYY'),to_date('06/29/2032','MM-DD-YYYY'),93,'varius ut blandit non interdum in ante vestibulum ante ipsum primis');


INSERT INTO Medicine(MedicineID, ManufactureName, MedicineName, DateOfManufacture, DateOfExpiration, Price, Description)


VALUES('M20','LBEL EFFET PARFAIT filling effect foundation SPF 10 - CLAIRE 3','Octinoxate',to_date('10/23/2010','MM-DD-YYYY'),to_date('12/08/2026','MM-DD-YYYY'),55,'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat');


INSERT INTO Nurse(NurseID, DepartmentID)


VALUES('N1','D5');


INSERT INTO Nurse(NurseID, DepartmentID)


VALUES('N2','D4');


INSERT INTO Nurse(NurseID, DepartmentID)


VALUES('N3','D1');


INSERT INTO Nurse(NurseID, DepartmentID)


VALUES('N4','D4');


INSERT INTO Nurse(NurseID, DepartmentID)


VALUES('N5','D2');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P1','Bellanca','Tiron','jcoronas0@mit.edu','F',to_date('01/31/1991','MM-DD-YYYY'),'776 6th Plaza','297-81-3977','Jena','Coronas','886-212-9612');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P2','Nil','Van Giffen','clavies1@aboutads.info','M',to_date('03/18/1979','MM-DD-YYYY'),'7220 Esch Park','374-56-7973','Cleveland','Lavies','184-699-3058');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P3','Kort','Duxfield','ltwiddy2@ed.gov','M',to_date('11/11/1958','MM-DD-YYYY'),'846 North Circle','485-58-7072','Levy','Twiddy','965-106-1323');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P4','Ina','Androlli','dbirchwood3@gravatar.com','F',to_date('07/06/1976','MM-DD-YYYY'),'03405 7th Road','865-30-4455','Doroteya','Birchwood','279-378-0556');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P5','Ibbie','Benech','dbartholomaus4@blogs.com','F',to_date('10/27/1990','MM-DD-YYYY'),'0 Lien Plaza','661-80-8703','Dulcia','Bartholomaus','435-922-8731');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P6','Carlita','Crowch','eamis5@hatena.ne.jp','F',to_date('07/13/1980','MM-DD-YYYY'),'140 8th Circle','647-27-7300','Eileen','Amis','408-565-1062');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)
VALUES('P7','Sylvester','Elijahu','acalan6@nytimes.com','M',to_date('07/20/1990','MM-DD-YYYY'),'37 Dovetail Pass','159-01-8484','Averill','Calan','914-721-9341');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P8','Haleigh','Comiam','rform7@webeden.co.uk','F',to_date('02/17/1958','MM-DD-YYYY'),'564 Lighthouse Bay Parkway','292-62-1198','Reine','Form','477-298-1109');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P9','Denni','Anan','jschruyers8@nyu.edu','F',to_date('07/06/1987','MM-DD-YYYY'),'21409 Pierstorff Junction','713-76-3074','Joya','Schruyers','894-225-6022');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P10','Christoph','Gilbart','cgrinnikov9@marriott.com','M',to_date('11/09/1983','MM-DD-YYYY'),'87 Chinook Hill','119-83-2192','Clair','Grinnikov','439-356-7796');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P11','Raphael','Cussins','bpercya@canalblog.com','M',to_date('09/15/1993','MM-DD-YYYY'),'74158 Heath Drive','232-38-1797','Basilio','Percy','567-940-8486');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P12','Winfield','Ilyunin','tpalleyb@xrea.com','M',to_date('12/02/1989','MM-DD-YYYY'),'30 Crest Line Way','785-03-0377','Towny','Palley','709-361-3777');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P13','Cilka','Myatt','gkroutc@angelfire.com','F',to_date('02/28/1964','MM-DD-YYYY'),'313 Atwood Street','605-33-3360','Guillema','Krout','767-408-4553');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P14','Quill','Rozec','hfrobisherd@pcworld.com','M',to_date('06/28/1972','MM-DD-YYYY'),'10 Rieder Trail','377-38-6684','Hillery','Frobisher','925-559-1554');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P15','Teodorico','Garrick','jjobbinse@baidu.com','M',to_date('11/21/1957','MM-DD-YYYY'),'90666 Cambridge Road','577-04-8108','Jarvis','Jobbins','761-228-9799');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P16','Fletcher','Biddwell','delifff@php.net','M',to_date('12/21/1995','MM-DD-YYYY'),'4398 Menomonie Lane','397-67-8547','Donn','Eliff','475-778-4794');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P17','Huberto','Mattiacci','hlinklaterg@mac.com','M',to_date('12/19/1972','MM-DD-YYYY'),'7086 Bay Center','515-39-5415','Hilary','Linklater','237-350-2886');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P18','Agnesse','Sidwell','mclemsonh@nationalgeographic.com','F',to_date('03/11/1950','MM-DD-YYYY'),'881 Lyons Point','675-65-1889','Myrah','Clemson','647-887-6109');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P19','Kris','Mawdsley','ccroomei@furl.net','F',to_date('02/07/1990','MM-DD-YYYY'),'1930 Butternut Way','801-42-7656','Collen','Croome','732-149-9314');


INSERT INTO Patient(PatientID, PatientFNAME, PatientLNAME, PatientEmail, GENDER, BIRTHDATE, Address, PatientSSN, ContactFName,ContactLName, PhoneNumber)


VALUES('P20','Linnell','Nicholson','gfidginj@intel.com','F',to_date('09/15/2000','MM-DD-YYYY'),'96 Fordem Road','820-37-6724','Gabriellia','Fidgin','324-797-2019');


INSERT INTO Pharmacist(PharmacistID, DepartmentID)


VALUES('Ph1','D1');


INSERT INTO Pharmacist(PharmacistID, DepartmentID)


VALUES('Ph2','D3');


INSERT INTO Pharmacist(PharmacistID, DepartmentID)


VALUES('Ph3','D6');


INSERT INTO Pharmacist(PharmacistID, DepartmentID)


VALUES('Ph4','D7');


INSERT INTO Pharmacist(PharmacistID, DepartmentID)


VALUES('Ph5','D5');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre1','Bellanca','Tiron','76mg');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre2','Nil','Van Giffen','44mg');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre3','Kort','Duxfield','36mg');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre4','Ina','Androlli','65mg');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre5','Ibbie','Benech','66mg');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre6','Carlita','Crowch','56mg');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre7','Sylvester','Elijahu','20mg');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre8','Haleigh','Comiam','86mg');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre9','Denni','Anan','88mg');


INSERT INTO Prescription(PrescriptionID, PatientFNAME, PatientLNAME, Dosage)


VALUES('pre10','Christoph','Gilbart','58mg');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro1','felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro2','diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro3','nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro4','sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro5','in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro6','at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro7','tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro8','felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro9','proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in');


INSERT INTO Procedure(ProcedureID, ProcedureDescription)


VALUES('pro10','sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R1','',3,'Office');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R2','P3,P12',1,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R3','',3,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R4','',4,'Office');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R5','P2',2,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R6','',4,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R7','P16,P8',2,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R8','P4',4,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R9','',2,'Office');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R10','',1,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R11','P15',1,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R12','P7',2,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R13','',2,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R14','',4,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R15','',4,'Office');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R16','',1,'Office');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R17','',1,'Office');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R18','P9',4,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R19','',1,'Patient');


INSERT INTO Room(RoomID, ListOfPatientIDs, FloorNumber, typeOfRoom)


VALUES('R20','P1',1,'Patient');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S1','Mydeo');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S2','Edgepulse');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S3','Abatz');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S4','Abata');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S5','Meejo');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S6','Yadel');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S7','Realpoint');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S8','Babbleset');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S9','Skinix');


INSERT INTO Service(ServiceID, ServiceName)


VALUES('S10','Twiyo');