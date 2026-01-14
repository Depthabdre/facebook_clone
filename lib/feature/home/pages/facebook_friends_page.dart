import 'package:flutter/material.dart';

class FacebookFriendsPage extends StatelessWidget {
  const FacebookFriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Friends',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Row(
                children: [
                  _buildTabButton(
                    context,
                    title: 'Friend requests',
                    isSelected: true,
                  ),
                  const SizedBox(width: 8.0),
                  _buildTabButton(
                    context,
                    title: 'Your friends',
                    isSelected: false,
                  ),
                ],
              ),
            ),
            const Divider(height: 1, thickness: 0.5, color: Colors.grey),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Import contacts',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Let Facebook automatically upload new and updated contacts as you add them to your phone.',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                            0xFF1877F2,
                          ), // Facebook blue
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: const Text('Get started'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(height: 1, thickness: 0.5, color: Colors.grey),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'People you may know',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            // Dummy list of "People you may know"
            _buildPersonCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1599566150163-29194d6b4890?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGZhY2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60', // Example URL
              name: 'Ody Martin',
              mutualFriends: null,
            ),
            _buildPersonCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGZhY2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60', // Example URL
              name: 'Alellah Mehdi',
              mutualFriends: null,
            ),
            _buildPersonCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1534528736681-344cd2324f60?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhY2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60', // Example URL
              name: 'Taju Reshad Jemal',
              mutualFriends: 107,
            ),
            _buildPersonCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1507003211169-e6955a6d00ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZhY2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60', // Example URL
              name: 'NMar Sebr Xc',
              mutualFriends: 144,
            ),
            _buildPersonCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29329?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZmFjZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60', // Example URL
              name: 'Jane Doe',
              mutualFriends: 50,
            ),
            _buildPersonCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZmFjZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60', // Example URL
              name: 'John Smith',
              mutualFriends: 72,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabButton(
    BuildContext context, {
    required String title,
    required bool isSelected,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: isSelected ? Colors.grey[200] : Colors.transparent,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.black : Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPersonCard({
    required String imageUrl,
    required String name,
    int? mutualFriends,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.grey[200],
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                if (mutualFriends != null)
                  Text(
                    '$mutualFriends mutual friends',
                    style: TextStyle(color: Colors.grey[600], fontSize: 13.0),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 12.0),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1877F2),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: const Text('Add friend'),
          ),
          const SizedBox(width: 8.0),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.grey[300]!),
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: const Text('Remove'),
          ),
        ],
      ),
    );
  }
}
