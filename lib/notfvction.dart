import 'package:flutter/material.dart';

class Notfvction extends StatefulWidget {
  const Notfvction({super.key});

  @override
  State<Notfvction> createState() => _NotfvctionState();
}

class _NotfvctionState extends State<Notfvction> {
  final List<Map<String, dynamic>> notifications = [
    {
      'title': 'تم إلغاء الموعد!',
      'time': 'اليوم | 15:36 م',
      'message': 'لقد نجحت في إلغاء موعدك مع الدكتور آلان واتسون في 24 ديسمبر 2024 ، الساعة 13:00 مساء ، وسيتم إرجاع 80% من الأموال إلى حسابك.',
      'type': 'cancelled',
      'icon': Icons.cancel,
      'color': Colors.red,
    },
    {
      'title': 'الجدول الزمني',
      'time': 'أمس | 09:23 م',
      'message': 'لقد نجحت في تقديم موعد مع الدكتور آلان واتسون في 24 ديسمبر 2024 ، الساعة 13:00 مساء لا تنس تنشيط التذكير.',
      'type': 'schedule',
      'icon': Icons.schedule,
      'color': Colors.green,
    },
    {
      'title': 'نجاح التعيين!',
      'time': '19 ديسمبر، 2022 | 18:35 م',
      'message': 'لقد حجزت بنجاح موعداً مع الدكتور آلان واتسون في 24 ديسمبر 2024 ، الساعة 10:00 صباحاً لا تنس تنشيط التذكير.',
      'type': 'success',
      'icon': Icons.check_circle,
      'color': Colors.cyan,
    },
    {
      'title': 'خدمات جديدة متاحة!',
      'time': '14 ديسمبر، 2022 | 10:52 م',
      'message': 'يمكنك الآن تحديد مواعيد دكتوراه متعددة في وقت واحد يمكنك أيضاً إلغاء موعدك.',
      'type': 'info',
      'icon': Icons.info,
      'color': Colors.orange,
    },
    {
      'title': 'بطاقة الائتمان متصلة!',
      'time': '12 ديسمبر، 2022 | 15:38 م',
      'message': 'تم ربط بطاقتك الائتمانية بنجاح مع Medica إستمتع بخدماتنا.',
      'type': 'payment',
      'icon': Icons.credit_card,
      'color': Colors.cyan,
    },
    {
      'title': 'تم إعداد الحساب بنجاح!',
      'time': '10 ديسمبر، 2022 | 14:20 م',
      'message': 'تم إنشاء حسابك بنجاح في Medica استمتع بخدماتنا الطبية الممتازة.',
      'type': 'account',
      'icon': Icons.person,
      'color': Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_forward, color: Colors.black),
        ),
        title: Text(
          "الإشعار",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz, color: Colors.black),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "جديد",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            notification['title'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(height: 4),
                          Text(
                            notification['time'],
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: notification['color'].withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        notification['icon'],
                        color: notification['color'],
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  notification['message'],
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 1.4,
                  ),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
