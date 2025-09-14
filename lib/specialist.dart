import 'package:flutter/material.dart';

class Specialist extends StatefulWidget {
  const Specialist({super.key});

  @override
  State<Specialist> createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredSpecialists = [];

  final List<Map<String, dynamic>> specialists = [
    {
      'name': 'الدكتور ترافيس وستلي',
      'specialty': 'أطباء القلب',
      'hospital': 'مستشفى الكلى',
      'rating': 4.3,
      'reviews': 376,
      'isFavorite': true,
    },
    {
      'name': 'الدكتور ناثانيال فالي',
      'specialty': 'أطباء القلب',
      'hospital': 'مستشفى في أدري',
      'rating': 4.6,
      'reviews': 837,
      'isFavorite': true,
    },
    {
      'name': 'الدكتور بيكيت كالجر',
      'specialty': 'أطباء القلب',
      'hospital': 'مستشفى فيلوس',
      'rating': 4.4,
      'reviews': 942,
      'isFavorite': true,
    },
    {
      'name': 'د. جادا بيرنسكي',
      'specialty': 'أطباء القلب',
      'hospital': 'مستشفى بتر',
      'rating': 4.6,
      'reviews': 566,
      'isFavorite': true,
    },
    {
      'name': 'د. برنارد بليس',
      'specialty': 'أطباء القلب',
      'hospital': 'مستشفى الوادي',
      'rating': 4.8,
      'reviews': 279,
      'isFavorite': true,
    },
  ];

  @override
  void initState() {
    super.initState();
    filteredSpecialists = specialists;
  }

  void _filterSpecialists(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredSpecialists = specialists;
      } else {
        filteredSpecialists = specialists.where((specialist) {
          return specialist['name'].toLowerCase().contains(query.toLowerCase()) ||
                 specialist['specialty'].toLowerCase().contains(query.toLowerCase()) ||
                 specialist['hospital'].toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  void _toggleSearch() {
    setState(() {
      isSearching = !isSearching;
      if (!isSearching) {
        searchController.clear();
        filteredSpecialists = specialists;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_forward, color: Colors.black),
        ),
        title: Text(
          "الاخصائي المفضل",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _toggleSearch,
            icon: Icon(isSearching ? Icons.close : Icons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.list, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          if (isSearching)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                controller: searchController,
                onChanged: _filterSpecialists,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: "البحث عن طبيب أو تخصص أو مستشفى",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.cyan, width: 2),
                  ),
                  fillColor: Colors.grey[50],
                  filled: true,
                ),
              ),
            ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: filteredSpecialists.length,
              itemBuilder: (context, index) {
                final specialist = filteredSpecialists[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            specialist['isFavorite']
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: specialist['isFavorite']
                                ? Colors.cyan
                                : Colors.grey,
                            size: 24,
                          ),
                          Text(
                            specialist['name'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            specialist['hospital'],
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            " | ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            specialist['specialty'],
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "(تقييم ${specialist['reviews']})",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            specialist['rating'].toString(),
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(width: 4),
                          Row(
                            children: List.generate(5, (starIndex) {
                              return Icon(
                                Icons.star,
                                size: 16,
                                color: starIndex < specialist['rating'].floor()
                                    ? Colors.cyan
                                    : Colors.grey[300],
                              );
                            }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
            ),
          ),
        ],
      ),
    );
  }
}
