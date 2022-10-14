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


/** This is an auto generated class representing the Categories type in your schema. */
@immutable
class Categories extends Model {
  static const classType = const _CategoriesModelType();
  final String id;
  final String? _categoryName;
  final String? _description;
  final String? _icon;
  final List<CourseDetail>? _CategoriesCourseDetails;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get categoryName {
    return _categoryName;
  }
  
  String? get description {
    return _description;
  }
  
  String? get icon {
    return _icon;
  }
  
  List<CourseDetail>? get CategoriesCourseDetails {
    return _CategoriesCourseDetails;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Categories._internal({required this.id, categoryName, description, icon, CategoriesCourseDetails, createdAt, updatedAt}): _categoryName = categoryName, _description = description, _icon = icon, _CategoriesCourseDetails = CategoriesCourseDetails, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Categories({String? id, String? categoryName, String? description, String? icon, List<CourseDetail>? CategoriesCourseDetails}) {
    return Categories._internal(
      id: id == null ? UUID.getUUID() : id,
      categoryName: categoryName,
      description: description,
      icon: icon,
      CategoriesCourseDetails: CategoriesCourseDetails != null ? List<CourseDetail>.unmodifiable(CategoriesCourseDetails) : CategoriesCourseDetails);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Categories &&
      id == other.id &&
      _categoryName == other._categoryName &&
      _description == other._description &&
      _icon == other._icon &&
      DeepCollectionEquality().equals(_CategoriesCourseDetails, other._CategoriesCourseDetails);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Categories {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("categoryName=" + "$_categoryName" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("icon=" + "$_icon" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Categories copyWith({String? id, String? categoryName, String? description, String? icon, List<CourseDetail>? CategoriesCourseDetails}) {
    return Categories._internal(
      id: id ?? this.id,
      categoryName: categoryName ?? this.categoryName,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      CategoriesCourseDetails: CategoriesCourseDetails ?? this.CategoriesCourseDetails);
  }
  
  Categories.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _categoryName = json['categoryName'],
      _description = json['description'],
      _icon = json['icon'],
      _CategoriesCourseDetails = json['CategoriesCourseDetails'] is List
        ? (json['CategoriesCourseDetails'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => CourseDetail.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'categoryName': _categoryName, 'description': _description, 'icon': _icon, 'CategoriesCourseDetails': _CategoriesCourseDetails?.map((CourseDetail? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CATEGORYNAME = QueryField(fieldName: "categoryName");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField ICON = QueryField(fieldName: "icon");
  static final QueryField CATEGORIESCOURSEDETAILS = QueryField(
    fieldName: "CategoriesCourseDetails",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (CourseDetail).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Categories";
    modelSchemaDefinition.pluralName = "Categories";
    
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
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: AuthRuleProvider.USERPOOLS,
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
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Categories.CATEGORYNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Categories.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Categories.ICON,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Categories.CATEGORIESCOURSEDETAILS,
      isRequired: false,
      ofModelName: (CourseDetail).toString(),
      associatedKey: CourseDetail.CATEGORIESID
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

class _CategoriesModelType extends ModelType<Categories> {
  const _CategoriesModelType();
  
  @override
  Categories fromJson(Map<String, dynamic> jsonData) {
    return Categories.fromJson(jsonData);
  }
}