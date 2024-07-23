import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../models/photo.dart';
import '../../widgets/photo_card.dart';

class PhotoGrid extends StatefulWidget {
  const PhotoGrid({super.key});

  @override
  State<PhotoGrid> createState() => _PhotoGridState();
}

class _PhotoGridState extends State<PhotoGrid> {
  static const _pageSize = 10;
  final PagingController<int, Photo> _pagingController =
      PagingController(firstPageKey: 0);

  Future<void> _fetchPage(int pageKey) async {
    try {
      final response = await http.get(Uri.parse(
          'https://jsonplaceholder.typicode.com/photos?_start=$pageKey&_limit=$_pageSize'));

      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(response.body);
        List<Photo> photos =
            jsonResponse.map((photo) => Photo.fromJson(photo)).toList();

        final isLastPage = photos.length < _pageSize;
        if (isLastPage) {
          _pagingController.appendLastPage(photos);
        } else {
          final nextPageKey = pageKey + 1;
          _pagingController.appendPage(photos, nextPageKey);
        }
      } else {
        throw Exception('Failed to load photos');
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Grid'),
      ),
      body: PagedGridView(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Photo>(
          itemBuilder: (context, item, index) => PhotoCard(photo: item),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
