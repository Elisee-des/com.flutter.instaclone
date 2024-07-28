import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instaclone/data/firebase_services/firestor.dart';
import 'package:instaclone/data/firebase_services/storage.dart';

class AddPostTextScreen extends StatefulWidget {
  File _file;
  AddPostTextScreen(this._file, {super.key});

  @override
  State<AddPostTextScreen> createState() => _AddPostTextScreenState();
}

class _AddPostTextScreenState extends State<AddPostTextScreen> {
  final caption = TextEditingController();
  final location = TextEditingController();
  bool islooding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Nouveau Post',
          style: TextStyle(fontSize: 20.sp),
        ),
        centerTitle: false,
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: GestureDetector(
                onTap: () async {
                  setState(() {
                    islooding = true;
                  });
                  String postUrl = await StorageMethod()
                      .uploadImageToStorage('post', widget._file);
                  await Firebase_Firestor().CreatePost(
                      caption: caption.text,
                      location: location.text,
                      postImage: postUrl);
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Publier',
                  style: TextStyle(color: Colors.blue, fontSize: 15.sp),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: islooding ? const Center(child: CircularProgressIndicator(color: Colors.black,)) : Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Row(
                  children: [
                    Container(
                        width: 65.h,
                        height: 65.h,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                              image: FileImage(widget._file),
                              fit: BoxFit.cover),
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 280.w,
                      height: 60.h,
                      child: TextField(
                        controller: caption,
                        decoration: const InputDecoration(
                            hintText: 'Ecrivez votre texte...',
                            border: InputBorder.none),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: SizedBox(
                  width: 280.w,
                  height: 30.h,
                  child: TextField(
                    controller: location,
                    decoration: const InputDecoration(
                      hintText: 'Ajouter un lieu',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
