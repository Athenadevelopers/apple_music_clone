import 'package:flutter/material.dart';
import '../models/playlist.dart';
import '../models/song.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Library',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.sort),
                        onPressed: () {
                          // Show sorting options
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          // Add new playlist
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.pink,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: 'Playlists'),
                Tab(text: 'Artists'),
                Tab(text: 'Albums'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildPlaylistsTab(),
                  _buildArtistsTab(),
                  _buildAlbumsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaylistsTab() {
    return ListView.builder(
      itemCount: mockPlaylists.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              mockPlaylists[index].coverUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[300],
                  child: Icon(Icons.music_note, color: Colors.grey[600]),
                );
              },
            ),
          ),
          title: Text(mockPlaylists[index].name),
          subtitle: Text('${mockPlaylists[index].songs.length} songs'),
          onTap: () {
            // Navigate to playlist detail
          },
        );
      },
    );
  }

  Widget _buildArtistsTab() {
    // Extract unique artists from mockSongs
    List<String> artists = mockSongs.map((song) => song.artist).toSet().toList();

    return ListView.builder(
      itemCount: artists.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(Icons.person, color: Colors.grey[600]),
          ),
          title: Text(artists[index]),
          onTap: () {
            // Navigate to artist detail
          },
        );
      },
    );
  }

  Widget _buildAlbumsTab() {
    // Extract unique albums from mockSongs
    List<Map<String, dynamic>> albums = [];
    for (var song in mockSongs) {
      if (!albums.any((album) => album['name'] == song.album)) {
        albums.add({
          'name': song.album,
          'artist': song.artist,
          'coverUrl': song.coverUrl,
        });
      }
    }

    return ListView.builder(
      itemCount: albums.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              albums[index]['coverUrl'],
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[300],
                  child: Icon(Icons.music_note, color: Colors.grey[600]),
                );
              },
            ),
          ),
          title: Text(albums[index]['name']),
          subtitle: Text(albums[index]['artist']),
          onTap: () {
            // Navigate to album detail
          },
        );
      },
    );
  }
}