import 'package:scenarioshelf/util/exception/flavor_exception.dart';

enum Flavor {
  dev,
  stg,
  prod;
}

class Environment {
  static Flavor get flavor {
    const String flavor = String.fromEnvironment('flavor');
    switch (flavor) {
      case 'dev':
        return Flavor.dev;
      case 'stg':
        return Flavor.stg;
      case 'prod':
        return Flavor.prod;
      default:
        throw const FlavorException("'Flavor' must be specified");
    }
  }
}
