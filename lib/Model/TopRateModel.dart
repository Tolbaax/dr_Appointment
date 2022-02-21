
class TopRateModel{
  String? topRateImageUrl;
  String? drName;
  String? spec;
  double? rate;
  String? distance;
  TopRateModel({this.topRateImageUrl,this.drName,this.spec,this.rate,this.distance});
}

List<TopRateModel> topRate = [
  TopRateModel(topRateImageUrl: 'images/dr2.png', drName: 'Dr. Mazen', spec: 'Eye Specialist ', rate: 4.5, distance: '10km'),
  TopRateModel(topRateImageUrl: 'images/dr1.png', drName: 'Dr. Eman', spec: 'Dental Specialist', rate: 5, distance: '15km'),
  TopRateModel(topRateImageUrl: 'images/dr3.png', drName: 'Dr. Ahmed', spec: 'Brain Specialist', rate: 3.5, distance: '20km'),
  TopRateModel(topRateImageUrl: 'images/dr4.png', drName: 'Dr. Ebrahim', spec: 'Heart Surgeon', rate: 4.2, distance: '50km'),
];