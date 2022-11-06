enum Flavor { dog, cat,}

class Environment {
  final Flavor? flavor;
  final String? appTitle;
  final String? appId;

  const Environment._({this.flavor, this.appTitle, this.appId,});

  factory Environment.catEnv() => const Environment._(
      flavor: Flavor.cat, appTitle: "Cat", appId: "cat-01");

  factory Environment.dogEnv() => const Environment._(
      flavor: Flavor.dog, appTitle: "Dog", appId: "dog-01");
}
