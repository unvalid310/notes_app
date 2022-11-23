import 'package:flutter/material.dart';
import 'package:notes_app/util/styles.dart';
import 'package:notes_app/view/base/custom_field.dart';
import 'package:sizer/sizer.dart';

class CreateProjectScreen extends StatelessWidget {
  const CreateProjectScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                highlightColor: Colors.transparent,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 25, 20),
                  child: Text(
                    'Back',
                    style: poppinsMedium.copyWith(
                      fontSize: 14.sp,
                      color: Color(0xFF343E90),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Create New Project',
                  style: poppinsBold.copyWith(
                    fontSize: 16.sp,
                    color: Color(0xFF343E90),
                  ),
                ),
              ),
              SizedBox(height: 30),
              CustomField(
                hintText: 'title',
              ),
              SizedBox(height: 20),
              CustomField(
                hintText: 'Description',
              ),
              SizedBox(height: 20),
              CustomField(
                hintText: 'Member',
              ),
              SizedBox(height: 20),
              CustomField(
                hintText: 'Due date (optional)',
              ),
              SizedBox(height: 25),
              InkWell(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 35, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFE5E5E5)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_rounded,
                        size: 18,
                        color: Color(0xFFE5E5E5),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Add Task',
                        style: poppinsRegular.copyWith(
                          fontSize: 12.sp,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                    decoration: BoxDecoration(
                      color: Color(0xFF343E90),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      'Create Project',
                      style: poppinsMedium.copyWith(
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
