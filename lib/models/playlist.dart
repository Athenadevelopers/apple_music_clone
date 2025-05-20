import 'song.dart';

class Playlist {
  final String id;
  final String name;
  final String description;
  final String coverUrl;
  final List<Song> songs;

  Playlist({
    required this.id,
    required this.name,
    required this.description,
    required this.coverUrl,
    required this.songs,
  });
}

// Mock data for playlists
List<Playlist> mockPlaylists = [
  Playlist(
    id: '1',
    name: 'Today\'s Hits',
    description: 'The biggest hits right now.',
    coverUrl: 'assets/images/todays_hits.jpg',
    songs: mockSongs.sublist(0, 3),
  ),
  Playlist(
    id: '2',
    name: 'Chill',
    description: 'Kick back to the best new and recent chill hits.',
    coverUrl: 'assets/images/chill.jpg',
    songs: mockSongs.sublist(2, 5),
  ),
  Playlist(
    id: '3',
    name: 'Pop Essentials',
    description: 'Essential pop hits from the last decade.',
    coverUrl: 'assets/images/pop_essentials.jpg',
    songs: mockSongs.sublist(1, 4),
  ),
];
