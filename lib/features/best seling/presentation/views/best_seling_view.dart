import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  static const String routeName = 'BestSellingView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
       context:  context,
        title: S.of(context).best_selling_text,
      ),
    );
  }


}
