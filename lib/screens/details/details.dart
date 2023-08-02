import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formation_flutter/res/app_icons.dart';
import 'package:formation_flutter/screens/details/details_utils.dart';
import 'package:formation_flutter/screens/details/product_bloc.dart';
import 'package:formation_flutter/screens/details/tabs/details_info.dart';
import 'package:formation_flutter/screens/details/tabs/details_nutrition.dart';
import 'package:formation_flutter/screens/details/tabs/details_nutritional_values.dart';
import 'package:formation_flutter/screens/details/tabs/details_summary.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<DetailsScreen> {
  final ScrollController _controller = ScrollController();
  ProductDetailsTab _currentTab = ProductDetailsTab.info;

  @override
  Widget build(BuildContext context) {
    final Widget child;

    switch (_currentTab) {
      case ProductDetailsTab.info:
        child = const ProductInfo();
        break;
      case ProductDetailsTab.nutrition:
        child = const ProductNutrition();
        break;
      case ProductDetailsTab.nutritionalValues:
        child = const ProductNutritionalValues();
        break;
      case ProductDetailsTab.summary:
        child = const ProductSummary();
        break;
    }

    return PrimaryScrollController(
      controller: _controller,
      child: BlocProvider<ProductBloc>(
        create: (_) => ProductBloc('TODO'),
        child: Scaffold(
          body: BlocBuilder<ProductBloc, ProductBlocState>(
              builder: (BuildContext context, ProductBlocState state) {
            if (state.product == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Stack(
                children: [
                  Positioned.fill(child: child),
                  const Align(
                    alignment: AlignmentDirectional.topStart,
                    child: _HeaderIcon(
                      icon: AppIcons.close,
                      tooltip: 'Fermer l\'écran',
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: _HeaderIcon(
                      icon: AppIcons.share,
                      tooltip: 'Partager',
                    ),
                  ),
                ],
              );
            }
          }),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int selectedPosition) {
              final ProductDetailsTab newTab =
                  ProductDetailsTab.values[selectedPosition];

              if (newTab != _currentTab) {
                if (_controller.hasClients) {
                  _controller.jumpTo(0.0);
                }

                setState(() {
                  _currentTab = newTab;
                });
              }
            },
            items: ProductDetailsTab.values.map((e) {
              String? label;
              IconData? icon;

              switch (e) {
                case ProductDetailsTab.info:
                  icon = AppIcons.tab_barcode;
                  label = "Fiche";
                  break;
                case ProductDetailsTab.nutritionalValues:
                  icon = AppIcons.tab_fridge;
                  label = "Caractéristiques";
                  break;
                case ProductDetailsTab.nutrition:
                  icon = AppIcons.tab_nutrition;
                  label = "Nutrition";
                  break;
                case ProductDetailsTab.summary:
                  icon = AppIcons.tab_array;
                  label = "Tableau";
              }

              return BottomNavigationBarItem(
                icon: Icon(icon),
                label: label,
              );
            }).toList(growable: false),
            currentIndex: _currentTab.index,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

enum ProductDetailsTab {
  info,
  nutrition,
  nutritionalValues,
  summary,
}

class _HeaderIcon extends StatefulWidget {
  final IconData icon;
  final String? tooltip;
  final VoidCallback? onPressed;

  const _HeaderIcon({
    required this.icon,
    // ignore: unused_element
    this.tooltip,
    // ignore: unused_element
    this.onPressed,
  });

  @override
  State<_HeaderIcon> createState() => _HeaderIconState();
}

class _HeaderIconState extends State<_HeaderIcon> {
  double _opacity = 0.0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    PrimaryScrollController.of(context).addListener(_onScroll);
  }

  void _onScroll() {
    final double newOpacity = DetailsScreenUtils.scrollProgress(context);

    if (newOpacity != _opacity) {
      setState(() {
        _opacity = newOpacity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          type: MaterialType.transparency,
          child: Tooltip(
            message: widget.tooltip,
            child: InkWell(
              onTap: widget.onPressed ?? () {},
              customBorder: const CircleBorder(),
              child: Ink(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      Theme.of(context).primaryColorLight.withOpacity(_opacity),
                ),
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
