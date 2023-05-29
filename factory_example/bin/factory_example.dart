Map responce = {
  'cars': [
    {
      'marka': 'Nissan',
      'years': 2023,
      'carNumber': 'KG001',
    },
    {
      'marka': 'BMW',
      'years': 2023,
      'carNumber': 'KG001',
    },
    {
      'marka': 'Lexus',
      'years': 2023,
      'carNumber': 'KG001',
    },
    {
      'marka': 'Audi',
      'years': 2023,
      'carNumber': 'KG001',
    }
  ],
};

class Car {
  Car({required this.marka, required this.years, required this.carNumber});
  final String marka;
  final int years;
  final String carNumber;

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
        marka: json['marka'],
        years: json['years'],
        carNumber: json['carNumber']);
  }
}

void main() {
  final car1 = Car(
    marka: responce['cars'][0]['marka'],
    years: responce['cars'][0]['years'],
    carNumber: responce['cars'][0]['carNumber'],
  );
  final car2 = Car(
    marka: responce['cars'][1]['marka'],
    years: responce['cars'][1]['years'],
    carNumber: responce['cars'][1]['carNumber'],
  );
  final car3 = Car(
    marka: responce['cars'][2]['marka'],
    years: responce['cars'][2]['years'],
    carNumber: responce['cars'][2]['carNumber'],
  );

  final car5 = Car.fromJson(responce['cars'][0]);
  final car6 = Car.fromJson(responce['cars'][1]);
  final car7 = Car.fromJson(responce['cars'][2]);
  final car8 = Car.fromJson(responce['cars'][3]);

  print('simple-------------');
  print(car1.marka);
  print(car2.marka);
  print(car3.marka);
  print('factory----------------');
  print(car5.marka);
  print(car6.marka);
  print(car7.marka);
  print(car8.marka);
}
