import 'package:flutter/material.dart';
import 'package:my_app/utils/custom_colors.dart';
import 'package:my_app/utils/tipografia.dart';

class PostsFilters extends StatefulWidget {
  const PostsFilters({
    super.key,
  });

  @override
  State<PostsFilters> createState() => _PostsFiltersState();
}

class _PostsFiltersState extends State<PostsFilters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        color: CustomColors.verde2,
      ),
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _headers,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> get _headers {
    return [
      Expanded(
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resetar',
                    style: Tipografia.corpo2Bold,
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'Filtros',
                style: Tipografia.titulo4,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    color: CustomColors.escuro,
                    size: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
