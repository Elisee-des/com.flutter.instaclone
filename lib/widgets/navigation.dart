// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:instaclone/screens/home.dart';

// class Navigations_Screen extends StatefulWidget {
//   const Navigations_Screen({super.key});

//   @override
//   State<Navigations_Screen> createState() => _Navigations_ScreenState();
// }

// int _currentIndex = 0;

// class _Navigations_ScreenState extends State<Navigations_Screen> {
//   late PageController pageController;
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     pageController = PageController();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     pageController.dispose();
//   }

//   onPageChanged(int page) {
//     setState(() {
//       _currentIndex = page;
//     });
//   }

//   navigationTapped(int page) {
//     pageController.jumpToPage(page);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Container(
//         child: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: Colors.black,
//           unselectedItemColor: Colors.grey,
//           currentIndex: _currentIndex,
//           onTap: navigationTapped,
//           items: [
//             const BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: '',
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: '',
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(Icons.camera),
//               label: '',
//             ),
//             BottomNavigationBarItem(
//               icon: Image.asset(
//                 'images/instagram-reels-icon.png',
//                 height: 20.h,
//               ),
//               label: '',
//             ),
//             const BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: '',
//             ),
//           ],
//         ),
//       ),
//       body: PageView(
//         controller: pageController,
//         onPageChanged: onPageChanged,
//         children: [
//           HomeScreen(),
//           // ExploreScreen(),
//           // AddScreen(),
//           // ReelScreen(),
//           // ProfileScreen(
//             // Uid: _auth.currentUser!.uid,
//           // ),
//         ],
//       ),
//     );
//   }
// }


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instaclone/screens/add_screen.dart';
import 'package:instaclone/screens/explore_screen.dart';
import 'package:instaclone/screens/home.dart';
import 'package:instaclone/screens/profile_screen.dart';
import 'package:instaclone/screens/reels_screen.dart';

class NavigationsScreen extends StatefulWidget {
  const NavigationsScreen({super.key});

  @override
  State<NavigationsScreen> createState() => _NavigationsScreenState();
}

int _currentIndex = 0;

class _NavigationsScreenState extends State<NavigationsScreen> {
  late PageController pageController;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GestureDetector(
              onTap: () => navigationTapped(0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home,
                      color: _currentIndex == 0 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: _currentIndex == 0 ? Colors.black : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => navigationTapped(1),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.search,
                      color: _currentIndex == 1 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: _currentIndex == 1 ? Colors.black : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => navigationTapped(2),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.camera,
                      color: _currentIndex == 2 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'Camera',
                      style: TextStyle(
                        color: _currentIndex == 2 ? Colors.black : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => navigationTapped(3),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'images/instagram-reels-icon.png',
                      height: 20.h,
                      color: _currentIndex == 3 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'Reels',
                      style: TextStyle(
                        color: _currentIndex == 3 ? Colors.black : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => navigationTapped(4),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.person,
                      color: _currentIndex == 4 ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: _currentIndex == 4 ? Colors.black : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomeScreen(),
          ExploreScreen(),
          AddScreen(),
          ReelsScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
