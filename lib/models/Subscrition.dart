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


/** This is an auto generated class representing the Subscrition type in your schema. */
@immutable
class Subscrition extends Model {
  static const classType = const _SubscritionModelType();
  final String id;
  final String? _subscritionName;
  final String? _subDescription;
  final String? _amount;
  final String? _validity;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get subscritionName {
    return _subscritionName;
  }
  
  String? get subDescription {
    return _subDescription;
  }
  
  String? get amount {
    return _amount;
  }
  
  String? get validity {
    return _validity;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Subscrition._internal({required this.id, subscritionName, subDescription, amount, validity, createdAt, updatedAt}): _subscritionName = subscritionName, _subDescription = subDescription, _amount = amount, _validity = validity, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Subscrition({String? id, String? subscritionName, String? subDescription, String? amount, String? validity}) {
    return Subscrition._internal(
      id: id == null ? UUID.getUUID() : id,
      subscritionName: subscritionName,
      subDescription: subDescription,
      amount: amount,
      validity: validity);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Subscrition &&
      id == other.id &&
      _subscritionName == other._subscritionName &&
      _subDescription == other._subDescription &&
      _amount == other._amount &&
      _validity == other._validity;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Subscrition {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("subscritionName=" + "$_subscritionName" + ", ");
    buffer.write("subDescription=" + "$_subDescription" + ", ");
    buffer.write("amount=" + "$_amount" + ", ");
    buffer.write("validity=" + "$_validity" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Subscrition copyWith({String? id, String? subscritionName, String? subDescription, String? amount, String? validity}) {
    return Subscrition._internal(
      id: id ?? this.id,
      subscritionName: subscritionName ?? this.subscritionName,
      subDescription: subDescription ?? this.subDescription,
      amount: amount ?? this.amount,
      validity: validity ?? this.validity);
  }
  
  Subscrition.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _subscritionName = json['subscritionName'],
      _subDescription = json['subDescription'],
      _amount = json['amount'],
      _validity = json['validity'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'subscritionName': _subscritionName, 'subDescription': _subDescription, 'amount': _amount, 'validity': _validity, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField SUBSCRITIONNAME = QueryField(fieldName: "subscritionName");
  static final QueryField SUBDESCRIPTION = QueryField(fieldName: "subDescription");
  static final QueryField AMOUNT = QueryField(fieldName: "amount");
  static final QueryField VALIDITY = QueryField(fieldName: "validity");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Subscrition";
    modelSchemaDefinition.pluralName = "Subscritions";
    
    modelSchemaDefinition.authRules = [
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
      key: Subscrition.SUBSCRITIONNAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Subscrition.SUBDESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Subscrition.AMOUNT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Subscrition.VALIDITY,
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

class _SubscritionModelType extends ModelType<Subscrition> {
  const _SubscritionModelType();
  
  @override
  Subscrition fromJson(Map<String, dynamic> jsonData) {
    return Subscrition.fromJson(jsonData);
  }
}