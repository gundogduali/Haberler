import 'package:equatable/equatable.dart';

class CategoryParams extends Equatable {
  final String category;

  const CategoryParams(this.category);

  @override
  List<Object?> get props => [category];
}
