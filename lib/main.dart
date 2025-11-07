import 'package:flutter/material.dart';

void main() {
  runApp(const MyCVApp());
}

class MyCVApp extends StatelessWidget {
  const MyCVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'السيرة الذاتية',
      theme: ThemeData(
        primaryColor: const Color(0xFF009688),
        scaffoldBackgroundColor: const Color(0xFFF4F6F8),
        fontFamily: 'Arial',
      ),
      home: const MyCVPage(),
    );
  }
}

class MyCVPage extends StatelessWidget {
  const MyCVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 12,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // الصورة الشخصية
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFF009688),
                    child: Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                  const SizedBox(height: 15),

                  // الاسم والعمر
                  const Text(
                    'عبدالمجيد عبدالله كرامه باصلعه',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF004D40),
                      shadows: [
                        Shadow(
                          color: Colors.black26,
                          offset: Offset(1, 1),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  const Text('العمر: 24 سنة', style: TextStyle(fontSize: 16)),
                  const Text('المدينة: تريم - عينات',
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 20),

                  // المؤهل العلمي
                  _buildInfoCard(
                    icon: Icons.school,
                    title: 'المؤهل العلمي',
                    content: 'بكالوريوس تخصص تقنية معلومات',
                  ),

                  // الخبرات العملية
                  _buildInfoCard(
                    icon: Icons.work,
                    title: 'الخبرات العملية',
                    content:
                        'مصمم جرافيك بخبرة في التصميم الإبداعي والإعلانات.',
                  ),

                  // المهارات
                  _buildInfoCard(
                    icon: Icons.star,
                    title: 'المهارات',
                    content:
                        'كتابة السيناريوهات - التصميم الجرافيكي - التفكير الإبداعي - العمل الجماعي',
                  ),

                  // التواصل
                  _buildInfoCard(
                    icon: Icons.phone,
                    title: 'التواصل',
                    content: '📞 770045831',
                  ),

                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF009688),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF004D40),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  content,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
