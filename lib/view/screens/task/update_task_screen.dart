import 'package:flutter/material.dart';
import 'package:notes_app/util/styles.dart';
import 'package:sizer/sizer.dart';

class UpdateTaskScreen extends StatelessWidget {
  const UpdateTaskScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              highlightColor: Colors.transparent,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 20, 25, 20),
                child: Icon(
                  Icons.close_rounded,
                  size: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Task Title',
              style: poppinsBold.copyWith(fontSize: 16.sp),
            ),
            SizedBox(height: 20),
            Text(
              'lorem ipsum description',
              style: poppinsRegular.copyWith(fontSize: 14.sp),
            ),
            SizedBox(height: 30),
            Text(
              'Attachment',
              style: poppinsBold.copyWith(fontSize: 16.sp),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: Icon(
                      Icons.add_rounded,
                      size: 50,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              child: Row(
                children: [
                  Text(
                    'Status : ',
                    style: poppinsBold.copyWith(fontSize: 16.sp),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      'Project Status',
                      style: poppinsRegular.copyWith(
                        fontSize: 16.sp,
                        color: Color(0xFFD9D9D9),
                      ),
                    ),
                  )
                ],
              ),
              onTap: () async {
                await showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 25),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Status',
                                style: poppinsBold.copyWith(fontSize: 16.sp),
                              ),
                              SizedBox(height: 30),
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF74CD2D),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    'Task Done',
                                    style: poppinsMedium.copyWith(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFB038),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    'On Proggress',
                                    style: poppinsMedium.copyWith(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFF5B5B),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    'Not Finish',
                                    style: poppinsMedium.copyWith(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
