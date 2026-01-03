import 'package:facebook_clone/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FacebookMenuPage extends StatelessWidget {
  const FacebookMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();

    // Helper function to build menu items
    Widget _buildMenuItem({
      required String title,
      required IconData icon,
      Color iconColor = Colors.black,
      VoidCallback? onTap,
    }) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(icon, color: iconColor),
              ),
              const SizedBox(width: 16.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
            ],
          ),
        ),
      );
    }

    // Helper function for special items like Settings & privacy
    Widget _buildExpandableMenuItem({
      required String title,
      required IconData icon,
      required List<Widget> children,
    }) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: ExpansionTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(icon, color: Colors.black),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          children: children,
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFC9CCD1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Menu',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // Main Menu Items (top section of your image)
          Row(
            children: [
              Expanded(
                child: _buildMenuItem(
                  title: "Reels",
                  icon: Icons.video_library,
                  iconColor: Colors.purple,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildMenuItem(
                  title: "Marketplace",
                  icon: Icons.store,
                  iconColor: Colors.blue,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildMenuItem(
                  title: "Pages",
                  icon: Icons.flag,
                  iconColor: Colors.orange,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildMenuItem(
                  title: "Saved",
                  icon: Icons.bookmark,
                  iconColor: Colors.deepPurple,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildMenuItem(
                  title: "Birthdays",
                  icon: Icons.cake,
                  iconColor: Colors.pink,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildMenuItem(
                  title: "Events",
                  icon: Icons.event,
                  iconColor: Colors.redAccent,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildMenuItem(
                  title: "Meta Verified",
                  icon: Icons.verified,
                  iconColor: Colors.blueAccent,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildMenuItem(
                  title: "Feeds",
                  icon: Icons.feed,
                  iconColor: Colors.lightGreen,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: _buildMenuItem(
                  title: "Instagram Lite",
                  icon: Icons.camera_alt,
                  iconColor: Colors.deepOrange,
                  onTap: () {},
                ),
              ),
              Expanded(
                child: _buildMenuItem(
                  title: "Memories",
                  icon: Icons.history,
                  iconColor: Colors.teal,
                  onTap: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          _buildExpandableMenuItem(
            title: "Settings & privacy",
            icon: Icons.settings,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Column(
                  children: [
                    _buildSubMenuItem(title: "Settings", icon: Icons.settings),
                    _buildSubMenuItem(
                      title: "Privacy Shortcuts",
                      icon: Icons.lock,
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildExpandableMenuItem(
            title: "Help & support",
            icon: Icons.help,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Column(
                  children: [
                    _buildSubMenuItem(title: "Help Center", icon: Icons.info),
                  ],
                ),
              ),
            ],
          ),
          _buildExpandableMenuItem(
            title: "Also From Meta",
            icon: Icons.apps,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Column(
                  children: [
                    _buildSubMenuItem(title: "Meta AI", icon: Icons.stars),
                  ],
                ),
              ),
            ],
          ),
          _buildMenuItem(
            title: "Meta AI",
            icon: Icons.lightbulb_outline,
            iconColor: Colors.blueAccent,
            onTap: () {},
          ),
          const SizedBox(height: 10),

          _buildMenuItem(
            title: "Add account",
            icon: Icons.person_add,
            onTap: () {},
          ),
          _buildMenuItem(
            title: "Log out",
            icon: Icons.logout,
            iconColor: Colors.red,
            onTap: () async {
              await authService.signOut();
              context.go('/login');
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSubMenuItem({required String title, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey[700]),
          const SizedBox(width: 12.0),
          Text(
            title,
            style: const TextStyle(fontSize: 14.0, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
