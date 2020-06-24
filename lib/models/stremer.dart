class Streamer {

  final String name;
  final String numOfFollowers;
  final String imgPath;

  Streamer(
  {
    this.name,
    this.numOfFollowers,
    this.imgPath
}
      );

  static List<Streamer> streamerList = [];
}