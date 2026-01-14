import 'package:facebook_clone/feature/home/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class FacebookNotificationsPage extends StatelessWidget {
  const FacebookNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // We use a separate AppBar for this tab to match the screenshot header
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CircleButton(
            icon: Icons.check,
            iconSize: 20,
            onPressed: () {},
            // Customizing CircleButton to look like the black circle check in screenshot
            // Assuming your CircleButton accepts color props, otherwise wrap in standard logic
          ),
          CircleButton(icon: Icons.search, iconSize: 24, onPressed: () {}),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "New",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          // Notification Items
          _buildNotificationItem(
            profileImageUrl:
                'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60',
            name: 'Chernet Getachew',
            content: 'commented on Andina Marvelous Dalak\'s post.',
            time: '5 hours ago',
            iconData: Icons.message,
            iconColor: Colors.white,
            iconBgColor: Colors.green,
            isUnread: true,
          ),
          _buildNotificationItem(
            profileImageUrl:
                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60',
            name: 'Seadi Mu',
            content: 'mentioned you and other followers in a comment',
            time: 'Nov 3 at 10:41 PM',
            iconData: Icons.reply, // Represents mention/reply
            iconColor: Colors.white,
            iconBgColor: Colors.green,
            isUnread: true,
          ),
          _buildNotificationItem(
            profileImageUrl:
                'https://images.unsplash.com/photo-1507003211169-e6955a6d00ad?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60',
            name: 'Esmael Gutema',
            content: 'highlighted a post for you to check out.',
            time: 'Nov 3 at 11:18 PM',
            iconData: Icons.chat_bubble,
            iconColor: Colors.white,
            iconBgColor: Colors.green,
            isUnread: true,
          ),
          _buildNotificationItem(
            profileImageUrl:
                'https://images.unsplash.com/photo-1507003211169-e6955a6d00ad?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60',
            name: 'Esmael Gutema',
            content: 'mentioned you and other followers in a comment',
            time: 'Nov 3 at 11:18 PM',
            iconData: Icons.reply,
            iconColor: Colors.white,
            iconBgColor: Colors.green,
            isUnread: true,
          ),
          _buildNotificationItem(
            profileImageUrl:
                'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60',
            name: 'Daniel Abebe',
            content:
                'invited you to follow Hope Distance Education Academy - Welkite.',
            time: 'Nov 3 at 11:55 PM',
            iconData: Icons.groups, // Group icon
            iconColor: Colors.white,
            iconBgColor: Colors.deepOrange,
            isUnread: true,
          ),
          _buildNotificationItem(
            profileImageUrl:
                'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60',
            name: 'Mihret Abebe',
            content: 'invited you to follow Hope Education Center.',
            time: 'Nov 4 at 12:14 AM',
            iconData: Icons.groups,
            iconColor: Colors.white,
            iconBgColor: Colors.deepOrange,
            isUnread: true,
          ),
          _buildNotificationItem(
            profileImageUrl:
                'https://images.unsplash.com/photo-1534528736681-344cd2324f60?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=60',
            name: 'Elham Alwe',
            content: 'also commented on MK Meki Salvatore\'s photo.',
            time: 'Nov 5 at 3:48 PM',
            iconData: Icons.message,
            iconColor: Colors.white,
            iconBgColor: Colors.green,
            isUnread: true,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem({
    required String profileImageUrl,
    required String name,
    required String content,
    required String time,
    required IconData iconData,
    required Color iconColor,
    required Color iconBgColor,
    bool isUnread = false,
  }) {
    return Container(
      color: isUnread
          ? const Color(0xFFE7F3FF)
          : Colors.white, // Light blue for unread
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Stack for Profile Picture + Notification Icon
          SizedBox(
            width: 70,
            height: 70,
            child: Stack(
              children: [
                // Profile Picture
                Positioned(
                  left: 0,
                  top: 0,
                  child: CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(profileImageUrl),
                  ),
                ),
                // Notification Icon Badge
                Positioned(
                  right: 4,
                  bottom: 4,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: iconBgColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Icon(iconData, size: 14, color: iconColor),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8.0),
          // Content Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 4), // Slight offset alignment
                RichText(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.2,
                    ),
                    children: [
                      TextSpan(
                        text: '$name ',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: content),
                    ],
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  time,
                  style: TextStyle(fontSize: 13.0, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          // Three dots menu
          IconButton(
            icon: const Icon(Icons.more_horiz),
            color: Colors.grey[700],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
