import 'dart:io';
import 'dart:convert';



/*
async和await
  这两个关键字的使用只需要记住两点：
    只有async方法才能使用await关键字调用方法
    如果调用别的async方法必须使用await关键字


async是让方法变成异步。
await是等待异步方法执行完成。
 */

//api接口： http://news-at.zhihu.com/api/3/stories/latest
getDataFromZhihuAPI() async{
  //1.创建HTTPClient对象
  HttpClient httpClient = new HttpClient();
  //2.创建url对象
  Uri uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  //3.发起请求,等待请求
  var request = await httpClient.getUrl(uri);
  //4.关闭请求,等待回应
  var response = await request.close();
  //5.解码响应的内容
  return await response.transform(utf8.decoder).join();
}


main() async {
  var result = await getDataFromZhihuAPI();
  print(result);
}