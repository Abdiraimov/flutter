class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<joop> jooptor;
}

class joop {
  const joop({required this.text, required this.tuuraJoop});
  final String text;
  final bool tuuraJoop;
}

const Suroo s1 = Suroo(text: 'Paris', image: 'Paris', jooptor: [
  joop(text: 'Germany', tuuraJoop: false),
  joop(text: 'Italy', tuuraJoop: false),
  joop(text: 'Denmark', tuuraJoop: false),
  joop(text: 'France', tuuraJoop: true),
]);
const Suroo s2 = Suroo(text: 'Lisbon', image: 'LisbonPortugal', jooptor: [
  joop(text: 'Albania', tuuraJoop: false),
  joop(text: 'Portugal', tuuraJoop: true),
  joop(text: 'Island', tuuraJoop: false),
  joop(text: 'Finland', tuuraJoop: true),
]);
const Suroo s3 = Suroo(text: 'Berlin', image: 'Berlin', jooptor: [
  joop(text: 'Russia', tuuraJoop: false),
  joop(text: 'Spain', tuuraJoop: false),
  joop(text: 'Germany', tuuraJoop: true),
  joop(text: 'Greece', tuuraJoop: false),
]);
const Suroo s4 = Suroo(text: 'Madrid', image: 'Madrid', jooptor: [
  joop(text: 'Belarus', tuuraJoop: false),
  joop(text: 'Serbia', tuuraJoop: false),
  joop(text: 'Spain', tuuraJoop: true),
  joop(text: 'Portugal', tuuraJoop: false),
]);
const Suroo s5 =
    Suroo(text: 'Copenhagen', image: 'CopenhagenDenmark', jooptor: [
  joop(text: 'Andorra', tuuraJoop: false),
  joop(text: 'Luxembourg', tuuraJoop: false),
  joop(text: 'Denmark', tuuraJoop: true),
  joop(text: 'Ukraine', tuuraJoop: false),
]);
const Suroo s6 = Suroo(text: 'Brusel', image: 'BruselBelgium', jooptor: [
  joop(text: 'Slovakia', tuuraJoop: false),
  joop(text: 'Croatia', tuuraJoop: false),
  joop(text: 'Norway', tuuraJoop: false),
  joop(text: 'Belgium', tuuraJoop: true),
]);

List<Suroo> surooJoopList = [s1, s2, s3, s4, s5, s6];
