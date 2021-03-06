import 'package:nitusue/utils/models/status.dart';
import 'package:nitusue/utils/models/venue.dart';

class Fixture {
  int id;
  String date;
  String referee;
  Status status;
  // Venue venue;
  Fixture(this.id, this.date, this.referee, this.status);

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(
        json['id'], json['date'], json['referee'], Status.fromJson(json['status']));
  }
}
