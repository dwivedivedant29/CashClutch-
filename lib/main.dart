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
];
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
