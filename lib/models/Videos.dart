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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Videos type in your schema. */
@immutable
class Videos extends Model {
  static const classType = const _VideosModelType();
  final String id;
  final String? _videoName;
  final String? _coursedetailID;
  final String? _videoUrl;
  final String? _videoImage;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get videoName {
    return _videoName;
  }
  
  String get coursedetailID {
    try {
      return _coursedetailID!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get videoUrl {
    return _videoUrl;
  }
  
  String? get videoImage {
    return _videoImage;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Videos._internal({required this.id, videoName, required coursedetailID, videoUrl, videoImage, createdAt, updatedAt}): _videoName = videoName, _coursedetailID = coursedetailID, _videoUrl = videoUrl, _videoImage = videoImage, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Videos({String? id, String? videoName, required String coursedetailID, String? videoUrl, String? videoImage}) {
    return Videos._internal(
      id: id == null ? UUID.getUUID() : id,
      videoName: videoName,
      coursedetailID: coursedetailID,
      videoUrl: videoUrl,
      videoImage: videoImage);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Videos &&
      id == other.id &&
      _videoName == other._videoName &&
      _coursedetailID == other._coursedetailID &&
      _videoUrl == other._videoUrl &&
      _videoImage == other._videoImage;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Videos {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("videoName=" + "$_videoName" + ", ");
    buffer.write("coursedetailID=" + "$_coursedetailID" + ", ");
    buffer.write("videoUrl=" + "$_videoUrl" + ", ");
    buffer.write("videoImage=" + "$_videoImage" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Videos copyWith({String? id, String? videoName, String? coursedetailID, String? videoUrl, String? videoImage}) {
    return Videos._internal(
      id: id ?? this.id,
      videoName: videoName ?? this.videoName,
      coursedetailID: coursedetailID ?? this.coursedetailID,
      videoUrl: videoUrl ?? this.videoUrl,
      videoImage: videoImage ?? this.videoImage);
  }
  
  Videos.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _videoName = json['videoName'],
      _coursedetailID = json['coursedetailID'],
      _videoUrl = json['videoUrl'],
      _videoImage = json['videoImage'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'videoName': _videoName, 'coursedetailID': _coursedetailID, 'videoUrl': _videoUrl, 'videoImage': _videoImage, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField VIDEONAME = QueryField(fieldName: "videoName");
  static final QueryField COURSEDETAILID = QueryField(fieldName: "coursedetailID");
  static final QueryField VIDEOURL = QueryField(fieldName: "videoUrl");
  static final QueryField VIDEOIMAGE = QueryField(fieldName: "videoImage");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Videos";
    modelSchemaDefinition.pluralName = "Videos";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ]),
      AuthRule(
        authStrategy: AuthStrategy.PRIVATE,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ]),
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["coursedetailID"], name: "byCourseDetail")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Videos.VIDEONAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Videos.COURSEDETAILID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Videos.VIDEOURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Videos.VIDEOIMAGE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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

class _VideosModelType extends ModelType<Videos> {
  const _VideosModelType();
  
  @override
  Videos fromJson(Map<String, dynamic> jsonData) {
    return Videos.fromJson(jsonData);
  }
}