import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_plugin/Retrict/news.dart';

final getNewsLatest= FutureProvider((ref) => NewsPaper().newlatest());
final getNewsDetails=FutureProvider.family((ref, newsid) => NewsClass().newsdetails(newsid.toString()));
final cgetCategoryNews=FutureProvider.family((ref, id) => CategoryNews().getnewsc(id.toString()));