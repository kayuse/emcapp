import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendcodeCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{"email":"$email"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendcode',
      apiUrl: 'https://emc.ecwa.app/api/user/login/send-code',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? successfulPath(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class VerifyCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? code = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "code": "$code"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verify',
      apiUrl: 'https://emc.ecwa.app/api/user/login/verify',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? userid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? useremail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? useravatar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.avatar''',
      ));
  static String? usercreatedat(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? userupdatedat(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.updated_at''',
      ));
  static String? userapitoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.api_token''',
      ));
  static String? userloginmode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.login_mode''',
      ));
  static String? udertoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static dynamic userappuser(dynamic response) => getJsonField(
        response,
        r'''$.app_user''',
      );
  static int? userappuserid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.app_user.id''',
      ));
  static String? usermobile(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.app_user.mobile''',
      ));
  static String? userdcc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.app_user.dcc''',
      ));
  static String? userlcb(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.app_user.lcb''',
      ));
  static String? userlanguage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.app_user.language''',
      ));
  static String? appusercreatedat(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.app_user.created_at''',
      ));
  static String? appuserupdatedat(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.app_user.updated_at''',
      ));
  static int? appuserhaslatestupdates(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.app_user.has_latest_updates''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
