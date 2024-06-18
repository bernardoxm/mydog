import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
class ApiClient {
  Future<Uint8List> removeBgApi(File imageFile) async {
    try {
      var request = http.MultipartRequest("POST", Uri.parse("https://api.remove.bg/v1.0/removebg"));
      request.files.add(await http.MultipartFile.fromPath("image_file", imageFile.path));
      request.headers.addAll({"X-API-Key": "16rJTiVLtXdEx3yS5xT8DFvj"});
      final response = await request.send();

      if (response.statusCode == 200) {
        http.Response imgRes = await http.Response.fromStream(response);
        return imgRes.bodyBytes;
      } else {
        throw Exception("Error occurred with response ${response.statusCode} ");
      }
    } catch (e) {
      print("Error removing background: $e");
      throw e;
    }
  }


  
}
