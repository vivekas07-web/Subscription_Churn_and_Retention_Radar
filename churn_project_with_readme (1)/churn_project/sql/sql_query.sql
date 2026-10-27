CREATE DATABASE churn_project;
USE churn_project;
select database();

show tables;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    signup_date DATE,
    plan_type VARCHAR(20),
    monthly_fee DECIMAL(10,2)
);
INSERT INTO customers (customer_id, customer_name, signup_date, plan_type, monthly_fee) VALUES
(1001, 'Rahul Reddy', '2023-02-21', 'Premium', 499.00),
(1002, 'Diya Singh', '2023-10-13', 'Premium', 499.00),
(1003, 'Riya Selvan', '2026-01-21', 'Basic', 199.00),
(1004, 'Kiran Patel', '2023-03-03', 'Basic', 199.00),
(1005, 'Dev Mishra', '2026-05-17', 'Basic', 199.00),
(1006, 'Deepa Murugan', '2026-08-23', 'Premium', 499.00),
(1007, 'Keerthana Singh', '2025-07-08', 'Standard', 299.00),
(1008, 'Tamilselvi Fernandes', '2023-01-14', 'Premium', 499.00),
(1009, 'Bhavya Murugan', '2025-05-15', 'Basic', 199.00),
(1010, 'Ashwin Rao', '2024-11-20', 'Basic', 199.00),
(1011, 'Karthik Reddy', '2025-01-05', 'Premium', 499.00),
(1012, 'Praveen Das', '2023-03-30', 'Premium', 499.00),
(1013, 'Naveen Reddy', '2025-02-14', 'Basic', 199.00),
(1014, 'Esha Thomas', '2026-07-11', 'Standard', 299.00),
(1015, 'Yamini Menon', '2026-03-28', 'Basic', 199.00),
(1016, 'Akash Patel', '2026-09-16', 'Basic', 199.00),
(1017, 'Esha Kumar', '2024-04-21', 'Premium', 499.00),
(1018, 'Karthik Das', '2025-07-17', 'Standard', 299.00),
(1019, 'Jaya Nair', '2025-01-28', 'Standard', 299.00),
(1020, 'Ramesh Das', '2026-08-20', 'Basic', 199.00),
(1021, 'Rahul Nair', '2025-12-29', 'Premium', 499.00),
(1022, 'Bhavya Verma', '2025-02-16', 'Basic', 199.00),
(1023, 'Pavithra Krishnan', '2026-02-14', 'Basic', 199.00),
(1024, 'Harini Thomas', '2023-04-25', 'Basic', 199.00),
(1025, 'Aarohi Narayanan', '2024-10-08', 'Standard', 299.00),
(1026, 'Akash Rao', '2026-03-07', 'Premium', 499.00),
(1027, 'Harini Rao', '2026-09-04', 'Standard', 299.00),
(1028, 'Yash Prasad', '2026-08-09', 'Standard', 299.00),
(1029, 'Divya Iyer', '2024-05-20', 'Premium', 499.00),
(1030, 'Naveen Das', '2026-04-12', 'Standard', 299.00),
(1031, 'Pranav Gupta', '2025-01-11', 'Basic', 199.00),
(1032, 'Arun Mishra', '2025-10-07', 'Basic', 199.00),
(1033, 'Aditya Fernandes', '2023-08-13', 'Basic', 199.00),
(1034, 'Bhavya Narayanan', '2025-05-14', 'Standard', 299.00),
(1035, 'Karthik Gupta', '2026-05-05', 'Family', 699.00),
(1036, 'Nandhini Das', '2026-02-07', 'Premium', 499.00),
(1037, 'Aarav Subramanian', '2023-08-23', 'Premium', 499.00),
(1038, 'Naveen Rajendran', '2024-06-30', 'Premium', 499.00),
(1039, 'Hari Reddy', '2024-08-24', 'Standard', 299.00),
(1040, 'Lakshmi Sharma', '2024-06-23', 'Family', 699.00),
(1041, 'Sneha Nair', '2025-11-05', 'Family', 699.00),
(1042, 'Yamini Krishnan', '2024-09-03', 'Premium', 499.00),
(1043, 'Mohan Choudhary', '2024-02-12', 'Basic', 199.00),
(1044, 'Pavithra Mishra', '2023-01-02', 'Standard', 299.00),
(1045, 'Meena Sharma', '2023-08-18', 'Family', 699.00),
(1046, 'Yash Thomas', '2024-09-21', 'Basic', 199.00),
(1047, 'Diya Balan', '2026-03-07', 'Family', 699.00),
(1048, 'Ananya Selvan', '2025-09-22', 'Premium', 499.00),
(1049, 'Sneha Bose', '2023-09-15', 'Basic', 199.00),
(1050, 'Madhav Bose', '2023-12-05', 'Basic', 199.00),
(1051, 'Yamini Choudhary', '2025-05-16', 'Family', 699.00),
(1052, 'Pavithra Bose', '2024-02-16', 'Premium', 499.00),
(1053, 'Kavya Subramanian', '2026-08-23', 'Standard', 299.00),
(1054, 'Zoya Mishra', '2025-07-13', 'Basic', 199.00),
(1055, 'Dev Kumar', '2024-11-23', 'Basic', 199.00),
(1056, 'Nila Singh', '2026-04-20', 'Basic', 199.00),
(1057, 'Akash Murugan', '2026-07-16', 'Basic', 199.00),
(1058, 'Akash Balan', '2023-03-06', 'Premium', 499.00),
(1059, 'Akash Mishra', '2024-05-02', 'Basic', 199.00),
(1060, 'Meena Rao', '2026-01-09', 'Basic', 199.00),
(1061, 'Pavithra Balan', '2026-03-15', 'Standard', 299.00),
(1062, 'Diya Narayanan', '2025-08-26', 'Premium', 499.00),
(1063, 'Deepa Reddy', '2023-07-18', 'Premium', 499.00),
(1064, 'Ishita Joshi', '2025-04-21', 'Standard', 299.00),
(1065, 'Saranya Patel', '2026-08-31', 'Family', 699.00),
(1066, 'Anika Patel', '2025-04-04', 'Premium', 499.00),
(1067, 'Anika Singh', '2024-01-28', 'Basic', 199.00),
(1068, 'Krishna Iyer', '2025-05-14', 'Basic', 199.00),
(1069, 'Lakshmi Singh', '2023-06-04', 'Standard', 299.00),
(1070, 'Yamini Fernandes', '2026-02-01', 'Basic', 199.00),
(1071, 'Raj Bose', '2023-01-31', 'Family', 699.00),
(1072, 'Pavithra Rajendran', '2024-04-29', 'Basic', 199.00),
(1073, 'Meena Shah', '2024-03-13', 'Premium', 499.00),
(1074, 'Zoya Patel', '2023-12-04', 'Standard', 299.00),
(1075, 'Pavithra Narayanan', '2025-07-20', 'Basic', 199.00),
(1076, 'Rohit Selvan', '2026-02-12', 'Premium', 499.00),
(1077, 'Meena Iyer', '2024-01-24', 'Basic', 199.00),
(1078, 'Aditya Kapoor', '2026-01-15', 'Basic', 199.00),
(1079, 'Harini Patel', '2023-04-13', 'Standard', 299.00),
(1080, 'Mohan Prasad', '2025-12-23', 'Basic', 199.00),
(1081, 'Mohan Kumar', '2024-01-16', 'Basic', 199.00),
(1082, 'Akash Subramanian', '2024-04-26', 'Standard', 299.00),
(1083, 'Yash Kapoor', '2024-05-19', 'Standard', 299.00),
(1084, 'Aarohi Choudhary', '2023-06-17', 'Standard', 299.00),
(1085, 'Pranav Kapoor', '2025-12-06', 'Basic', 199.00),
(1086, 'Divya Rao', '2024-10-05', 'Basic', 199.00),
(1087, 'Kavya Iyer', '2026-08-14', 'Basic', 199.00),
(1088, 'Harini Prasad', '2023-05-29', 'Basic', 199.00),
(1089, 'Priya Kapoor', '2023-07-24', 'Basic', 199.00),
(1090, 'Deepak Mishra', '2024-06-27', 'Basic', 199.00),
(1091, 'Ishita Balan', '2023-05-21', 'Premium', 499.00),
(1092, 'Jaya Mehta', '2023-11-20', 'Standard', 299.00),
(1093, 'Naveen Murugan', '2024-09-11', 'Standard', 299.00),
(1094, 'Tamilselvi Krishnan', '2025-12-19', 'Basic', 199.00),
(1095, 'Varun Bose', '2024-09-05', 'Family', 699.00),
(1096, 'Anika Balan', '2023-10-03', 'Basic', 199.00),
(1097, 'Yash Reddy', '2026-02-07', 'Basic', 199.00),
(1098, 'Esha Choudhary', '2024-03-07', 'Premium', 499.00),
(1099, 'Deepak Subramanian', '2026-07-22', 'Premium', 499.00),
(1100, 'Mohan Shah', '2024-05-29', 'Family', 699.00),
(1101, 'Vikram Patel', '2023-07-09', 'Standard', 299.00),
(1102, 'Vijay Das', '2023-04-01', 'Basic', 199.00),
(1103, 'Suresh Iyer', '2026-07-28', 'Family', 699.00),
(1104, 'Bhavya Selvan', '2025-06-23', 'Standard', 299.00),
(1105, 'Kiran Bose', '2023-01-20', 'Basic', 199.00),
(1106, 'Yash Murugan', '2023-11-02', 'Standard', 299.00),
(1107, 'Vijay Menon', '2026-04-07', 'Standard', 299.00),
(1108, 'Kiran Iyer', '2023-03-27', 'Basic', 199.00),
(1109, 'Zoya Prasad', '2023-03-23', 'Premium', 499.00),
(1110, 'Diya Subramanian', '2023-07-30', 'Standard', 299.00),
(1111, 'Nila Balan', '2025-04-12', 'Family', 699.00),
(1112, 'Shreya Iyer', '2024-04-29', 'Premium', 499.00),
(1113, 'Tamilselvi Narayanan', '2023-12-29', 'Premium', 499.00),
(1114, 'Aadhya Nair', '2024-11-11', 'Premium', 499.00),
(1115, 'Keerthana Narayanan', '2024-05-23', 'Basic', 199.00),
(1116, 'Swathi Murugan', '2023-08-10', 'Standard', 299.00),
(1117, 'Aarohi Fernandes', '2025-08-21', 'Basic', 199.00),
(1118, 'Varun Prasad', '2025-07-31', 'Basic', 199.00),
(1119, 'Varun Narayanan', '2024-04-11', 'Basic', 199.00),
(1120, 'Ramesh Rao', '2025-03-27', 'Basic', 199.00),
(1121, 'Yamini Kumar', '2024-07-25', 'Standard', 299.00),
(1122, 'Mohan Gupta', '2026-01-03', 'Basic', 199.00),
(1123, 'Aadhya Reddy', '2024-06-18', 'Basic', 199.00),
(1124, 'Divya Patel', '2023-08-11', 'Standard', 299.00),
(1125, 'Ishita Selvan', '2024-10-04', 'Standard', 299.00),
(1126, 'Mohan Reddy', '2025-02-27', 'Premium', 499.00),
(1127, 'Deepa Das', '2023-04-01', 'Premium', 499.00),
(1128, 'Aarav Mishra', '2026-01-07', 'Premium', 499.00),
(1129, 'Shreya Selvan', '2024-02-08', 'Standard', 299.00),
(1130, 'Kumaran Pillai', '2026-06-30', 'Basic', 199.00),
(1131, 'Vikram Reddy', '2024-09-07', 'Standard', 299.00),
(1132, 'Ramesh Joshi', '2024-10-30', 'Standard', 299.00),
(1133, 'Esha Bose', '2023-09-18', 'Basic', 199.00),
(1134, 'Ramesh Gupta', '2023-12-23', 'Standard', 299.00),
(1135, 'Gokul Gupta', '2026-01-27', 'Premium', 499.00),
(1136, 'Gokul Mehta', '2024-03-06', 'Standard', 299.00),
(1137, 'Pranav Choudhary', '2026-09-02', 'Basic', 199.00),
(1138, 'Krishna Verma', '2024-03-13', 'Standard', 299.00),
(1139, 'Swathi Balan', '2023-12-14', 'Premium', 499.00),
(1140, 'Esha Mishra', '2026-09-21', 'Standard', 299.00),
(1141, 'Hari Kumar', '2024-04-26', 'Premium', 499.00),
(1142, 'Dev Narayanan', '2024-02-12', 'Basic', 199.00),
(1143, 'Aarohi Singh', '2025-08-31', 'Standard', 299.00),
(1144, 'Suresh Kumar', '2025-07-21', 'Standard', 299.00),
(1145, 'Rahul Kapoor', '2024-02-03', 'Premium', 499.00),
(1146, 'Karthik Shah', '2025-03-29', 'Basic', 199.00),
(1147, 'Raj Murugan', '2023-01-12', 'Premium', 499.00),
(1148, 'Yamini Rajendran', '2023-08-07', 'Premium', 499.00),
(1149, 'Dev Nair', '2025-11-26', 'Standard', 299.00),
(1150, 'Kumaran Fernandes', '2023-09-06', 'Standard', 299.00),
(1151, 'Tamilselvi Verma', '2026-09-29', 'Standard', 299.00),
(1152, 'Nila Choudhary', '2024-10-11', 'Family', 699.00),
(1153, 'Zoya Verma', '2026-06-08', 'Premium', 499.00),
(1154, 'Kiran Thomas', '2026-01-27', 'Standard', 299.00),
(1155, 'Yamini Shah', '2025-07-10', 'Basic', 199.00),
(1156, 'Diya Thomas', '2026-07-29', 'Basic', 199.00),
(1157, 'Suresh Mishra', '2025-09-19', 'Standard', 299.00),
(1158, 'Dinesh Verma', '2023-06-08', 'Premium', 499.00),
(1159, 'Diya Das', '2024-11-18', 'Basic', 199.00),
(1160, 'Naveen Kumar', '2023-10-11', 'Basic', 199.00),
(1161, 'Karthik Murugan', '2023-11-09', 'Premium', 499.00),
(1162, 'Akash Joshi', '2025-04-14', 'Basic', 199.00),
(1163, 'Lakshmi Joshi', '2023-05-08', 'Basic', 199.00),
(1164, 'Keerthana Gupta', '2026-04-11', 'Family', 699.00),
(1165, 'Aadhya Fernandes', '2026-03-25', 'Standard', 299.00),
(1166, 'Aarav Menon', '2024-09-03', 'Premium', 499.00),
(1167, 'Vikram Balan', '2025-05-08', 'Standard', 299.00),
(1168, 'Shreya Bose', '2026-05-20', 'Premium', 499.00),
(1169, 'Meena Singh', '2024-07-12', 'Standard', 299.00),
(1170, 'Aadhya Gupta', '2024-11-19', 'Premium', 499.00),
(1171, 'Tamilselvi Gupta', '2023-12-05', 'Premium', 499.00),
(1172, 'Kumaran Iyer', '2026-06-28', 'Standard', 299.00),
(1173, 'Kumaran Gupta', '2026-04-27', 'Standard', 299.00),
(1174, 'Aadhya Kumar', '2026-08-09', 'Standard', 299.00),
(1175, 'Yamini Verma', '2024-01-08', 'Basic', 199.00),
(1176, 'Karthik Pillai', '2024-03-09', 'Standard', 299.00),
(1177, 'Hari Rajendran', '2025-02-15', 'Basic', 199.00),
(1178, 'Vijay Joshi', '2024-05-31', 'Premium', 499.00),
(1179, 'Madhav Sharma', '2026-01-09', 'Basic', 199.00),
(1180, 'Ishita Singh', '2026-08-24', 'Basic', 199.00),
(1181, 'Raj Patel', '2023-03-05', 'Family', 699.00),
(1182, 'Deepa Thomas', '2023-02-11', 'Standard', 299.00),
(1183, 'Diya Iyer', '2025-08-27', 'Premium', 499.00),
(1184, 'Nithya Rao', '2025-08-10', 'Premium', 499.00),
(1185, 'Suresh Menon', '2023-12-10', 'Standard', 299.00),
(1186, 'Shreya Murugan', '2023-08-23', 'Premium', 499.00),
(1187, 'Bhavya Mehta', '2023-08-10', 'Standard', 299.00),
(1188, 'Pavithra Mehta', '2026-03-25', 'Premium', 499.00),
(1189, 'Sanjay Rao', '2023-06-05', 'Standard', 299.00),
(1190, 'Vijay Krishnan', '2024-05-12', 'Basic', 199.00),
(1191, 'Suresh Mehta', '2026-05-14', 'Premium', 499.00),
(1192, 'Swathi Kapoor', '2023-03-26', 'Basic', 199.00),
(1193, 'Kiran Subramanian', '2025-01-28', 'Basic', 199.00),
(1194, 'Raj Pillai', '2023-01-26', 'Premium', 499.00),
(1195, 'Varun Shah', '2023-08-05', 'Standard', 299.00),
(1196, 'Jaya Krishnan', '2025-07-30', 'Premium', 499.00),
(1197, 'Kiran Nair', '2025-12-04', 'Family', 699.00),
(1198, 'Dinesh Choudhary', '2026-01-07', 'Premium', 499.00),
(1199, 'Varun Selvan', '2026-04-28', 'Basic', 199.00),
(1200, 'Vikram Singh', '2023-06-27', 'Basic', 199.00),
(1201, 'Krishna Singh', '2025-08-09', 'Standard', 299.00),
(1202, 'Hari Sharma', '2025-10-09', 'Premium', 499.00),
(1203, 'Charan Shah', '2024-03-10', 'Standard', 299.00),
(1204, 'Divya Pillai', '2024-07-26', 'Premium', 499.00),
(1205, 'Rohit Balan', '2024-07-19', 'Standard', 299.00),
(1206, 'Nandhini Rao', '2023-06-25', 'Basic', 199.00),
(1207, 'Keerthana Shah', '2026-02-11', 'Premium', 499.00),
(1208, 'Rohit Shah', '2026-08-15', 'Premium', 499.00),
(1209, 'Krishna Narayanan', '2023-02-05', 'Basic', 199.00),
(1210, 'Dev Gupta', '2024-05-13', 'Basic', 199.00),
(1211, 'Pranav Menon', '2025-08-27', 'Standard', 299.00),
(1212, 'Hari Menon', '2025-07-18', 'Basic', 199.00),
(1213, 'Divya Singh', '2023-09-05', 'Premium', 499.00),
(1214, 'Harini Reddy', '2026-01-02', 'Family', 699.00),
(1215, 'Rohit Nair', '2024-01-28', 'Basic', 199.00),
(1216, 'Madhav Das', '2026-04-22', 'Family', 699.00),
(1217, 'Nandhini Choudhary', '2024-08-02', 'Family', 699.00),
(1218, 'Vijay Rao', '2024-08-29', 'Basic', 199.00),
(1219, 'Charan Mehta', '2023-01-29', 'Premium', 499.00),
(1220, 'Arun Das', '2023-04-04', 'Family', 699.00),
(1221, 'Nila Mehta', '2023-09-16', 'Standard', 299.00),
(1222, 'Sneha Shah', '2023-07-30', 'Premium', 499.00),
(1223, 'Nithya Mehta', '2025-08-19', 'Standard', 299.00),
(1224, 'Hari Nair', '2023-04-16', 'Basic', 199.00),
(1225, 'Arjun Thomas', '2023-05-14', 'Standard', 299.00),
(1226, 'Akash Kapoor', '2026-07-13', 'Premium', 499.00),
(1227, 'Ashwin Iyer', '2026-02-26', 'Family', 699.00),
(1228, 'Ananya Singh', '2023-08-31', 'Standard', 299.00),
(1229, 'Keerthana Choudhary', '2026-05-05', 'Premium', 499.00),
(1230, 'Dev Rajendran', '2025-12-06', 'Standard', 299.00),
(1231, 'Kumaran Verma', '2024-08-31', 'Premium', 499.00),
(1232, 'Kiran Mehta', '2026-03-10', 'Standard', 299.00),
(1233, 'Priya Selvan', '2023-07-23', 'Family', 699.00),
(1234, 'Deepak Krishnan', '2024-03-08', 'Basic', 199.00),
(1235, 'Ananya Nair', '2024-05-06', 'Basic', 199.00),
(1236, 'Akash Nair', '2023-01-06', 'Standard', 299.00),
(1237, 'Rohit Choudhary', '2025-08-20', 'Basic', 199.00),
(1238, 'Dev Mehta', '2024-08-02', 'Premium', 499.00),
(1239, 'Lakshmi Kumar', '2024-04-23', 'Family', 699.00),
(1240, 'Swathi Narayanan', '2026-07-04', 'Standard', 299.00),
(1241, 'Tamilselvi Prasad', '2024-02-10', 'Standard', 299.00),
(1242, 'Naveen Singh', '2026-08-19', 'Basic', 199.00),
(1243, 'Dinesh Thomas', '2023-10-19', 'Basic', 199.00),
(1244, 'Gokul Choudhary', '2026-03-11', 'Family', 699.00),
(1245, 'Krishna Reddy', '2025-08-17', 'Premium', 499.00),
(1246, 'Rohit Gupta', '2024-07-11', 'Standard', 299.00),
(1247, 'Meena Verma', '2023-06-14', 'Standard', 299.00),
(1248, 'Yash Joshi', '2024-10-22', 'Standard', 299.00),
(1249, 'Dev Subramanian', '2026-03-24', 'Standard', 299.00),
(1250, 'Aadhya Rajendran', '2024-07-05', 'Standard', 299.00),
(1251, 'Sneha Rajendran', '2023-12-25', 'Standard', 299.00),
(1252, 'Raj Verma', '2024-07-23', 'Basic', 199.00),
(1253, 'Pranav Joshi', '2026-07-24', 'Premium', 499.00),
(1254, 'Ananya Shah', '2024-12-13', 'Standard', 299.00),
(1255, 'Harini Subramanian', '2023-08-03', 'Premium', 499.00),
(1256, 'Hari Joshi', '2025-10-11', 'Basic', 199.00),
(1257, 'Kavya Thomas', '2026-01-31', 'Basic', 199.00),
(1258, 'Ananya Pillai', '2024-05-31', 'Basic', 199.00),
(1259, 'Suresh Gupta', '2025-11-19', 'Premium', 499.00),
(1260, 'Yamini Bose', '2025-08-04', 'Standard', 299.00),
(1261, 'Deepa Mishra', '2025-01-10', 'Standard', 299.00),
(1262, 'Meena Krishnan', '2025-06-24', 'Premium', 499.00),
(1263, 'Deepak Das', '2026-01-29', 'Basic', 199.00),
(1264, 'Esha Verma', '2025-09-19', 'Basic', 199.00),
(1265, 'Rahul Choudhary', '2024-05-05', 'Premium', 499.00),
(1266, 'Gokul Bose', '2023-01-29', 'Standard', 299.00),
(1267, 'Vijay Prasad', '2023-08-21', 'Standard', 299.00),
(1268, 'Arjun Krishnan', '2023-11-12', 'Standard', 299.00),
(1269, 'Sanjay Mehta', '2025-11-08', 'Premium', 499.00),
(1270, 'Keerthana Thomas', '2025-09-15', 'Family', 699.00),
(1271, 'Diya Verma', '2026-02-02', 'Basic', 199.00),
(1272, 'Deepa Prasad', '2026-05-12', 'Standard', 299.00),
(1273, 'Yash Iyer', '2023-05-23', 'Basic', 199.00),
(1274, 'Swathi Fernandes', '2025-04-29', 'Basic', 199.00),
(1275, 'Swathi Mishra', '2024-07-01', 'Premium', 499.00),
(1276, 'Esha Selvan', '2024-09-03', 'Premium', 499.00),
(1277, 'Pranav Subramanian', '2025-09-29', 'Premium', 499.00),
(1278, 'Krishna Bose', '2025-09-18', 'Basic', 199.00),
(1279, 'Nila Rajendran', '2026-01-17', 'Standard', 299.00),
(1280, 'Pavithra Pillai', '2024-01-22', 'Family', 699.00),
(1281, 'Diya Kapoor', '2025-02-23', 'Basic', 199.00),
(1282, 'Suresh Joshi', '2023-03-31', 'Basic', 199.00),
(1283, 'Madhav Murugan', '2025-02-19', 'Standard', 299.00),
(1284, 'Ramesh Narayanan', '2026-08-28', 'Family', 699.00),
(1285, 'Meena Patel', '2023-09-16', 'Standard', 299.00),
(1286, 'Pranav Pillai', '2023-07-25', 'Premium', 499.00),
(1287, 'Nandhini Prasad', '2025-07-24', 'Basic', 199.00),
(1288, 'Ashwin Joshi', '2026-09-02', 'Family', 699.00),
(1289, 'Akash Shah', '2024-06-26', 'Basic', 199.00),
(1290, 'Raj Kumar', '2024-11-03', 'Premium', 499.00),
(1291, 'Vikram Bose', '2025-02-17', 'Family', 699.00),
(1292, 'Rahul Murugan', '2025-09-26', 'Premium', 499.00),
(1293, 'Akash Singh', '2026-07-16', 'Premium', 499.00),
(1294, 'Esha Singh', '2023-07-05', 'Standard', 299.00),
(1295, 'Anika Rajendran', '2026-07-21', 'Premium', 499.00),
(1296, 'Anika Verma', '2023-12-07', 'Premium', 499.00),
(1297, 'Zoya Sharma', '2023-04-05', 'Basic', 199.00),
(1298, 'Aditya Mehta', '2025-01-04', 'Standard', 299.00),
(1299, 'Ashwin Singh', '2025-12-23', 'Standard', 299.00),
(1300, 'Riya Narayanan', '2024-01-04', 'Basic', 199.00),
(1301, 'Ananya Choudhary', '2025-02-22', 'Standard', 299.00),
(1302, 'Diya Shah', '2026-04-09', 'Basic', 199.00),
(1303, 'Lakshmi Krishnan', '2024-06-04', 'Standard', 299.00),
(1304, 'Ramesh Sharma', '2025-08-10', 'Family', 699.00),
(1305, 'Riya Bose', '2023-11-20', 'Basic', 199.00),
(1306, 'Ishita Kapoor', '2024-09-04', 'Standard', 299.00),
(1307, 'Kiran Murugan', '2024-05-27', 'Standard', 299.00),
(1308, 'Gokul Rao', '2025-02-26', 'Premium', 499.00),
(1309, 'Karthik Kapoor', '2025-01-05', 'Standard', 299.00),
(1310, 'Rohit Mehta', '2023-02-14', 'Family', 699.00),
(1311, 'Dinesh Sharma', '2026-03-05', 'Premium', 499.00),
(1312, 'Suresh Selvan', '2023-04-11', 'Family', 699.00),
(1313, 'Shreya Shah', '2024-08-09', 'Premium', 499.00),
(1314, 'Dev Choudhary', '2024-12-22', 'Basic', 199.00),
(1315, 'Deepa Choudhary', '2024-05-28', 'Premium', 499.00),
(1316, 'Saranya Rajendran', '2026-09-12', 'Premium', 499.00),
(1317, 'Arun Krishnan', '2023-07-18', 'Family', 699.00),
(1318, 'Gokul Narayanan', '2025-06-21', 'Basic', 199.00),
(1319, 'Jaya Selvan', '2023-09-27', 'Basic', 199.00),
(1320, 'Esha Pillai', '2025-04-30', 'Basic', 199.00),
(1321, 'Arun Narayanan', '2026-01-09', 'Premium', 499.00),
(1322, 'Jaya Mishra', '2025-10-24', 'Family', 699.00),
(1323, 'Vijay Nair', '2024-06-10', 'Family', 699.00),
(1324, 'Madhav Narayanan', '2024-08-27', 'Premium', 499.00),
(1325, 'Hari Narayanan', '2023-08-24', 'Standard', 299.00),
(1326, 'Akash Iyer', '2024-04-07', 'Premium', 499.00),
(1327, 'Saranya Subramanian', '2025-03-24', 'Family', 699.00),
(1328, 'Tamilselvi Bose', '2025-01-19', 'Basic', 199.00),
(1329, 'Kavya Sharma', '2024-06-25', 'Standard', 299.00),
(1330, 'Lakshmi Menon', '2024-06-20', 'Standard', 299.00),
(1331, 'Varun Krishnan', '2025-01-30', 'Basic', 199.00),
(1332, 'Dev Shah', '2023-02-21', 'Standard', 299.00),
(1333, 'Nila Pillai', '2026-06-03', 'Basic', 199.00),
(1334, 'Akash Krishnan', '2025-08-08', 'Family', 699.00),
(1335, 'Gokul Krishnan', '2025-04-16', 'Basic', 199.00),
(1336, 'Aarohi Patel', '2024-09-15', 'Family', 699.00),
(1337, 'Arjun Reddy', '2024-04-25', 'Premium', 499.00),
(1338, 'Arun Gupta', '2025-07-18', 'Standard', 299.00),
(1339, 'Naveen Joshi', '2026-04-17', 'Premium', 499.00),
(1340, 'Ashwin Balan', '2025-04-29', 'Premium', 499.00),
(1341, 'Vijay Shah', '2026-06-14', 'Standard', 299.00),
(1342, 'Dinesh Patel', '2025-01-28', 'Basic', 199.00),
(1343, 'Vikram Menon', '2023-07-23', 'Family', 699.00),
(1344, 'Jaya Bose', '2026-08-13', 'Standard', 299.00),
(1345, 'Kavya Das', '2024-01-24', 'Family', 699.00),
(1346, 'Vikram Thomas', '2025-07-20', 'Basic', 199.00),
(1347, 'Aadhya Patel', '2024-11-14', 'Basic', 199.00),
(1348, 'Akash Thomas', '2026-02-09', 'Basic', 199.00),
(1349, 'Deepak Thomas', '2024-04-22', 'Basic', 199.00),
(1350, 'Ashwin Narayanan', '2026-05-05', 'Basic', 199.00),
(1351, 'Vikram Iyer', '2023-09-24', 'Standard', 299.00),
(1352, 'Tamilselvi Nair', '2023-08-14', 'Premium', 499.00),
(1353, 'Aadhya Iyer', '2023-01-31', 'Standard', 299.00),
(1354, 'Swathi Singh', '2026-04-20', 'Basic', 199.00),
(1355, 'Charan Das', '2023-04-18', 'Basic', 199.00),
(1356, 'Keerthana Mishra', '2023-08-21', 'Premium', 499.00),
(1357, 'Madhav Verma', '2025-01-11', 'Standard', 299.00),
(1358, 'Mohan Singh', '2026-06-13', 'Basic', 199.00),
(1359, 'Swathi Prasad', '2026-09-11', 'Standard', 299.00),
(1360, 'Madhav Fernandes', '2025-04-02', 'Standard', 299.00),
(1361, 'Anika Shah', '2025-06-27', 'Basic', 199.00),
(1362, 'Praveen Iyer', '2023-05-15', 'Basic', 199.00),
(1363, 'Priya Krishnan', '2026-04-13', 'Standard', 299.00),
(1364, 'Harini Gupta', '2026-05-08', 'Standard', 299.00),
(1365, 'Lakshmi Mishra', '2026-05-24', 'Standard', 299.00),
(1366, 'Arjun Fernandes', '2026-09-02', 'Premium', 499.00),
(1367, 'Suresh Bose', '2024-03-16', 'Standard', 299.00),
(1368, 'Yash Singh', '2025-04-27', 'Basic', 199.00),
(1369, 'Lakshmi Gupta', '2025-05-01', 'Premium', 499.00),
(1370, 'Harini Joshi', '2024-10-02', 'Premium', 499.00),
(1371, 'Jaya Iyer', '2025-08-29', 'Basic', 199.00),
(1372, 'Vijay Kumar', '2023-07-10', 'Standard', 299.00),
(1373, 'Jaya Narayanan', '2023-09-24', 'Standard', 299.00),
(1374, 'Pranav Bose', '2026-02-24', 'Basic', 199.00),
(1375, 'Arjun Joshi', '2024-12-25', 'Premium', 499.00),
(1376, 'Sneha Joshi', '2023-04-16', 'Family', 699.00),
(1377, 'Praveen Mehta', '2024-12-21', 'Basic', 199.00),
(1378, 'Mohan Rao', '2023-11-13', 'Premium', 499.00),
(1379, 'Dev Fernandes', '2023-08-10', 'Standard', 299.00),
(1380, 'Nila Menon', '2023-08-24', 'Premium', 499.00),
(1381, 'Nithya Singh', '2025-05-28', 'Premium', 499.00),
(1382, 'Suresh Thomas', '2026-06-27', 'Standard', 299.00),
(1383, 'Aadhya Choudhary', '2026-09-09', 'Premium', 499.00),
(1384, 'Rohit Rajendran', '2024-09-24', 'Family', 699.00),
(1385, 'Ishita Sharma', '2024-01-07', 'Premium', 499.00),
(1386, 'Nithya Subramanian', '2025-03-31', 'Basic', 199.00),
(1387, 'Shreya Krishnan', '2023-03-04', 'Basic', 199.00),
(1388, 'Karthik Joshi', '2025-07-18', 'Basic', 199.00),
(1389, 'Saranya Pillai', '2026-03-08', 'Standard', 299.00),
(1390, 'Yash Patel', '2023-11-15', 'Basic', 199.00),
(1391, 'Priya Patel', '2023-06-17', 'Basic', 199.00),
(1392, 'Meena Choudhary', '2025-06-24', 'Standard', 299.00),
(1393, 'Deepak Rajendran', '2025-11-15', 'Basic', 199.00),
(1394, 'Kiran Reddy', '2024-08-03', 'Premium', 499.00),
(1395, 'Pranav Shah', '2025-12-15', 'Premium', 499.00),
(1396, 'Kavya Choudhary', '2023-04-23', 'Basic', 199.00),
(1397, 'Sneha Das', '2024-08-15', 'Basic', 199.00),
(1398, 'Aarav Shah', '2025-05-31', 'Basic', 199.00),
(1399, 'Karthik Bose', '2024-04-16', 'Standard', 299.00),
(1400, 'Vijay Subramanian', '2024-12-26', 'Basic', 199.00),
(1401, 'Yamini Selvan', '2023-03-28', 'Standard', 299.00),
(1402, 'Lakshmi Prasad', '2023-06-09', 'Premium', 499.00),
(1403, 'Nithya Joshi', '2026-03-20', 'Standard', 299.00),
(1404, 'Rahul Joshi', '2024-08-15', 'Basic', 199.00),
(1405, 'Aadhya Pillai', '2023-12-18', 'Premium', 499.00),
(1406, 'Priya Verma', '2025-01-11', 'Basic', 199.00),
(1407, 'Diya Joshi', '2026-04-21', 'Standard', 299.00),
(1408, 'Ananya Gupta', '2024-09-27', 'Premium', 499.00),
(1409, 'Dev Pillai', '2023-12-11', 'Basic', 199.00),
(1410, 'Nandhini Mishra', '2024-02-02', 'Family', 699.00),
(1411, 'Ishita Menon', '2026-08-14', 'Premium', 499.00),
(1412, 'Diya Reddy', '2023-10-27', 'Basic', 199.00),
(1413, 'Charan Choudhary', '2023-11-10', 'Premium', 499.00),
(1414, 'Charan Rajendran', '2026-07-10', 'Standard', 299.00),
(1415, 'Sneha Kapoor', '2026-04-01', 'Standard', 299.00),
(1416, 'Nithya Krishnan', '2026-07-25', 'Family', 699.00),
(1417, 'Harini Fernandes', '2026-07-08', 'Basic', 199.00),
(1418, 'Krishna Kumar', '2025-08-18', 'Standard', 299.00),
(1419, 'Dinesh Kapoor', '2023-04-26', 'Standard', 299.00),
(1420, 'Akash Mehta', '2025-08-03', 'Standard', 299.00),
(1421, 'Aditya Menon', '2024-08-10', 'Basic', 199.00),
(1422, 'Praveen Mishra', '2025-02-26', 'Standard', 299.00),
(1423, 'Nila Narayanan', '2023-03-26', 'Standard', 299.00),
(1424, 'Tamilselvi Kapoor', '2026-08-27', 'Basic', 199.00),
(1425, 'Praveen Shah', '2025-10-23', 'Basic', 199.00),
(1426, 'Aditya Verma', '2023-07-31', 'Premium', 499.00),
(1427, 'Vijay Pillai', '2023-06-22', 'Standard', 299.00),
(1428, 'Charan Patel', '2024-05-22', 'Premium', 499.00),
(1429, 'Krishna Mishra', '2025-12-06', 'Standard', 299.00),
(1430, 'Jaya Menon', '2024-08-02', 'Standard', 299.00),
(1431, 'Suresh Pillai', '2026-05-09', 'Basic', 199.00),
(1432, 'Rahul Krishnan', '2024-11-16', 'Basic', 199.00),
(1433, 'Anika Bose', '2025-03-02', 'Basic', 199.00),
(1434, 'Saranya Fernandes', '2026-09-06', 'Family', 699.00),
(1435, 'Praveen Fernandes', '2023-11-04', 'Basic', 199.00),
(1436, 'Ashwin Prasad', '2024-12-17', 'Basic', 199.00),
(1437, 'Arun Choudhary', '2023-06-23', 'Basic', 199.00),
(1438, 'Karthik Krishnan', '2024-11-03', 'Premium', 499.00),
(1439, 'Ramesh Murugan', '2025-12-14', 'Basic', 199.00),
(1440, 'Mohan Menon', '2023-02-07', 'Standard', 299.00),
(1441, 'Charan Rao', '2024-11-30', 'Family', 699.00),
(1442, 'Dev Iyer', '2023-11-14', 'Basic', 199.00),
(1443, 'Vikram Narayanan', '2023-07-27', 'Standard', 299.00),
(1444, 'Naveen Thomas', '2025-12-14', 'Basic', 199.00),
(1445, 'Hari Balan', '2026-06-19', 'Basic', 199.00),
(1446, 'Karthik Iyer', '2023-11-29', 'Basic', 199.00),
(1447, 'Priya Narayanan', '2023-12-06', 'Premium', 499.00),
(1448, 'Aarohi Joshi', '2025-01-16', 'Premium', 499.00),
(1449, 'Priya Mehta', '2025-07-08', 'Basic', 199.00),
(1450, 'Diya Mehta', '2025-08-18', 'Family', 699.00),
(1451, 'Deepa Menon', '2026-03-14', 'Family', 699.00),
(1452, 'Lakshmi Rajendran', '2024-07-31', 'Premium', 499.00),
(1453, 'Mohan Mishra', '2025-05-07', 'Family', 699.00),
(1454, 'Varun Rao', '2026-05-23', 'Basic', 199.00),
(1455, 'Raj Shah', '2025-01-30', 'Standard', 299.00),
(1456, 'Anika Murugan', '2025-11-22', 'Premium', 499.00),
(1457, 'Ashwin Thomas', '2025-06-14', 'Basic', 199.00),
(1458, 'Kumaran Singh', '2025-07-12', 'Premium', 499.00),
(1459, 'Pavithra Sharma', '2025-04-29', 'Basic', 199.00),
(1460, 'Diya Gupta', '2023-06-17', 'Standard', 299.00),
(1461, 'Pavithra Reddy', '2026-08-24', 'Basic', 199.00),
(1462, 'Aarohi Mehta', '2025-08-25', 'Premium', 499.00),
(1463, 'Arun Rajendran', '2025-08-18', 'Standard', 299.00),
(1464, 'Aarav Balan', '2023-06-12', 'Basic', 199.00),
(1465, 'Ashwin Bose', '2026-05-31', 'Standard', 299.00),
(1466, 'Arjun Rajendran', '2024-08-13', 'Basic', 199.00),
(1467, 'Arjun Patel', '2024-05-03', 'Standard', 299.00),
(1468, 'Swathi Choudhary', '2025-07-25', 'Basic', 199.00),
(1469, 'Vijay Balan', '2025-10-20', 'Standard', 299.00),
(1470, 'Aadhya Krishnan', '2025-11-21', 'Standard', 299.00),
(1471, 'Sanjay Iyer', '2024-08-19', 'Standard', 299.00),
(1472, 'Priya Menon', '2024-05-07', 'Standard', 299.00),
(1473, 'Charan Subramanian', '2026-09-30', 'Basic', 199.00),
(1474, 'Jaya Kumar', '2025-12-13', 'Standard', 299.00),
(1475, 'Nila Sharma', '2025-03-10', 'Premium', 499.00),
(1476, 'Aarohi Krishnan', '2025-03-03', 'Family', 699.00),
(1477, 'Divya Selvan', '2023-02-03', 'Standard', 299.00),
(1478, 'Akash Menon', '2024-05-08', 'Premium', 499.00),
(1479, 'Suresh Kapoor', '2024-11-11', 'Basic', 199.00),
(1480, 'Ishita Bose', '2024-11-24', 'Premium', 499.00),
(1481, 'Charan Thomas', '2025-08-09', 'Family', 699.00),
(1482, 'Madhav Krishnan', '2024-01-09', 'Premium', 499.00),
(1483, 'Suresh Verma', '2023-03-17', 'Basic', 199.00),
(1484, 'Deepa Balan', '2023-03-27', 'Basic', 199.00),
(1485, 'Gokul Mishra', '2025-03-26', 'Family', 699.00),
(1486, 'Naveen Shah', '2024-06-02', 'Basic', 199.00),
(1487, 'Raj Rao', '2024-08-08', 'Standard', 299.00),
(1488, 'Suresh Patel', '2026-09-04', 'Basic', 199.00),
(1489, 'Arjun Narayanan', '2025-01-23', 'Standard', 299.00),
(1490, 'Kavya Selvan', '2025-06-19', 'Premium', 499.00),
(1491, 'Jaya Prasad', '2025-11-29', 'Basic', 199.00),
(1492, 'Kiran Kumar', '2025-05-31', 'Standard', 299.00),
(1493, 'Varun Nair', '2026-01-22', 'Basic', 199.00),
(1494, 'Anika Kumar', '2024-11-02', 'Premium', 499.00),
(1495, 'Gokul Verma', '2026-05-19', 'Premium', 499.00),
(1496, 'Krishna Menon', '2025-07-04', 'Basic', 199.00),
(1497, 'Yamini Prasad', '2024-12-23', 'Standard', 299.00),
(1498, 'Kiran Das', '2026-08-02', 'Family', 699.00),
(1499, 'Aditya Kumar', '2026-07-29', 'Standard', 299.00),
(1500, 'Mohan Narayanan', '2023-11-24', 'Family', 699.00);


