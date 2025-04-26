class ApiEndpoints {
  // Auth endpoints
  static String get me => 'me';

  // Album endpoints
  static String get albums => 'albums';
  static String albumTracks(String albumId) => 'albums/$albumId/tracks';
  static String album(String albumId) => 'albums/$albumId';
  static String get newReleases => 'browse/new-releases';
  static String get savedAlbums => 'me/albums';

  // Playlist endpoints
  static String playlist(String playlistId) => 'playlists/$playlistId';
  static String playlistTracks(String playlistId) =>
      'playlists/$playlistId/tracks';
  static String userPlaylists(String userId) => 'users/$userId/playlists';
  static String createPlaylist(String userId) => 'users/$userId/playlists';
  static String categoryPlaylists(String categoryId) =>
      'browse/categories/$categoryId/playlists';

  // Track endpoints
  static String severalTracks(String ids) => 'tracks?ids=$ids';
  static String savedTracks() => 'me/tracks';
  static String track(String id) => 'tracks/$id';

  // Artist endpoints
  static String artist(String artistId) => 'artists/$artistId';
  static String artistAlbums(String artistId) => 'artists/$artistId/albums';
  static String artistTopTracks(String artistId) =>
      'artists/$artistId/top-tracks';
}
