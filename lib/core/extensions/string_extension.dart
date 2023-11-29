extension StringExtension on String {
  String get capitalizeFirst => '${this[0].toUpperCase()}${substring(1).toLowerCase()}';

  String get capitalizeNames {
    List<String> names = split(' ');
    String capitalized = '';

    for (String name in names) {
      if (name.isNotEmpty) {
        String firstLetter = name[0].toUpperCase();
        String restOfWord = name.substring(1).toLowerCase();
        capitalized += '$firstLetter$restOfWord ';
      }
    }

    return capitalized.trim();
  }
}