SELECT COUNT(*) AS total_customers FROM customers;
SELECT * FROM customers;

CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY,
    customer_id INT,
    start_date DATE,
    end_date DATE,
    subscription_status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

INSERT INTO subscriptions
(subscription_id, customer_id, start_date, end_date, subscription_status)
SELECT
    customer_id,
    customer_id,
    signup_date,
    CASE
        WHEN MOD(customer_id, 5) = 0
             AND signup_date <= '2026-04-25'
        THEN DATE_ADD(signup_date, INTERVAL 6 MONTH)
        ELSE NULL
    END,
    CASE
        WHEN MOD(customer_id, 5) = 0
             AND signup_date <= '2026-04-25'
        THEN 'Cancelled'
        ELSE 'Active'
    END
FROM customers;

SELECT COUNT(*) AS total_subscriptions
FROM subscriptions;

select * from subscriptions;
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    payment_date DATE,
    payment_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);


INSERT INTO payments
(payment_id, customer_id, payment_date, payment_amount, payment_status)
SELECT
    customer_id,
    customer_id,
    signup_date,
    monthly_fee,
    CASE
        WHEN MOD(customer_id, 7) = 0
        THEN 'Failed'
        ELSE 'Success'
    END
FROM customers;

SELECT payment_status, COUNT(*) AS total
FROM payments
GROUP BY payment_status;

