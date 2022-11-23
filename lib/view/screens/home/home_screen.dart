import 'package:flutter/material.dart';
import 'package:notes_app/util/styles.dart';
import 'package:notes_app/view/base/circle_tab_indicator.dart';
import 'package:notes_app/view/screens/project/create_project_screen.dart';
import 'package:notes_app/view/screens/project/detail_project_screen.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  List<Map<String, dynamic>> allProject = [
    {
      'project_name': 'Project Title',
      'description': 'Lorem ipsum sir dolor amet'
    },
    {
      'project_name': 'Project Title',
      'description': 'Lorem ipsum sir dolor amet'
    },
    {
      'project_name': 'Project Title',
      'description': 'Lorem ipsum sir dolor amet'
    },
    {
      'project_name': 'Project Title',
      'description': 'Lorem ipsum sir dolor amet'
    },
    {
      'project_name': 'Project Title',
      'description': 'Lorem ipsum sir dolor amet'
    }
  ];

  List<Map<String, dynamic>> pinnedProject = [
    {
      'project_name': 'Project Title',
      'description': 'Lorem ipsum sir dolor amet'
    },
    {
      'project_name': 'Project Title',
      'description': 'Lorem ipsum sir dolor amet'
    },
  ];

  List<Map<String, dynamic>> _tablist;

  @override
  Widget build(BuildContext context) {
    _tablist = allProject;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 55, 25, 25),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hey, User ',
                  style: poppinsBold.copyWith(
                    color: Color(0xFF343E90),
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: CircleTabIndicator(
                          color: Color(0xFF343E90), radius: 2),
                      isScrollable: true,
                      labelColor: Color(0xFF343E90),
                      unselectedLabelColor: Color(0xFFD9D9D9),
                      onTap: (index) {
                        _tablist.clear();
                        if (index > 0) {
                          _tablist = pinnedProject;
                        } else {
                          _tablist = allProject;
                        }
                        print(" $index length ${_tablist.length}");
                      },
                      tabs: <Widget>[
                        Container(
                          child: Text(
                            'All',
                            style: poppinsRegular.copyWith(fontSize: 12.sp),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Pinned',
                            style: poppinsRegular.copyWith(fontSize: 12.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.separated(
                    itemCount: _tablist.length,
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 20);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF343E90),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _tablist[index]['project_name'],
                              maxLines: 2,
                              style: poppinsBold.copyWith(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 20.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    _tablist[index]['description'],
                                    maxLines: 2,
                                    style: poppinsRegular.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 10,
                                    ),
                                  ),
                                  onTap: () {
                                    return Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailProjectScreen(),
                                      ),
                                    );
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateProjectScreen(),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.edit_rounded,
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Create Project',
                            style: poppinsBold.copyWith(
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
