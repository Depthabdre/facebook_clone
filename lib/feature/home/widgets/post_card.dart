import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final int index;
  const PostCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 8.0,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/150?u=${index + 5}',
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'The Football History Book',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            '${index + 2}h • ',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12.0,
                            ),
                          ),
                          Icon(
                            Icons.public,
                            color: Colors.grey[600],
                            size: 12.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),
          ),
          // Caption
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
            child: Text(
              'Is this the best end to a football season ever? Liverpool vs Arsenal, 1989',
            ),
          ),
          // Image
          Image.network(
            'https://picsum.photos/500/300?random=$index',
            fit: BoxFit.cover,
            height: 250,
          ),
          // Stats
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 8.0,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.thumb_up,
                  size: 14.0,
                  color: Color(0xFF1877F2),
                ),
                const SizedBox(width: 4.0),
                Expanded(
                  child: Text(
                    '${(index + 1) * 150}',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                Text(
                  '${index * 10} Comments',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          const Divider(height: 0),
          // Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.grey,
                ),
                label: const Text('Like', style: TextStyle(color: Colors.grey)),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.chat_bubble_outline, color: Colors.grey),
                label: const Text(
                  'Comment',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined, color: Colors.grey),
                label: const Text(
                  'Share',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
