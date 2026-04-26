import 'package:api_session/services/api_service.dart';
import 'package:flutter/material.dart';
import 'news_card.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({super.key});

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.notifications_none, color: Colors.black),
            ),
          ),
        ],
      ),
      body: FutureBuilder(
          future: ApiService().getArticles(),
          builder: (context, snapshot) {
            var articles =snapshot.data?.articles;
            return ListView.builder(
              itemCount: articles!.length,
              itemBuilder: (context, index) => NewsCard(
                title: articles[index].title,
                author:  articles[index].author,
                content: articles[index].content,
                description:  articles[index].description,
                publishedAt:articles[index].publishedAt,
                urlToImage: articles[index].urlToImage,
                url: articles[index].url,
              ),
            );
          }
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> dummyArticles = [
    {
      "author": "Forbes",
      "title": "Tech Startup Secures \$50 Million Funding for Expansion",
      "description": "A brief description here...",
      "urlToImage":
      "https://media.cnn.com/api_service.dart/v1/images/stellar/prod/2026-04-16t070640z-123751365-rc2pfka9dsp4-rtrmadp-3-iran-crisis-eu-jet-fuel.jpg", // رابط صور,
      "publishedAt": "Jun 11, 2023",
      "content": "Full content here...",
    },
    {
      "author": "Forbes",
      "title": "Tech Startup Secures \$50 Million Funding for Expansion",
      "description": "A brief description here...",
      "urlToImage":
      "https://media.cnn.com/api_service.dart/v1/images/stellar/prod/2026-04-16t070640z-123751365-rc2pfka9dsp4-rtrmadp-3-iran-crisis-eu-jet-fuel.jpg", // رابط صور,
      "publishedAt": "Jun 11, 2023",
      "content": "Full content here...",
    },
    {
      "author": "Forbes",
      "title": "Tech Startup Secures \$50 Million Funding for Expansion",
      "description": "A brief description here...",
      "urlToImage":
      "https://media.cnn.com/api_service.dart/v1/images/stellar/prod/2026-04-16t070640z-123751365-rc2pfka9dsp4-rtrmadp-3-iran-crisis-eu-jet-fuel.jpg", // رابط صور,
      "publishedAt": "Jun 11, 2023",
      "content": "Full content here...",
    },
    {
      "author": "Forbes",
      "title": "Tech Startup Secures \$50 Million Funding for Expansion",
      "description": "A brief description here...",
      "urlToImage":
      "https://media.cnn.com/api_service.dart/v1/images/stellar/prod/2026-04-16t070640z-123751365-rc2pfka9dsp4-rtrmadp-3-iran-crisis-eu-jet-fuel.jpg", // رابط صور,
      "publishedAt": "Jun 11, 2023",
      "content": "Full content here...",
    },
  ];
}

//
// ListView.builder(
// itemBuilder: (context, index) => NewsCard(
// title: dummyArticles[index]["title"],
// author: dummyArticles[index]["author"],
// content: dummyArticles[index]["content"],
// description: dummyArticles[index]["description"],
// publishedAt: dummyArticles[index]["publishedAt"],
// urlToImage: dummyArticles[index]["urlToImage"],
// ),
// itemCount: dummyArticles.length,
// ),