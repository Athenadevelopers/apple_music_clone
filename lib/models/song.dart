class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String coverUrl;
  final String audioUrl;
  final Duration duration;

  Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.coverUrl,
    required this.audioUrl,
    required this.duration,
  });
}

// Mock data for songs
List<Song> mockSongs = [
  Song(
    id: '1',
    title: 'Blinding Lights',
    artist: 'The Weeknd',
    album: 'After Hours',
    coverUrl: 'assets/images/after_hours.jpg',
    audioUrl: 'assets/audio/blinding_lights.mp3',
    duration: const Duration(minutes: 3, seconds: 20),
  ),
  Song(
    id: '2',
    title: 'Dynamite',
    artist: 'BTS',
    album: 'BE',
    coverUrl: 'assets/images/be.jpg',
    audioUrl: 'assets/audio/dynamite.mp3',
    duration: const Duration(minutes: 3, seconds: 43),
  ),
  Song(
    id: '3',
    title: 'Watermelon Sugar',
    artist: 'Harry Styles',
    album: 'Fine Line',
    coverUrl: 'assets/images/fine_line.jpg',
    audioUrl: 'assets/audio/watermelon_sugar.mp3',
    duration: const Duration(minutes: 2, seconds: 54),
  ),
  Song(
    id: '4',
    title: 'positions',
    artist: 'Ariana Grande',
    album: 'Positions',
    coverUrl: 'assets/images/positions.jpg',
    audioUrl: 'assets/audio/positions.mp3',
    duration: const Duration(minutes: 2, seconds: 52),
  ),
  Song(
    id: '5',
    title: 'Levitating',
    artist: 'Dua Lipa',
    album: 'Future Nostalgia',
    coverUrl: 'assets/images/future_nostalgia.jpg',
    audioUrl: 'assets/audio/levitating.mp3',
    duration: const Duration(minutes: 3, seconds: 23),
  ),
];