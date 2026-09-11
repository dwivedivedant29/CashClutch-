import 'package:flutter/material.dart';

void main() {
  runApp(const CashClutchApp());
}

class CashClutchApp extends StatelessWidget {
  const CashClutchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CashClutch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _navIndex = 0;

  final List<Map<String, dynamic>> _offers = [
    {
      "title": "State of Survival",
      "task": "Reach Headquarters Level 12",
      "payout": 1200,
      "tag": "HOT OFFER",
      "icon": Icons.shield_outlined,
    },
    {
      "title": "Solitaire Clash",
      "task": "Install & Complete 3 Matches",
      "payout": 350,
      "tag": "EASY",
      "icon": Icons.style_outlined,
    },
    {
      "title": "Quick Survey (CPAlead)",
      "task": "Answer 5 Gamer Questions",
      "payout": 150,
      "tag": "FAST",
      "icon": Icons.bolt_outlined,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0E14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0C0E14),
        elevation: 0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFF1E2230),
              child: Icon(Icons.person, color: Colors.white70, size: 18),
            ),
            SizedBox(width: 8),
            Text(
              "CashClutch",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF1B1F2D),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFFFFD043).withOpacity(0.4)),
            ),
            child: Row(
              children: const [
                Icon(Icons.monetization_on, color: Color(0xFFFFD043), size: 18),
                SizedBox(width: 6),
                Text("100 pts", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFF2C1458), Color(0xFF121424)]),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.deepPurpleAccent.withOpacity(0.3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("DAILY REWARD", style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 10, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("Free Daily Coins", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00FF88),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text("Claim +25", style: TextStyle(fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text("Featured Tasks", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _offers.length,
              separatorBuilder: (c, i) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                final item = _offers[index];
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF161922),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white.withOpacity(0.05)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFF222634),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(item['icon'], color: Colors.white, size: 24),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['tag'], style: const TextStyle(color: Color(0xFF00FF88), fontSize: 9, fontWeight: FontWeight.bold)),
                            Text(item['title'], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                            Text(item['task'], style: const TextStyle(color: Colors.white54, fontSize: 11)),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF202637),
                          foregroundColor: const Color(0xFFFFD043),
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text("+${item['payout']}"),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navIndex,
        onTap: (i) => setState(() => _navIndex = i),
        backgroundColor: const Color(0xFF12141D),
        selectedItemColor: const Color(0xFF00FF88),
        unselectedItemColor: Colors.white38,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.flash_on), label: "Offers"),
          BottomNavigationBarItem(icon: Icon(Icons.sports_esports), label: "Playtime"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
        ],
      ),
    );
  }
}
