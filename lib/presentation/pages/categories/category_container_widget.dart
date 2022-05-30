part of "categories_screen.dart";

class CategoryContainerWidget extends StatelessWidget {
  final CategoryTab tab;

  final Function() onTap;
  const CategoryContainerWidget({
    Key? key,
    required this.tab,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(
                tab.imagePath,
              ),
              fit: BoxFit.cover,
            )),
        child: Center(
          child: Text(
            tab.title.tr(),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
    );
  }
}
