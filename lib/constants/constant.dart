import 'package:flutter/material.dart';

class AppConstants {
  static String? appId;
}

class Strings {
  String? landingScreenTitle;
  String? appTitle;
  String? foodInformation;
  String? medsForPets;
  String? gamesForPets;
}

class Dogclass extends Strings {
  @override
  String get landingScreenTitle => 'Dog Related Information';
  String get appTitle => 'Dog';
  String get foodInformation => 'Food for Dogs';
  String get medsForPets => 'Meds for Dogs';
  String get gamesForPets => 'Games for Dogs';
}

class Catclass extends Strings {
  @override
  String get landingScreenTitle => 'Cat Related Information';
  String get appTitle => 'Cat';
  String get foodInformation => 'Food for Cats';
  String get medsForPets => 'Meds for Cats';
  String get gamesForPets => 'Games for Cats';
}

class ConstantFile {
  BuildContext _context;

  ConstantFile(this._context);

  Strings get constants {
    if (AppConstants.appId == 'cat-01') {
      return Catclass();
    } else {
      return Dogclass();
    }
  }

  static ConstantFile of(BuildContext context) {
    return ConstantFile(context);
  }
}
