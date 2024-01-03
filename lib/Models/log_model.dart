import 'dart:convert';

class LogModel {
  final String identification;
  final String date;
  final String identificationOfModifire;
  final String roleOfModifire;
  final String identificationOfModifiedUserID;
  final String roleOfModifiedUserID;

  String? reason;
  String? whatChanged;
  LogModel({
    required this.identification,
    required this.date,
    required this.identificationOfModifire,
    required this.roleOfModifire,
    required this.identificationOfModifiedUserID,
    required this.roleOfModifiedUserID,
    reason,
    whatChanged,
  })  : reason = reason ?? '',
        whatChanged = whatChanged ?? "";

  LogModel copyWith({
    String? identification,
    String? date,
    String? identificationOfModifire,
    String? roleOfModifire,
    String? identificationOfModifiedUserID,
    String? roleOfModifiedUserID,
    String? reason,
    String? whatChanged,
  }) {
    return LogModel(
      identification: identification ?? this.identification,
      date: date ?? this.date,
      identificationOfModifire:
          identificationOfModifire ?? this.identificationOfModifire,
      roleOfModifire: roleOfModifire ?? this.roleOfModifire,
      identificationOfModifiedUserID:
          identificationOfModifiedUserID ?? this.identificationOfModifiedUserID,
      roleOfModifiedUserID: roleOfModifiedUserID ?? this.roleOfModifiedUserID,
      reason: reason ?? this.reason,
      whatChanged: whatChanged ?? this.whatChanged,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'identification': identification});
    result.addAll({'date': date});
    result.addAll({'identificationOfModifire': identificationOfModifire});
    result.addAll({'roleOfModifire': roleOfModifire});
    result.addAll(
        {'identificationOfModifiedUserID': identificationOfModifiedUserID});
    result.addAll({'roleOfModifiedUserID': roleOfModifiedUserID});
    if (reason != null) {
      result.addAll({'reason': reason});
    }
    if (whatChanged != null) {
      result.addAll({'whatChanged': whatChanged});
    }

    return result;
  }

  factory LogModel.fromMap(Map<String, dynamic> map) {
    return LogModel(
      identification: map['identification'] ?? '',
      date: map['date'] ?? '',
      identificationOfModifire: map['identificationOfModifire'] ?? '',
      roleOfModifire: map['roleOfModifire'] ?? '',
      identificationOfModifiedUserID:
          map['identificationOfModifiedUserID'] ?? '',
      roleOfModifiedUserID: map['roleOfModifiedUserID'] ?? '',
      reason: map['reason'],
      whatChanged: map['whatChanged'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LogModel.fromJson(String source) =>
      LogModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LogModel(identification: $identification, date: $date, identificationOfModifire: $identificationOfModifire, roleOfModifire: $roleOfModifire, identificationOfModifiedUserID: $identificationOfModifiedUserID, roleOfModifiedUserID: $roleOfModifiedUserID, reason: $reason, whatChanged: $whatChanged)';
  }
}

void main(List<String> args) {
  LogModel x = LogModel(
      identification: 'identification',
      date: 'date',
      identificationOfModifire: 'identificationOfModifire',
      roleOfModifire: 'roleOfModifire',
      identificationOfModifiedUserID: 'identificationOfModifiedUserID',
      roleOfModifiedUserID: 'roleOfModifiedUserID');

  print(x.toJson());
}
