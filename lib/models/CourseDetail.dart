/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the CourseDetail type in your schema. */
@immutable
class CourseDetail extends Model {
  static const classType = const _CourseDetailModelType();
  final String id;
  final String? _courseName;
  final String? _description;
  final double? _rating;
  final String? _outline;
  final TemporalTime? _duration;
  final String? _videoId;
  final List<Videos>? _VideosCoursedetail;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get courseName {
    return _courseName;
  }
  
  String? get description {
    return _description;
  }
  
  double? get rating {
    return _rating;
  }
  
  String? get outline {
    return _outline;
  }
  
  TemporalTime? get duration {
    return _duration;
  }
  
  String? get videoId {
    return _videoId;
  }
  
  List<Videos>? get VideosCoursedetail {
    return _VideosCoursedetail;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const CourseDetail._internal({required this.id, courseName, description, rating, outline, duration, videoId, VideosCoursedetail, createdAt, updatedAt}): _courseName = courseName, _description = description, _rating = rating, _outline = outline, _duration = duration, _videoId = videoId, _VideosCoursedetail = VideosCoursedetail, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CourseDetail({String? id, String? courseName, String? description, double? rating, String? outline, TemporalTime? duration, String? videoId, List<Videos>? VideosCoursedetail}) {
    return CourseDetail._internal(
      id: id == null ? UUID.getUUID() : id,
      courseName: courseName,
      description: description,
      rating: rating,
      outline: outline,
      duration: duration,
      videoId: videoId,
      VideosCoursedetail: VideosCoursedetail != null ? List<Videos>.unmodifiable(VideosCoursedetail) : VideosCoursedetail);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourseDetail &&
      id == other.id &&
      _courseName == other._courseName &&
      _description == other._description &&
      _rating == other._rating &&
      _outline == other._outline &&
      _duration == other._duration &&
      _videoId == other._videoId &&
      DeepCollectionEquality().equals(_VideosCoursedetail, other._VideosCoursedetail);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CourseDetail {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("courseName=" + "$_courseName" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("outline=" + "$_outline" + ", ");
    buffer.write("duration=" + (_duration != null ? _duration!.format() : "null") + ", ");
    buffer.write("videoId=" + "$_videoId" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CourseDetail copyWith({String? id, String? courseName, String? description, double? rating, String? outline, TemporalTime? duration, String? videoId, List<Videos>? VideosCoursedetail}) {
    return CourseDetail._internal(
      id: id ?? this.id,
      courseName: courseName ?? this.courseName,
      description: description ?? this.description,
      rating: rating ?? this.rating,
      outline: outline ?? this.outline,
      duration: duration ?? this.duration,
      videoId: videoId ?? this.videoId,
      VideosCoursedetail: VideosCoursedetail ?? this.VideosCoursedetail);
  }
  
  CourseDetail.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _courseName = json['courseName'],
      _description = json['description'],
      _rating = (json['rating'] as num?)?.toDouble(),
      _outline = json['outline'],
      _duration = json['duration'] != null ? TemporalTime.fromString(json['duration']) : null,
      _videoId = json['videoId'],
      _VideosCoursedetail = json['VideosCoursedetail'] is List
        ? (json['VideosCoursedetail'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Videos.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'courseName': _courseName, 'description': _description, 'rating': _rating, 'outline': _outline, 'duration': _duration?.format(), 'videoId': _videoId, 'VideosCoursedetail': _VideosCoursedetail?.map((Videos? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField COURSENAME = QueryField(fieldName: "courseName");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField OUTLINE = QueryField(fieldName: "outline");
  static final QueryField DURATION = QueryField(fieldName: "duration");
  static final QueryField VIDEOID = QueryField(fieldName: "videoId");
  static final QueryField VIDEOSCOURSEDETAIL = QueryField(
    fieldName: "VideosCoursedetail",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Videos).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CourseDetail";
    modelSchemaDefinition.pluralName = "CourseDetails";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CourseDetail.COURSENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CourseDetail.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CourseDetail.RATING,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CourseDetail.OUTLINE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CourseDetail.DURATION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CourseDetail.VIDEOID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: CourseDetail.VIDEOSCOURSEDETAIL,
      isRequired: false,
      ofModelName: (Videos).toString(),
      associatedKey: Videos.COURSEDETAILID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _CourseDetailModelType extends ModelType<CourseDetail> {
  const _CourseDetailModelType();
  
  @override
  CourseDetail fromJson(Map<String, dynamic> jsonData) {
    return CourseDetail.fromJson(jsonData);
  }
}