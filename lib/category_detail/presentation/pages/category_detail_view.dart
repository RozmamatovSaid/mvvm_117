import 'package:flutter/material.dart';
import 'package:mvvm_117/category_detail/presentation/pages/category_detail_view_model.dart';
import 'package:mvvm_117/category_detail/presentation/widgets/category_food_widgets/CategoriesF_FoodsItem_widget.dart';
import 'package:mvvm_117/utils/AppColors.dart';
import 'package:mvvm_117/widgets/AppBar_widget.dart';
import 'package:mvvm_117/widgets/BottomNavBar_widget.dart';

class CategoryDetailView extends StatelessWidget {
  const CategoryDetailView({
    super.key,
    required this.viewModel,
  });

  final CategoryDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) => Scaffold(
        appBar: AppBarItem(
          back: "assets/svg/back.svg",
          text: viewModel.selected.title,
          svgfirst: "assets/svg/notification.svg",
          svgsecond: "assets/svg/search.svg",
        ),
        backgroundColor: AppColors.backgroundColor,
        body: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 19),
            itemCount: viewModel.recipes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
            ),
            itemBuilder: (context, index) {
              final recipe = viewModel.recipes[index];
              return CategoriesItem(
                image: recipe.image,
                title: recipe.title,
                desc: recipe.desc,
                time: recipe.time.toString(),
              );
            }),
        extendBody: true,
        bottomNavigationBar: BottomNavBarItem(
          FirstSvg: "assets/svg/home.svg",
          SecondSvg: "assets/svg/community.svg",
          ThirdSvg: "assets/svg/categories.svg",
          FourthSvg: "assets/svg/profile.svg",
        ),
      ),
    );
  }
}
