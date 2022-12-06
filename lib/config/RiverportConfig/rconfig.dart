import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_plugin/Retrict/news.dart';

final getletest= FutureProvider((ref) => NewsPaper().newlatest());
final getdetails=FutureProvider.family((ref,newsid) => NewsClass().newsdetails(newsid.toString()));
final getCategory= FutureProvider((ref) => NewsPaperClass().getcategory());
final firstCategoryProvider= FutureProvider.family((ref,newsId) => NewsPaperClass().getFirstCategory(newsId.toString()));
