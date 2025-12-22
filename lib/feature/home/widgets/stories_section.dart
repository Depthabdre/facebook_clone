import 'package:flutter/material.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          final bool isAddStory = index == 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    isAddStory
                        ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaDjPRinzWhEU__bEFWRTshwviAxNvcMZ4lw&' // Your profile
                        : 'https://picsum.photos/200/300?random=$index', // Friend story
                    height: double.infinity,
                    width: 110.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 110.0,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black26],
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                Positioned(
                  top: 8.0,
                  left: 8.0,
                  child: isAddStory
                      ? Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Color(0xFF1877F2),
                          ),
                        )
                      : CircleAvatar(
                          radius: 20,
                          backgroundColor: const Color(0xFF1877F2),
                          child: CircleAvatar(
                            radius: 17.0,
                            backgroundImage: NetworkImage(
                              'https://i.pravatar.cc/150?u=$index',
                            ),
                          ),
                        ),
                ),
                Positioned(
                  bottom: 8.0,
                  left: 8.0,
                  right: 8.0,
                  child: Text(
                    isAddStory ? 'Add to Story' : 'User $index',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
