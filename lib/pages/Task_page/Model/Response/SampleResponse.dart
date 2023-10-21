class SampleResponse {
  String? videoId;
  String? actorId;
  String? actorName;
  String? movieName;
  String? videoLink;

  SampleResponse(
      {this.videoId,
      this.actorId,
      this.actorName,
      this.movieName,
      this.videoLink});

  SampleResponse.fromJson(Map<String, dynamic> json) {
    videoId = json['video_id'];
    actorId = json['actor_id'];
    actorName = json['actor_name'];
    movieName = json['movie_name'];
    videoLink = json['video_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['video_id'] = this.videoId;
    data['actor_id'] = this.actorId;
    data['actor_name'] = this.actorName;
    data['movie_name'] = this.movieName;
    data['video_link'] = this.videoLink;
    return data;
  }
}
