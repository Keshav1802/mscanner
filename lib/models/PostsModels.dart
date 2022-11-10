class PostsModels {
  String? status;
  String? message;
  List<Data>? data;

  PostsModels({this.status, this.message, this.data});

  PostsModels.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? location;
  String? description;
  String? startDate;
  String? startTime;
  String? endDate;
  String? endTime;
  String? posterId;
  String? cover;
  String? createdBy;
  String? createdById;
  List<AttedDetails>? attedDetails;

  Data(
      {this.id,
        this.name,
        this.location,
        this.description,
        this.startDate,
        this.startTime,
        this.endDate,
        this.endTime,
        this.posterId,
        this.cover,
        this.createdBy,
        this.createdById,
        this.attedDetails});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    description = json['description'];
    startDate = json['start_date'];
    startTime = json['start_time'];
    endDate = json['end_date'];
    endTime = json['end_time'];
    posterId = json['poster_id'];
    cover = json['cover'];
    createdBy = json['created_by'];
    createdById = json['created_by_id'];
    if (json['atted_details'] != null) {
      attedDetails = <AttedDetails>[];
      json['atted_details'].forEach((v) {
        attedDetails!.add(new AttedDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['location'] = this.location;
    data['description'] = this.description;
    data['start_date'] = this.startDate;
    data['start_time'] = this.startTime;
    data['end_date'] = this.endDate;
    data['end_time'] = this.endTime;
    data['poster_id'] = this.posterId;
    data['cover'] = this.cover;
    data['created_by'] = this.createdBy;
    data['created_by_id'] = this.createdById;
    if (this.attedDetails != null) {
      data['atted_details'] =
          this.attedDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AttedDetails {
  String? id;
  String? userId;
  String? qrCode;
  String? qrDetails;
  String? eventId;
  String? userName;
  String? eventStartDate;
  String? eventEndDate;
  String? startTime;
  String? endTime;
  String? location;
  String? image;
  String? createOn;
  String? status;
  String? isAttend;

  AttedDetails(
      {this.id,
        this.userId,
        this.qrCode,
        this.qrDetails,
        this.eventId,
        this.userName,
        this.eventStartDate,
        this.eventEndDate,
        this.startTime,
        this.endTime,
        this.location,
        this.image,
        this.createOn,
        this.status,
        this.isAttend});

  AttedDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    qrCode = json['qr_code'];
    qrDetails = json['qr_details'];
    eventId = json['event_id'];
    userName = json['user_name'];
    eventStartDate = json['event_start_date'];
    eventEndDate = json['event_end_date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    location = json['location'];
    image = json['image'];
    createOn = json['create_on'];
    status = json['status'];
    isAttend = json['is_attend'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['qr_code'] = this.qrCode;
    data['qr_details'] = this.qrDetails;
    data['event_id'] = this.eventId;
    data['user_name'] = this.userName;
    data['event_start_date'] = this.eventStartDate;
    data['event_end_date'] = this.eventEndDate;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['location'] = this.location;
    data['image'] = this.image;
    data['create_on'] = this.createOn;
    data['status'] = this.status;
    data['is_attend'] = this.isAttend;
    return data;
  }
}