CREATE TABLE usage_events (
    event_id INT PRIMARY KEY,
    customer_id INT,
    event_date DATE,
    sessions_count INT,
    minutes_used INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
INSERT INTO usage_events
(event_id, customer_id, event_date, sessions_count, minutes_used)
SELECT
    customer_id,
    customer_id,
    signup_date,
    CASE
        WHEN MOD(customer_id, 4) = 0 THEN 1
        ELSE 5
    END,
    CASE
        WHEN MOD(customer_id, 4) = 0 THEN 10
        ELSE 120
    END
FROM customers;

SELECT COUNT(*) AS total_events
FROM usage_events;
SELECT * FROM usage_events LIMIT 10;

CREATE TABLE support_tickets (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    ticket_date DATE,
    issue_type VARCHAR(50),
    ticket_status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
 );
 INSERT INTO support_tickets
(ticket_id, customer_id, ticket_date, issue_type, ticket_status)
SELECT
    customer_id,
    customer_id,
    signup_date,
    CASE
        WHEN MOD(customer_id, 3) = 0 THEN 'Payment Issue'
        WHEN MOD(customer_id, 3) = 1 THEN 'Technical Issue'
        ELSE 'Account Issue'
    END,
    CASE
        WHEN MOD(customer_id, 2) = 0 THEN 'Resolved'
        ELSE 'Open'
    END
FROM customers;

SELECT COUNT(*) AS total_tickets
FROM support_tickets;

SELECT * FROM support_tickets LIMIT 10;

CREATE TABLE churn_flags (
    customer_id INT PRIMARY KEY,
    is_churned TINYINT,
    churn_date DATE,
    churn_reason VARCHAR(100),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
select * from churn_flags;

INSERT INTO churn_flags
(customer_id, is_churned, churn_date, churn_reason)
SELECT
    customer_id,
    CASE
        WHEN subscription_status = 'Cancelled' THEN 1
        ELSE 0
    END,
    end_date,
    CASE
        WHEN subscription_status = 'Cancelled'
            THEN 'Subscription Cancelled'
        ELSE 0
    END
FROM subscriptions;
SELECT is_churned, COUNT(*) AS total_customers
FROM churn_flags
GROUP BY is_churned;
CREATE TABLE churn_symmary AS
SELECT
    COUNT(*) AS total_customers,
    SUM(is_churned) AS churned_customers,
    COUNT(*) - SUM(is_churned) AS retained_customers,
    ROUND(SUM(is_churned) * 100.0 / COUNT(*), 2) AS churn_rate
FROM churn_flags;
CREATE TABLE plan_symmary AS
SELECT
    c.plan_type,
    COUNT(*) AS total_customers,
    SUM(cf.is_churned) AS churned_customers,
    ROUND(SUM(cf.is_churned) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers c
JOIN churn_flags cf
    ON c.customer_id = cf.customer_id
GROUP BY c.plan_type
ORDER BY churn_rate DESC;

CREATE TABLE chured_symmary AS
SELECT
    COUNT(*) AS churned_customers,
    SUM(c.monthly_fee) AS monthly_revenue_at_risk
FROM customers c
JOIN churn_flags cf
    ON c.customer_id = cf.customer_id
WHERE cf.is_churned = 1;

CREATE TABLE payment_symmary AS
 SELECT
     p.payment_status,
     COUNT(*) AS total_customers,
     SUM(cf.is_churned) AS churned_customers,
     ROUND(SUM(cf.is_churned) * 100.0 / COUNT(*), 2) AS churn_rate
 FROM payments p
 JOIN churn_flags cf
     ON p.customer_id = cf.customer_id
 GROUP BY p.payment_status;

CREATE TABLE usage_symmary AS
SELECT
    u.sessions_count,
    u.minutes_used,
    COUNT(*) AS total_customers,
    SUM(cf.is_churned) AS churned_customers,
    ROUND(SUM(cf.is_churned) * 100.0 / COUNT(*), 2) AS churn_rate
FROM usage_events u
JOIN churn_flags cf
    ON u.customer_id = cf.customer_id
WHERE u.minutes_used <= 10
GROUP BY u.sessions_count, u.minutes_used;

CREATE TABLE risk_symmary AS
SELECT risk_level, COUNT(*) AS customer_count
FROM (
    SELECT
        c.customer_id,
        CASE
            WHEN cf.is_churned = 1 THEN 'Already Churned'
            WHEN p.payment_status = 'Failed'
                 AND u.minutes_used <= 10 THEN 'High Risk'
            WHEN p.payment_status = 'Failed'
                 OR u.minutes_used <= 10
                 OR st.ticket_status = 'Open' THEN 'Medium Risk'
            ELSE 'Low Risk'
        END AS risk_level
    FROM customers c
    JOIN churn_flags cf
        ON c.customer_id = cf.customer_id
    JOIN payments p
        ON c.customer_id = p.customer_id
    JOIN usage_events u
        ON c.customer_id = u.customer_id
    LEFT JOIN support_tickets st
        ON c.customer_id = st.customer_id
) AS risk_data
GROUP BY risk_level;


CREATE TABLE monthly_usage_history (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    activity_month DATE,
    sessions_count INT,
    minutes_used INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);



INSERT INTO monthly_usage_history
    (customer_id, activity_month, sessions_count, minutes_used)
SELECT
    c.customer_id,
    DATE_ADD(
        DATE_SUB(
            c.signup_date,
            INTERVAL DAYOFMONTH(c.signup_date) - 1 DAY
        ),
        INTERVAL m.month_no MONTH
    ),
    CASE
        WHEN MOD(c.customer_id + m.month_no, 4) = 0 THEN 1
        ELSE 5
    END,
    CASE
        WHEN MOD(c.customer_id + m.month_no, 4) = 0 THEN 10
        ELSE 120
    END
FROM customers c
CROSS JOIN (
    SELECT 0 AS month_no
    UNION ALL SELECT 1
    UNION ALL SELECT 2
    UNION ALL SELECT 3
    UNION ALL SELECT 4
    UNION ALL SELECT 5
) m
WHERE DATE_ADD(
    DATE_SUB(
        c.signup_date,
        INTERVAL DAYOFMONTH(c.signup_date) - 1 DAY
    ),
    INTERVAL m.month_no MONTH
) <= LAST_DAY(CURDATE());

SELECT COUNT(*) AS total_records;

CREATE TABLE cohort_symmary AS
SELECT
    cohort.cohort_month,
    activity.activity_month,
    PERIOD_DIFF(
        DATE_FORMAT(activity.activity_month, '%Y%m'),
        DATE_FORMAT(cohort.cohort_month, '%Y%m')
    ) AS month_number,
    COUNT(DISTINCT activity.customer_id) AS active_customers,
    cohort.cohort_size,
    ROUND(
        COUNT(DISTINCT activity.customer_id) * 100.0
        / cohort.cohort_size, 2
    ) AS retention_percentage
FROM (
    SELECT
        customer_id,
        DATE_FORMAT(signup_date, '%Y-%m-01') AS cohort_month,
        COUNT(*) OVER (
            PARTITION BY DATE_FORMAT(signup_date, '%Y-%m')
        ) AS cohort_size
    FROM customers
) AS cohort
JOIN monthly_usage_history AS activity
    ON cohort.customer_id = activity.customer_id
WHERE activity.minutes_used > 0
  AND activity.activity_month >= cohort.cohort_month
GROUP BY
    cohort.cohort_month,
    activity.activity_month,
    cohort.cohort_size
ORDER BY
    cohort.cohort_month,
    activity.activity_month;
 CREATE TABLE RFM AS   
 SELECT
    customer_id,
    MAX(payment_date) AS last_payment_date,
    DATEDIFF(CURDATE(), MAX(payment_date)) AS days_since_payment,
    COUNT(payment_id) AS payment_frequency,
    SUM(payment_amount) AS total_spent
FROM payments
GROUP BY customer_id
ORDER BY total_spent DESC;
   
CREATE TABLE leadlag_symmary AS
SELECT
    customer_id,
    activity_month,
    minutes_used,
    LAG(minutes_used) OVER (
        PARTITION BY customer_id
        ORDER BY activity_month
    ) AS previous_month_usage,
    LEAD(minutes_used) OVER (
        PARTITION BY customer_id
        ORDER BY activity_month
    ) AS next_month_usage
FROM monthly_usage_history
ORDER BY customer_id, activity_month;

CREATE TABLE risklevel_symmary AS
SELECT
    c.customer_id,
    c.plan_type,
    c.monthly_fee,
    p.payment_status,
    u.minutes_used,
    st.ticket_status,
    CASE
        WHEN cf.is_churned = 1 THEN 100
        ELSE
            (CASE WHEN p.payment_status = 'Failed'
                  THEN 40 ELSE 0 END)
          + (CASE WHEN u.minutes_used <= 10
                  THEN 30 ELSE 0 END)
          + (CASE WHEN st.ticket_status = 'Open'
                  THEN 20 ELSE 0 END)
          + (CASE WHEN u.sessions_count <= 1
                  THEN 10 ELSE 0 END)
    END AS risk_score,
    CASE
        WHEN cf.is_churned = 1 THEN 'Already Churned'
        WHEN p.payment_status = 'Failed'
             AND u.minutes_used <= 10 THEN 'High Risk'
        WHEN p.payment_status = 'Failed'
             OR u.minutes_used <= 10
             OR st.ticket_status = 'Open' THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_level,
    CASE
        WHEN cf.is_churned = 1
            THEN 'Win-back campaign'
        WHEN p.payment_status = 'Failed'
            THEN 'Resolve payment issue'
        WHEN u.minutes_used <= 10
            THEN 'Send engagement offer'
        WHEN st.ticket_status = 'Open'
            THEN 'Resolve support ticket'
        ELSE 'Continue regular engagement'
    END AS recommendation
FROM customers c
JOIN payments p ON c.customer_id = p.customer_id
JOIN usage_events u ON c.customer_id = u.customer_id
JOIN churn_flags cf ON c.customer_id = cf.customer_id
LEFT JOIN support_tickets st ON c.customer_id = st.customer_id
ORDER BY risk_score DESC;

CREATE TABLE  retined_symmary AS
SELECT
    COUNT(*) AS retined_customers,
    SUM(c.monthly_fee) AS monthly_revenue
FROM customers c
JOIN churn_flags cf
    ON c.customer_id = cf.customer_id
WHERE cf.is_churned = 0;




