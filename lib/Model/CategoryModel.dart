class CategoryModel {
  String? categoryImageUrl;
  String? categoryNames;
  String? drNumber;
  CategoryModel({this.categoryImageUrl, this.categoryNames, this.drNumber});
}

List<CategoryModel> category = [
  CategoryModel(categoryImageUrl: 'images/tooth.png', categoryNames: 'Dental', drNumber: '20 Doctors'),
  CategoryModel(categoryImageUrl: 'images/Heart.png', categoryNames: 'Heart', drNumber: '18 Doctors'),
  CategoryModel(categoryImageUrl: 'images/brain.png', categoryNames: 'Brain', drNumber: '15 Doctors'),
  CategoryModel(categoryImageUrl: 'images/bone.png', categoryNames: 'Bone', drNumber: '30 Doctors'),
];
