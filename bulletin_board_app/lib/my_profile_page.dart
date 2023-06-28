import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'item_provider.dart';
import 'item.dart';

class myProfile extends StatefulWidget {

  @override
  _myProfile createState() => _myProfile();
}

class _myProfile extends State<myProfile> {

  int followCount = 0;
  int followerCount = 1;

  @override
  Widget build(BuildContext context) {
    final itemListProvider = Provider.of<ItemListProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.blue,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'ユーザ名',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'ユーザID',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      '$followCount'+' フォロー',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      '$followerCount'+' フォロワー',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'ユーザが自由に記載したテキスト',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              // ListView.builder(
              //   itemCount: itemListProvider.items.length,
              //   itemBuilder: (context, index) {
              //     final item = itemListProvider.items[index];
              //     return ListTile(
              //       title: Text(item.name),
              //       trailing: IconButton(
              //         icon: const Icon(Icons.delete),
              //         onPressed: () {
              //           itemListProvider.removeItem(item);
              //         },
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        )
      ),
    );
  }
}
