import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  Widget story(String name, Color color, String letter,
      {bool add = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 66,
                height: 66,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black54, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: color,
                  child: Text(
                    letter,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              if (add)
                const Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add, color: Colors.white, size: 17),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 5),
          Text(name, style: const TextStyle(fontSize: 11)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'SocialFlow',
                    style: TextStyle(
                        fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.add_box_outlined, size: 25),
                      SizedBox(width: 25),
                      Icon(Icons.favorite_border, size: 27),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(height: 1),

            // Stories
            SizedBox(
              height: 112,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  story('Your Story', Colors.blueGrey, 'Y', add: true),
                  story('alex_v', Colors.brown, 'A'),
                  story('sarah.k', Colors.pink, 'S'),
                  story('tech_daily', Colors.orange, 'T'),
                  story('travel_diary', Colors.teal, 'D'),
                ],
              ),
            ),
            const Divider(height: 1),

            // Feed
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            child: Text('A',
                                style: TextStyle(color: Colors.white)),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('alex_v',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                Text('San Francisco',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey)),
                              ],
                            ),
                          ),
                          const Icon(Icons.more_horiz),
                        ],
                      ),
                    ),

                    // Main photo with layered location label
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 300,
                          child: Image.asset(
                            'assets/images/socialflow_bridge.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          right: 12,
                          top: 12,
                          child: Icon(Icons.location_on,
                              color: Colors.white, size: 25),
                        ),
                      ],
                    ),

                    // Post actions
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 12),
                      child: Row(
                        children: const [
                          Icon(Icons.favorite_border, size: 27),
                          SizedBox(width: 27),
                          Icon(Icons.mode_comment_outlined, size: 25),
                          SizedBox(width: 27),
                          Icon(Icons.send, size: 24),
                          Spacer(),
                          Icon(Icons.bookmark_border, size: 27),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        '1,240 likes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'alex_v  ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  'Finally made it to the bay area! The view is amazing.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom navigation
      bottomNavigationBar: Container(
        height: 55,
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.home, size: 27),
            Icon(Icons.search, size: 27, color: Colors.grey),
            Icon(Icons.person, size: 27, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
