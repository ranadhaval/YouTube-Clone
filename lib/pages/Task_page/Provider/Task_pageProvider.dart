
import 'package:managerapp/webservices/api_request.dart';
import 'package:managerapp/webservices/response_model.dart';

class sampleProvider {
  void Sampleprovider(
      {
      Function()? beforeSend,
      Function(ResponseModel response)? onSuccess,
      Function(ResponseModel response)? onError}) {
    ApiRequest(url: 'https://www.fastmock.site/mock/84666164619e8207535f26526fb40a7f/SouthIndianHindimov/HomeVideos', )
        .getRequest(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess!(data);
      },
      onError: (error) {
        print(error);
      },
    );
  }
}