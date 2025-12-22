import 'package:facebook_clone/feature/home/widgets/circle_button.dart';
import 'package:facebook_clone/feature/home/widgets/create_post_container.dart';
import 'package:facebook_clone/feature/home/widgets/post_card.dart';
import 'package:facebook_clone/feature/home/widgets/stories_section.dart';
import 'package:flutter/material.dart';

class FacebookHomePage extends StatefulWidget {
  const FacebookHomePage({super.key});

  @override
  State<FacebookHomePage> createState() => _FacebookHomePageState();
}

class _FacebookHomePageState extends State<FacebookHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // 6 Tabs: Home, Video, Friends, Market, Notifications, Menu
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFFC9CCD1,
      ), // Grey background for separators
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: const Text(
                'facebook',
                style: TextStyle(
                  color: Color(0xFF1877F2),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                ),
              ),
              centerTitle: false,
              floating: true,
              snap: true,
              actions: [
                CircleButton(
                  icon: Icons.search,
                  iconSize: 24.0,
                  onPressed: () {},
                ),
                CircleButton(
                  icon: Icons.message,
                  iconSize: 24.0,
                  onPressed: () {},
                ), // Using message icon roughly matches messenger
              ],
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: const Color(0xFF1877F2),
                labelColor: const Color(0xFF1877F2),
                unselectedLabelColor: Colors.grey[600],
                tabs: const [
                  Tab(icon: Icon(Icons.home, size: 28.0)),
                  Tab(icon: Icon(Icons.ondemand_video, size: 28.0)),
                  Tab(icon: Icon(Icons.people_outline, size: 28.0)),
                  Tab(icon: Icon(Icons.storefront_outlined, size: 28.0)),
                  Tab(icon: Icon(Icons.notifications_none, size: 28.0)),
                  Tab(icon: Icon(Icons.menu, size: 28.0)),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            // 1. HOME FEED
            const _HomeFeedTab(),
            // 2. Others (Placeholders)
            const Center(child: Text("Video")),
            const Center(child: Text("Friends")),
            const Center(child: Text("Marketplace")),
            const Center(child: Text("Notifications")),
            const Center(child: Text("Menu")),
          ],
        ),
      ),
    );
  }
}

class _HomeFeedTab extends StatelessWidget {
  const _HomeFeedTab();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Create Post
        const SliverToBoxAdapter(child: CreatePostContainer()),

        // Stories
        const SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          sliver: SliverToBoxAdapter(child: StoriesSection()),
        ),

        // Feed
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return PostCard(index: index);
          }, childCount: 10),
        ),
      ],
    );
  }
}
