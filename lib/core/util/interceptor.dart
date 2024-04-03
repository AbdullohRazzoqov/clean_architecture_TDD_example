import 'package:dio/dio.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.path.contains('/product-container/search')) {
      options.headers.addAll({
      });

      options.contentType = 'application/json';
    }
    handler.next(options);
  }
}
