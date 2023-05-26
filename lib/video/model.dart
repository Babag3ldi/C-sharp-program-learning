class VideoModel{
  String title;
  String video;

  VideoModel({
    required this.title,
    required this.video,
  });
}

List<VideoModel> listVideo = [
  VideoModel(title: 'Introduction', video: 'assets/videos/1.mp4'),
  VideoModel(title: 'What is C#', video: 'assets/videos/2.mp4'),
  VideoModel(title: 'What is C# use', video: 'assets/videos/3.mp4'),
  VideoModel(title: 'Characteristi of C#', video: 'assets/videos/4.mp4'),
];