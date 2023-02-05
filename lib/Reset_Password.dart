import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Reset_Password extends StatefulWidget {
  const Reset_Password({super.key});
  @override
  State<Reset_Password> createState() => _Reset_PasswordState();
}
class _Reset_PasswordState extends State<Reset_Password> {
  bool pass = true;
  bool pass2 = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(        
        backgroundColor: Colors.black,
        body:SingleChildScrollView(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
        Image.asset("assets/images/7.png", fit: BoxFit.cover ,width: 284.w, height: 184.h,),
        SizedBox(
          width: 251.w,
          height: 39.h,
          child : FittedBox(
          child:
          Text('Reset Password', style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xfffffdfd), fontSize: 32.sp,),
        ),),),
        SizedBox(
          width: 237.w,
          height: 24.h,
         child : FittedBox(
         child: Text('Enter your new password', style: TextStyle(color: const Color(0xfffffdfd), fontSize: 30.sp),),
        ),),
        SizedBox(height: 30.h),
        Container(
          alignment: Alignment.center,
            padding: REdgeInsets.all(20), 
          child: TextField(
          style: const TextStyle(color: Color(0xff5f5a5a)),
          obscureText: pass,
          decoration: 
          InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(fontSize: 16.0.sp, color: const Color(0xff5f5a5a)),
            suffixIcon: InkWell(
              onTap: (){
                setState(() {
                  pass =! pass;
                });
              },
              child: Icon(pass? Icons.visibility_off: Icons.visibility, color: const Color(0xff5f5a5a)),
            ),
            prefixIcon: const Icon(Icons.lock, color: Color(0xff5f5a5a)),
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(width: 5.w),
              borderRadius: BorderRadius.circular(15.0.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0.r),
            ),
            filled: true,
            fillColor:const Color(0xff262626),
          ),
          keyboardType: TextInputType.text,
        ),
        ),
        Container(
          alignment: Alignment.center,
            padding: REdgeInsets.all(20),
          child: TextField(
          style: const TextStyle(color: Color(0xff5f5a5a)),
          obscureText: pass2,
          decoration: InputDecoration(
            filled: true,
            fillColor:const Color(0xff262626),
            hintText: 'Confirm Password',
            hintStyle: TextStyle(fontSize: 16.0.sp, color: const Color(0xff5f5a5a)),
            suffixIcon: InkWell(
              onTap: (){
                setState(() {
                  pass2 =! pass2;
                });
              },
              child: Icon(pass2? Icons.visibility_off : Icons.visibility, color: const Color(0xff5f5a5a)),
            ),
            prefixIcon: const Icon(Icons.lock, color: Color(0xff5f5a5a)),
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(width: 5.w),
              borderRadius: BorderRadius.circular(15.0.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0.r),
            ),
          ),
          keyboardType: TextInputType.text,
        ),
        ),
        SizedBox(height: 100.h),
        SizedBox(
          width: 237.w,
          height: 56.h,
          child: ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
            backgroundColor: const Color(0xffff4b26),
            padding: REdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
           child: Text('Submit',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.sp),),
           ),
        ),
        TextButton(onPressed: (){}, 
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(REdgeInsets.all(20)),
        ),
        child: Text('Back',style: TextStyle(color: const Color(0xff5f5a5a), fontSize: 16.sp),)),
        ],),
        ),
      ),
    );
  }
}