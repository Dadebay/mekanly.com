import 'package:dio/dio.dart';
import 'package:mekanly/utils/api_provider.dart';

import '../../header.dart';
import '../../in_memory_token.dart';
import 'commet_model.dart';

class CommentService {
  CommentService()
      : _dio = Dio(
          BaseOptions(
            baseUrl: ApiProvider().baseUrl,
            headers: AppHttpHeaders.commonHeaders,
          ),
        )..interceptors.addAll([
            InterceptorsWrapper(
              onRequest: (options, handler) {
                if (InMemoryToken.instance.token != null) {
                  options.headers['Authorization'] =
                      'Bearer ${InMemoryToken.instance.token}';
                }
                return handler.next(options);
              },
            ),
            LogInterceptor(),
          ]);
  final Dio _dio;

  Future<List<Comment>> getComments({
    required String id,
    required String type,
    int limit = 10,
    int offset = 0,
  }) async {
    try {
      // ignore: inference_failure_on_function_invocation
      final response = await _dio.get(
        '/api/v2/comments/$offset/$limit',
        queryParameters: {'id': id, 'type': type},
      );

      // ignore: avoid_dynamic_calls
      return (response.data['data'] as List)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw Exception('Failed to load comments: ${e.message}');
    }
  }

  Future<Comment> addComment({
    required String comment,
    required String commentableId,
    required String commentType,
    String? parentId,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v2/comment',
        data: {
          'comment': comment,
          'commentable_id': commentableId,
          'comment_type': commentType,
          if (parentId != null) 'parent_id': parentId,
        },
      );
      // ignore: avoid_dynamic_calls
      return Comment.fromJson(response.data['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      throw Exception('Failed to add comment: ${e.message}');
    }
  }

  Future<Comment> updateComment({
    required String commentId,
    required String comment,
  }) async {
    try {
      final response = await _dio.put(
        '/api/v2/comment/$commentId/update',
        data: {'comment': comment},
        options: Options(
          validateStatus: (status) => status! < 500,
          headers: {
            'Authorization': 'Bearer ${InMemoryToken.instance.token}',
          },
        ),
      );

      if (response.statusCode == 403) {
        throw Exception('You do not have permission to edit this comment');
      }

      if (response.data == null || response.data['data'] == null) {
        throw Exception('Invalid response from server');
      }

      return Comment.fromJson(response.data['data'] as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 403) {
        throw Exception(
          'Permission denied: ${e.response?.data['message'] ?? 'You may not have rights to edit this comment'}',
        );
      }
      throw Exception('Failed to update comment: ${e.message}');
    }
  }

  Future<void> deleteComment(String commentId) async {
    try {
      await _dio.delete(
        '/api/v2/comment/$commentId/delete',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${InMemoryToken.instance.token}',
          },
          validateStatus: (status) => status! < 500,
        ),
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 403) {
        throw Exception(
          // ignore: lines_longer_than_80_chars, avoid_dynamic_calls
          'Permission denied: ${e.response?.data['message'] ?? 'You do not have rights to delete this comment'}',
        );
      }
      throw Exception('Failed to delete comment: ${e.message}');
    }
  }

  Future<void> toggleLike(String commentId) async {
    try {
      await _dio.post('/api/v2/comment/$commentId/like');
    } on DioException catch (e) {
      throw Exception('Failed to toggle like: ${e.message}');
    }
  }

  Future<List<Comment>> getMyPostComments(
      {int limit = 10, int offset = 0}) async {
    try {
      final response = await _dio.get(
        '/api/v2/comment/my-post-comments',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      return (response.data['data'] as List)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw Exception('Failed to load comments: ${e.message}');
    }
  }

  Future<List<Comment>> getMyComments({int limit = 10, int offset = 0}) async {
    try {
      final response = await _dio.get(
        '/api/v2/comment/my-comments',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      return (response.data['data'] as List)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw Exception('Failed to load comments: ${e.message}');
    }
  }

  Future<void> sendReaction({
    required String model,
    required String modelId,
    required String type,
  }) async {
    try {
      await _dio.post(
        '/api/v2/reaction',
        data: {
          'model': model,
          'id': modelId,
          'type': type,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer ${InMemoryToken.instance.token}',
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
    } on DioException catch (e) {
      throw Exception('Failed to send reaction: ${e.message}');
    }
  }
}
