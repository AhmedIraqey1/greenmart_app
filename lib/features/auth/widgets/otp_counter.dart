// import 'dart:async'; // 1. مكتبة الوقت والعمليات المتزامنة
// import 'package:flutter/material.dart';

// class OtpTimerScreen extends StatefulWidget {
//   @override
//   _OtpTimerScreenState createState() => _OtpTimerScreenState();
// }

// class _OtpTimerScreenState extends State<OtpTimerScreen> {
//   // --- 2. تعريف المتغيرات الأساسية ---
//   Timer? _timer;        // كائن العداد اللي بيتحكم في التشغيل والإيقاف
//   int _start = 90;      // إجمالي الثواني (دقيقة و 23 ثانية)

//   // --- 3. دالة بدء العداد ---
//   void startTimer() {
//     const oneSec = Duration(seconds: 1); // بنحدد إننا هنشتغل كل ثانية واحدة
    
//     // Timer.periodic دي دالة بتكرر نفسها كل ثانية
//     _timer = Timer.periodic(oneSec, (Timer timer) {
//       if (_start == 0) {
//         // لو العداد وصل لصفر.. بنوقفه
//         setState(() {
//           timer.cancel();
//         });
//       } else {
//         // لو لسه فيه وقت.. بننقص ثانية واحدة وبنحدث الشاشة
//         setState(() {
//           _start--;
//         });
//       }
//     });
//   }

//   // --- 4. دالة تحويل الثواني لشكل (دقيقة:ثانية) ---
//   String formatTime(int seconds) {
//     int minutes = seconds ~/ 60; // القسمة الصحيحة عشان نجيب الدقائق
//     int remainingSeconds = seconds % 60; // باقي القسمة عشان نجيب الثواني
    
//     // padLeft بتضيف "0" على الشمال لو الرقم أقل من 10 (عشان يبقى 09 بدل 9)
//     return '${minutes}:${remainingSeconds.toString().padLeft(2, '0')}';
//   }

//   // --- 5. دوال دورة حياة الـ Widget ---
//   @override
//   void initState() {
//     super.initState();
//     startTimer(); // أول ما الصفحة تفتح.. العداد يبدأ فوراً
//   }

//   @override
//   void dispose() {
//     _timer?.cancel(); // مهم جداً: بنقفل العداد لو قفلنا الصفحة عشان نحافظ على الرامات
//     super.dispose();
//   }

//   // --- 6. واجهة المستخدم (UI) ---
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // النص اللي فيه العداد
//             Text(
//               "Resend confirmation code (${formatTime(_start)})",
//               style: TextStyle(color: Colors.grey[600], fontSize: 16),
//             ),
            
//             SizedBox(height: 20), // مسافة بسيطة

//             // زرار إعادة الإرسال (يظهر فقط لما العداد يخلص)
//             if (_start == 0)
//               TextButton(
//                 onPressed: () {
//                   // لما نضغط عليه بنصفر العداد ونبدأ من جديد
//                   setState(() => _start = 83);
//                   startTimer();
//                 },
//                 child: Text(
//                   "Resend OTP",
//                   style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }