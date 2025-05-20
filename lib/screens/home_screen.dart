import 'package:flutter/material.dart';
import '../models/playlist.dart';
import '../widgets/playlist_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: const Text(
                'Listen Now',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.person, color: Colors.grey[600]),
                ),
                const SizedBox(width: 16),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top Picks',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: mockPlaylists.length,
                        itemBuilder: (context, index) {
                          return PlaylistTile(
                            playlist: mockPlaylists[index],
                            onTap: () {
                              // Navigate to playlist detail screen
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Recently Played',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: mockPlaylists.length,
                        itemBuilder: (context, index) {
                          return PlaylistTile(
                            playlist: mockPlaylists[index],
                            onTap: () {
                              // Navigate to playlist detail screen
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Made For You',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: mockPlaylists.length,
                        itemBuilder: (context, index) {
                          return PlaylistTile(
                            playlist: mockPlaylists[index],
                            onTap: () {
                              // Navigate to playlist detail screen
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}