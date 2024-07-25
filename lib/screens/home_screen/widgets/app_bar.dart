import 'package:deals_dray/constansts/const.dart';
import 'package:flutter/material.dart';

class AppbarElements extends StatelessWidget {
  const AppbarElements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kWhite, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0,
          blurRadius: 8,
          offset: Offset(0, 1),
        )
      ]),
      child: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Container(
          width: 250,
          height: 53,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                  'Search here',
                  style: TextStyle(color: Colors.black),
                )),
                Icon(Icons.search)
              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
        ],
      ),
    );
  }
}
