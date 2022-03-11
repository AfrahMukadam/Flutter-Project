import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you wanst 3 dot menu
              color: Colors.white,

              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "About Department",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "HOD's Desk",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text(
                    "Vision and Mission",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: Text(
                    "PEO's and PSO's",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],

              onSelected: (value) => {
                if (value == 0)
                  {
                    about(context),
                  }
                else if (value == 1)
                  {
                    hod(context),
                  }
                else if (value == 2)
                  {
                    vision(context),
                  }
                else
                  {
                    peo(context),
                  }
              },
            ),
          ),
          title: Text("Welcome To IT Department"),
          backgroundColor: Colors.blue[700],
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Image.network(
                  'https://images.shiksha.com/mediadata/images/1547198255phpre9PGZ.jpeg',
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      child: Text('LAB1\n\nMicrosoft Virtual Academy Lab',
                          textAlign: TextAlign.center),
                      color: Colors.blue,
                      padding: EdgeInsets.all(20.0),
                      onPressed: () => LAB1(context),
                    ),
                    RaisedButton(
                      child: Text('LAB2\n\nApple IOS Developer Centre',
                          textAlign: TextAlign.center),
                      color: Colors.blue,
                      padding: EdgeInsets.all(20.0),
                      onPressed: () => LAB2(context),
                    ),
                    RaisedButton(
                      child: Text('LAB3\n\nDatabase Lab',
                          textAlign: TextAlign.center),
                      color: Colors.blue,
                      padding: EdgeInsets.all(20.0),
                      onPressed: () => LAB3(context),
                    ),
                    RaisedButton(
                      child: Text('LAB4\n\nNVIDIA Developer Program Lab',
                          textAlign: TextAlign.center),
                      color: Colors.blue,
                      padding: EdgeInsets.all(20.0),
                      onPressed: () => LAB4(context),
                    ),
                    RaisedButton(
                      child: Text("LAB5\n\nAmazon AWS Academy",
                          textAlign: TextAlign.center),
                      color: Colors.blue,
                      padding: EdgeInsets.all(20.0),
                      onPressed: () => LAB5(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  child: Text('Contact Us'),
                  padding: EdgeInsets.fromLTRB(580, 30, 580, 30),
                  color: Colors.blue,
                  onPressed: () => contactUs(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          content: Text('Mail us at hodit@famt.ac.in'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Microsoft Virtual Academy Lab',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold)),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1547198350phpWXQrB0.jpeg',
                height: 350,
              ),
              Text("\nMicrosoft Certification, Training Faculty and Students"),
              Text(
                  "Total 85 Students and 12 Faculty Certified in Microsoft technology Associate(MTA)"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  TextStyle newMethod() => TextStyle();

  void LAB2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Apple IOS Developer Centre',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold)),
          content: Column(
            children: [
              Image.network(
                'https://5.imimg.com/data5/RX/QT/MY-42920061/computer-lab-workstation-500x500.jpg',
                height: 350,
              ),
              Text(
                  "\nApple IOS Developer Framework Provided for IOS App Development"),
              Text(
                  "Outcome: Apple IOS App Development by Students as BE Project"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Database Lab',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold)),
          content: Column(
            children: [
              Image.network(
                'https://institutes.paruluniversity.ac.in/wp-content/uploads/2015/12/X98A6409-Edit.jpg',
                height: 350,
              ),
              Text("\nMicrosoft Certification, Training Faculty and Students"),
              Text(
                  "Total 85 Students and 12 Faculty Certified in Microsoft technology Associate(MTA)"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB4(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To NVIDIA Developer Program Lab',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold)),
          content: Column(
            children: [
              Image.network(
                'https://www.ssf.net/home/showpublishedimage/3045/636391702776270000',
                height: 350,
              ),
              Text(
                  "\nNVIDIA Titan X Pascal GPU, NVIDIA Developer Program Resources"),
              Text("Outcome: Deep Learning Research"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB5(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Amazon AWS Academy Lab',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold)),
          content: Column(
            children: [
              Image.network(
                'https://www.mkscpilani.com/Uploads/fileupload/22College_camputer_lab.jpg',
                height: 350,
              ),
              Text("\nAmazon AWS Training and Certification to Faculty"),
              Text("Outcome: Amazon Certification by Students and Faculty"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void about(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('About Information Technology Department',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          content: SingleChildScrollView(
              child: ListBody(
            children: [
              Image.network(
                'http://famt.ac.in/wp-content/uploads/2021/07/Information-Technology-Block.jpeg-1.webp',
                height: 350,
              ),
              Text(
                  "Recent advancements in the areas of computers, software, networks, internet, communication technology, Big Data, and cloud computing, etc. have made a huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing. Currently, the department’s infrastructure contains three classrooms, six laboratories, a staff room, and a seminar hall. Ole classroom is ICT enabled with a Wi-Fi projection facility. All floors of the IT department have Wi-Fi connectivity."),
              Text(
                  "\nThe computing facility in the department includes 155 computers with the latest configuration, and other ICT equipment such as LCD projectors, printers and scanners, and UPS backup. Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got an NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. The Information Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. They will provide course material and hardware support for the conduction of these courses as well as bridge courses under the NVIDIA Developer Center. It Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry-ready. Besides this IT Department has done a tie-up with Microsoft for conducting Training and Certification under Microsoft Virtual Academy (MVA) for students as well as staff in the domain of IoT and Cyber Security. Department has MoU with Amazon AWS to setup Amazon AWS Academy for the professional training and Certification of the staff and the students, AWS will be giving 50% discount for all the certification and free training for the faculty member under this MoU."),
              Text(
                  "\nStudents undergo on-field projects so that they can be prepared to face professional challenges. Faculty members and students have published more than 500 papers are in national and international conferences and UGC Approved Journals. Research areas of published works are Cloud Computing, Ubiquitous Computing, Pervasive Computing, Soft computing, etc. Besides this, students are given in house training of GATE examination, aptitude, and other competitive examinations. To make students eligible for international placements and skills required in the MNCs IT Department has signed MoU with Apple Inc. to sept up Apple iOS Developer University Program (iDUP), Apple has provided the Programming platform and training under the same. The department has also set up an Intel Intelligent Systems lab in collaboration with Intel Inc. This lab has hardware and software setup to carry out application development for Smart City Projects, in the domain of the Internet of Things. "),
              Text(
                  "\nThe Department’s students’ body FAMT- ACM Students Chapter is sponsored by the Association of Computer Machinery, USA (ACM). This chapter is actively involved in creating awareness about technological advancements amongst students. FAMT- ACM Students Chapter also coordinates and organizes various events like group discussions, online quizzes, workshops, seminars, and industrial visits that help students to keep themselves updated with the latest technological advancements. Besides this, FAMT- ACM Students Chapter also coordinates charity events such as blood donation, help to drought-affected farmers, etc."),
              Text(
                  "\nThe Department provides complete support to students for training and placement. IBM, Wipro Spectramind, Tata AIG, HCL, Patni Computer Systems, ICICI Infotech, TCS, Finolex Industries Ltd., Magneto-IT solutions, CNC Ltd., Config Solutions, Xento, and Bitwise solutions are some of the IT companies who are regular recruiters of IT students."),
              Text(
                  "\nIT department also has a Ph.D. Research Center under the Mumbai University and it is the only department in the Konkan region to provide doctorate level education. "),
              Text(
                  "\nDepartment has a total of 13 faculty members with an average experience of more than 10 years. They have been always upgrading the knowledge by undergoing training and certification offered by the industries and then professional bodies. Faculty members have been completing their certification from NPTEL, Coursera, IBM Cognitive Class, Udemy, Microsoft technology Associate Program, Amazon AWS Academy. It Department has always been keeping students at the centre and always working for their holistic development and bright future."),
              Text("\n\nThank You,"),
              Text("\nDr. Vinayak Ashok Bharadi.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("\nHoD –IT, Associate Professor\n\nFAMT, Ratnagiri")
            ],
          )),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void hod(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("HOD's Desk",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Image.network(
                  'https://famt.ac.in/wp-content/uploads/2017/01/DSC_1149-240x300.jpg',
                  height: 150,
                  width: 40,
                ),
                Text(
                    "Recent advancements in the areas of computers, software, networks, internet, communication technology, Big Data and cloud computing etc. has made huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. Emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics and Soft Computing. Currently the department’s infrastructure contains three classrooms, six laboratories, a staffroom, and a seminar hall. Ole classroom is ICT enabled with Wi-Fi projection facility. All floors of IT department have Wi-Fi connectivity."),
                Text(
                    "\nThe computing facility in the department includes 155 computers with latest configuration, and other ICT equipment such as LCD projectors, printers and scanners. Recently in February 2017, the department’s HoD Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got a NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. Information Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. They will provide course material, and hardware support for conduction of these courses as well as bridge courses. It Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry ready. Besides this It Department has done a tie-up with Microsoft for conducting Training and Certification for students as well as staff in the domain of IoT and Cyber Security, first session of this training was conducted in Sept 2017."),
                Text(
                    "\nStudents undergo on-field projects so that they can be prepared to face professional challenges. Recently from January 2017 to Nov 2017, students of final year have successfully published Thirty Two (16) research papers at various national/international conferences/journals out of which Fifteen (15) papers are in UGC Approved Journals. Research areas of published works are Cloud Computing, Ubiquitous Computing, Pervasive Computing, Soft computing etc. Besides this, students are given in house training of GATE examination, aptitude, and other competitive examinations."),
                Text(
                    "\nThe Department’s students body ‘Information Technology Student Association’ (ITSA) is actively involved in creating awareness about technological advancements amongst students. ITSA also coordinates and organizes various events like group discussions, online quizzes, workshops, seminars, and industrial visits that help students to keep themselves in tune of latest technological advancements. Besides this, ITSA also coordinates charity events such as blood donation, help to drought affected farmers etc."),
                Text(
                    "\nThe Department provides complete support to students for training and placement. IBM, Wipro Spectramind, Tata AIG, HCL, Patni Computer Systems, ICICI Infotech, TCS, Finolex Industries Ltd., Magneto-IT solutions, CNC Ltd., Config Solutions, Xento, and Bitwise solutions are some of the IT companies who are regular recruiters of IT students."),
                Text(
                    "\nTeachers in IT department are very active in upgrading knowledge, In Odd Semester of AY 2017-2018 Eight Faculty members from IT Department have successfully completed Certified Training programs from NPTEL and Prof. Santosh Jadhav and Prof. Atiya Kazi has  achieved national level ranking as Top 1% and Top 5% respectively. Department will strive to provide best in class education and facilities for the stakeholders and contribute for nation building."),
                Text("\n\nThank You,",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                    "\nDr. Vinayak Ashok Bharadi HoD- IT, Professor FAMT, Ratnagiri",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void vision(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Vision and Mission",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("VISION",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Text(
                    "\nTo provide excellent Information Technology education and aspire to nurture students as leaders who are in tune with global IT Trends"),
                Text("\n\nMISSION\n",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                DataTable(
                  border: TableBorder.all(width: 1),
                  columns: [
                    DataColumn(
                        label: Text('No.',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Title',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('M1')),
                      DataCell(Text(
                          'To Enrich students by rigorously implementing quality education')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('M2')),
                      DataCell(Text('To make students industry ready')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('M3')),
                      DataCell(Text(
                          'To imbibe professional ethics and social values in the students and make them responsible citizens.')),
                    ]),
                  ],
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}

void peo(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("PEO's and PSO's",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text("PROGRAM EDUCATIONAL OBJECTIVES (PEOs)\n",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              DataTable(
                border: TableBorder.all(width: 1),
                dataRowHeight: 60,
                columns: [
                  DataColumn(
                      label: Text('Sr.',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Outcome',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('PEO1')),
                    DataCell(Text(
                        'To provide learners with Core Competence in mathematical, scientific and basic engineering fundamentals necessary to formulate, analyze and solve hardware/software engineering problems.')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PEO2')),
                    DataCell(Text(
                        'To prepare learners to solve business-centered problems by identifying, analyzing, developing, and implementing information system based solutions with modern programming tools. To encourage learners to use best practices and implement technologies to enhance information security and enable compliance, ensuring confidentiality, information integrity, and availability.')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PEO3')),
                    DataCell(Text(
                        'To prepare learners for a successful career in Indian and Multinational Organizations, Identify and evaluate current and emerging technologies. To provide our graduates with learning environment awareness of the life-long learning. To motivate students to pursue it throughout their career and higher studies. To encourage and motivate learners for Research & Development and entrepreneurship.')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PEO4')),
                    DataCell(Text(
                        'To introduce learners  to  ethical codes and guidelines including professional, ethical, legal and public policy issues to perform excellence, show leadership skills and demonstrate good citizenship')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PEO5')),
                    DataCell(Text(
                        'To develop effective written and oral communication skills to interact with clients, users, co-workers and managers.  To enable learners to work as part of teams on multidisciplinary projects and diverse professional environments to accomplish a common goal by integrating personal initiative and group cooperation.')),
                  ]),
                ],
              ),
              Text(
                  "\n\nPROGRAM OUTCOMES (POs) & PROGRAM SPECIFIC OUTCOMES (PSOs)\n",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              DataTable(
                border: TableBorder.all(width: 1),
                dataRowHeight: 60,
                columnSpacing: 80,
                columns: [
                  DataColumn(
                      label: Text('Sr.',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('PO Domain',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text(
                          'Program Outcomes : The students of Information Technology (IT) Department will be able to :',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Classification',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('PO1')),
                    DataCell(Text('Engineering Knowledge')),
                    DataCell(Text(
                        'Apply the knowledge of mathematics, science and IT fundamentals to the solution of complex engineering problems.')),
                    DataCell(Text('Knowledge')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO2')),
                    DataCell(Text('Problem Analysis')),
                    DataCell(Text(
                        'Identify, formulate, review research literature, and analyse complex IT problems reaching substantiated conclusions using principles of mathematics, natural sciences, and engineering.')),
                    DataCell(Text('Knowledge')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO3')),
                    DataCell(Text('Design/Development of Solutions')),
                    DataCell(Text(
                        'Use research-based knowledge of IT and research methods including design of experiments, analysis and interpretation of data, and synthesis of the information to provide valid conclusions.')),
                    DataCell(Text('Skills')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO4')),
                    DataCell(Text('Investigation of user needs')),
                    DataCell(Text(
                        'Ability to investigate, identify and analyse user needs, and take them into account in selection, creation, evaluation, administration of IT-based solutions into the user environment.')),
                    DataCell(Text('Skills')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO5')),
                    DataCell(Text('Modern Tool Usage')),
                    DataCell(Text(
                        'Create, select, and apply appropriate techniques, resources, and modern engineering and IT tools including prediction and modelling to complex IT activities with an understanding of the limitations.')),
                    DataCell(Text('Skills')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO6')),
                    DataCell(Text('The Engineer and Society')),
                    DataCell(Text(
                        'Apply reasoning informed by the contextual knowledge to assess societal, health, safety, legal and cultural issues and the consequent responsibilities relevant to the professional engineering practice in the field of IT.')),
                    DataCell(Text('Skills')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO7')),
                    DataCell(Text('Environment and Sustainability')),
                    DataCell(Text(
                        'Understand the impact of the professional IT solutions in societal and environmental contexts, and demonstrate the knowledge of, and need for sustainable development.')),
                    DataCell(Text('Skills')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO8')),
                    DataCell(Text('Ethics')),
                    DataCell(Text(
                        'Apply ethical principles and commit to professional ethics and responsibilities and norms of the IT practice.')),
                    DataCell(Text('Attitude')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO9')),
                    DataCell(Text('Individual and Team Work')),
                    DataCell(Text(
                        ' Function effectively as an individual, and as a member or leader in diverse teams, and in multidisciplinary settings.')),
                    DataCell(Text('Attitude')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO10')),
                    DataCell(Text('Communication')),
                    DataCell(Text(
                        'Communicate effectively on complex IT activities with the engineering community and with society at large, such as, being able to comprehend and write effective reports and design documentation, make effective presentations, and give and receive clear instructions.')),
                    DataCell(Text('Skills')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO11')),
                    DataCell(Text('Project Management and Finance')),
                    DataCell(Text(
                        'Demonstrate knowledge and understanding of the IT and management principles and apply these to one’s own work, as a member and leader in a team, to manage projects and in multidisciplinary environments.')),
                    DataCell(Text('Attitude')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PO12')),
                    DataCell(Text('Life-Long Learning')),
                    DataCell(Text(
                        'Recognise  the need for, and have the preparation and ability to engage in independent and life-long learning in the broadest context of technological change.')),
                    DataCell(Text('Attitude')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PSO1')),
                    DataCell(Text('Realistic Framework Designing')),
                    DataCell(Text(
                        'Create, select, and apply appropriate techniques, resources, and modern engineering and IT tools including prediction and modelling to complex IT activities with an understanding of the limitations.')),
                    DataCell(Text('Skills')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PSO2')),
                    DataCell(Text('IT Integration and Adaptability')),
                    DataCell(Text(
                        'Effectively integrate IT-based solutions into the user environment and Adapt themselves easily to emerging trends in Information Technology.')),
                    DataCell(Text('Skills')),
                  ]),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Close'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    },
  );
}
