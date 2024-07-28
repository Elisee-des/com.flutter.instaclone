import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Container(
                    width: 375.w,
                    height: 80.h,
                    color: Colors.white,
                    child: Center(
                      child: ListTile(
                        leading: ClipOval(
                          child: SizedBox(
                            width: 36.h,
                            height: 36.h,
                            child: Image.asset('images/person.png'),
                          ),
                        ),
                        title: Text(
                          'username',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'location',
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(Icons.more_horiz),
                      ),
                    ),
                  ),
                  Container(
                    width: 375.w,
                    height: 375.h,
                    child: Image.asset('images/post.jpg', fit: BoxFit.cover),
                  ),
                  Container(
                    width: 375.w,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 14.h),
                        Row(
                          children: [
                            SizedBox(width: 14.w),
                            const Icon(Icons.favorite_outline, size: 25),
                            SizedBox(width: 17.w),
                            Image.asset(
                              'images/comment.webp',
                              height: 32.h,
                            ),
                            SizedBox(width: 17.w),
                            Image.asset(
                              'images/send.jpg',
                              height: 28.h,
                            ),
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Image.asset(
                                'images/save.png',
                                height: 28.h,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 19.w,
                            top: 14.h,
                            bottom: 5.h,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '0 likes',
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'username',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5.w), // Ajoutez un espace entre le nom d'utilisateur et la légende
                              Expanded( // Utilisez un widget Expanded pour permettre à la légende d'occuper tout l'espace disponible
                                child: Text(
                                  'caption',
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.w, top: 8.h, bottom: 8.h),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'dateformat',
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );;
  }
}