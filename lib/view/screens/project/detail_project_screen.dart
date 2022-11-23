import 'package:flutter/material.dart';
import 'package:notes_app/util/styles.dart';
import 'package:notes_app/view/screens/task/update_task_screen.dart';
import 'package:sizer/sizer.dart';

class DetailProjectScreen extends StatelessWidget {
  DetailProjectScreen({Key key}) : super(key: key);

  List<Map<String, dynamic>> _taskList = [
    {
      'task': 'Task 1',
      'description': 'lorem ipsum description',
      'value': true,
      'group_value': true,
    },
    {
      'task': 'Task 2',
      'description': 'lorem ipsum description',
      'value': true,
      'group_value': true,
    },
    {
      'task': 'Task 3',
      'description': 'lorem ipsum description',
      'value': true,
      'group_value': true,
    },
    {
      'task': 'Task 4',
      'description': 'lorem ipsum description',
      'value': true,
      'group_value': false,
    },
    {
      'task': 'Task 5',
      'description': 'lorem ipsum description',
      'value': true,
      'group_value': false,
    },
    {
      'task': 'Task 6',
      'description': 'lorem ipsum description',
      'value': true,
      'group_value': false,
    },
    {
      'task': 'Task 7',
      'description': 'lorem ipsum description',
      'value': true,
      'group_value': false,
    },
    {
      'task': 'Task 8',
      'description': 'lorem ipsum description',
      'value': true,
      'group_value': false,
    },
    {
      'task': 'Task 9',
      'description': 'lorem ipsum description',
      'value': true,
      'group_value': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF343E90),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Text(
          'Project Title',
          maxLines: 2,
          style: poppinsBold.copyWith(
            overflow: TextOverflow.ellipsis,
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Due Date',
                    style: poppinsBold.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'dd/mm/yyyy',
                    style: poppinsRegular.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Member',
                    style: poppinsBold.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    'User1, User2, User3',
                    style: poppinsRegular.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Flexible(
              child: ListView.separated(
                itemCount: _taskList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20);
                },
                padding: EdgeInsets.symmetric(horizontal: 25),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(1, 1), // Shadow position
                        ),
                      ],
                    ),
                    width: double.infinity,
                    child: RadioListTile(
                      selectedTileColor: Colors.transparent,
                      activeColor: Color(0xFF343E90),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      title: Text(
                        _taskList[index]['task'],
                        style: poppinsMedium.copyWith(fontSize: 14.sp),
                      ),
                      subtitle: Text(
                        _taskList[index]['description'],
                        style: poppinsMedium.copyWith(fontSize: 12.sp),
                      ),
                      value: _taskList[index]['value'].toString(),
                      groupValue: _taskList[index]['group_value'].toString(),
                      onChanged: (val) async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UpdateTaskScreen(),
                          ),
                        ).then(
                          (value) => _taskList[index]['group_value'] = true,
                        );
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
