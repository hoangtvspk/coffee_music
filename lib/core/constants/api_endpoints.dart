class ApiEndpoints {
  // Auth endpoints
  static String get me => 'me';

  // Album endpoints
  static String get albums => 'albums';
  static String albumTracks(String albumId) => 'albums/$albumId/tracks';
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
  static String severalTracks(String ids) => 'tracks?ids=$ids';
}
