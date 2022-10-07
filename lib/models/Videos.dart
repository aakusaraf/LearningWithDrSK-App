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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Videos type in your schema. */
@immutable
class Videos extends Model {
  static const classType = const _VideosModelType();
  final String id;
  final String? _courseName;
  final String? _categoryId;
  final Categories? _CategoriesVideo;
  final String? _coursedetailID;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _videosCategoriesVideoId;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get courseName {
    return _courseName;
  }
  
  String? get categoryId {
    return _categoryId;
  }
  
  Categories? get CategoriesVideo {
    return _CategoriesVideo;
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
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get videosCategoriesVideoId {
    return _videosCategoriesVideoId;
  }
  
  const Videos._internal({required this.id, courseName, categoryId, CategoriesVideo, required coursedetailID, createdAt, updatedAt, videosCategoriesVideoId}): _courseName = courseName, _categoryId = categoryId, _CategoriesVideo = CategoriesVideo, _coursedetailID = coursedetailID, _createdAt = createdAt, _updatedAt = updatedAt, _videosCategoriesVideoId = videosCategoriesVideoId;
  
  factory Videos({String? id, String? courseName, String? categoryId, Categories? CategoriesVideo, required String coursedetailID, String? videosCategoriesVideoId}) {
    return Videos._internal(
      id: id == null ? UUID.getUUID() : id,
      courseName: courseName,
      categoryId: categoryId,
      CategoriesVideo: CategoriesVideo,
      coursedetailID: coursedetailID,
      videosCategoriesVideoId: videosCategoriesVideoId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Videos &&
      id == other.id &&
      _courseName == other._courseName &&
      _categoryId == other._categoryId &&
      _CategoriesVideo == other._CategoriesVideo &&
      _coursedetailID == other._coursedetailID &&
      _videosCategoriesVideoId == other._videosCategoriesVideoId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Videos {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("courseName=" + "$_courseName" + ", ");
    buffer.write("categoryId=" + "$_categoryId" + ", ");
    buffer.write("coursedetailID=" + "$_coursedetailID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("videosCategoriesVideoId=" + "$_videosCategoriesVideoId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Videos copyWith({String? id, String? courseName, String? categoryId, Categories? CategoriesVideo, String? coursedetailID, String? videosCategoriesVideoId}) {
    return Videos._internal(
      id: id ?? this.id,
      courseName: courseName ?? this.courseName,
      categoryId: categoryId ?? this.categoryId,
      CategoriesVideo: CategoriesVideo ?? this.CategoriesVideo,
      coursedetailID: coursedetailID ?? this.coursedetailID,
      videosCategoriesVideoId: videosCategoriesVideoId ?? this.videosCategoriesVideoId);
  }
  
  Videos.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _courseName = json['courseName'],
      _categoryId = json['categoryId'],
      _CategoriesVideo = json['CategoriesVideo']?['serializedData'] != null
        ? Categories.fromJson(new Map<String, dynamic>.from(json['CategoriesVideo']['serializedData']))
        : null,
      _coursedetailID = json['coursedetailID'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _videosCategoriesVideoId = json['videosCategoriesVideoId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'courseName': _courseName, 'categoryId': _categoryId, 'CategoriesVideo': _CategoriesVideo?.toJson(), 'coursedetailID': _coursedetailID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'videosCategoriesVideoId': _videosCategoriesVideoId
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField COURSENAME = QueryField(fieldName: "courseName");
  static final QueryField CATEGORYID = QueryField(fieldName: "categoryId");
  static final QueryField CATEGORIESVIDEO = QueryField(
    fieldName: "CategoriesVideo",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Categories).toString()));
  static final QueryField COURSEDETAILID = QueryField(fieldName: "coursedetailID");
  static final QueryField VIDEOSCATEGORIESVIDEOID = QueryField(fieldName: "videosCategoriesVideoId");
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
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Videos.COURSENAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Videos.CATEGORYID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Videos.CATEGORIESVIDEO,
      isRequired: false,
      ofModelName: (Categories).toString(),
      associatedKey: Categories.ID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Videos.COURSEDETAILID,
      isRequired: true,
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Videos.VIDEOSCATEGORIESVIDEOID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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