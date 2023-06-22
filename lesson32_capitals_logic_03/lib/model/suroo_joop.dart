class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<joop> jooptor;
}

class joop {
  const joop({required this.text, required this.isBool});
  final String text;
  final bool isBool;
}

const Suroo s1 = Suroo(text: 'Paris', image: 'Paris', jooptor: [
  joop(text: 'Germany', isBool: false),
  joop(text: 'Italy', isBool: false),
  joop(text: 'Denmark', isBool: false),
  joop(text: 'France', isBool: true),
]);
const Suroo s2 = Suroo(text: 'Lisbon', image: 'LisbonPortugal', jooptor: [
  joop(text: 'Albania', isBool: false),
  joop(text: 'Portugal', isBool: true),
  joop(text: 'Island', isBool: false),
  joop(text: 'Finland', isBool: true),
]);
const Suroo s3 = Suroo(text: 'Berlin', image: 'Berlin', jooptor: [
  joop(text: 'Russia', isBool: false),
  joop(text: 'Spain', isBool: false),
  joop(text: 'Germany', isBool: true),
  joop(text: 'Greece', isBool: false),
]);
const Suroo s4 = Suroo(text: 'Madrid', image: 'Madrid', jooptor: [
  joop(text: 'Belarus', isBool: false),
  joop(text: 'Serbia', isBool: false),
  joop(text: 'Spain', isBool: true),
  joop(text: 'Portugal', isBool: false),
]);
const Suroo s5 =
    Suroo(text: 'Copenhagen', image: 'CopenhagenDenmark', jooptor: [
  joop(text: 'Andorra', isBool: false),
  joop(text: 'Luxembourg', isBool: false),
  joop(text: 'Denmark', isBool: true),
  joop(text: 'Ukraine', isBool: false),
]);
const Suroo s6 = Suroo(text: 'Brusel', image: 'BruselBelgium', jooptor: [
  joop(text: 'Slovakia', isBool: false),
  joop(text: 'Croatia', isBool: false),
  joop(text: 'Norway', isBool: false),
  joop(text: 'Belgium', isBool: true),
]);

List<Suroo> surooJoopList = [s1, s2, s3, s4, s5, s6];
