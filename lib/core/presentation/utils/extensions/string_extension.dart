

import 'package:intl/intl.dart';

///
/// String extension for common string cases
///
extension StringExtensions on String {
  /// Converts the first character to upper case
  /// If [allWords] is true, then all words will be capitalized
  String toCapitalized({
    bool allWords = false,
    bool useEscapeDictionary = true,
  }) {
    // todo: refactor this extension
    if (isEmpty) return '';
    if (allWords) {
      return split(' ')
          .map((str) {
            // It considers the exactly word
            if (useEscapeDictionary) {
              return str;
            }
            str = str.toLowerCase();
            return toBeginningOfSentenceCase(str);
          })
          .join(' ')
          .split('.')
          .map((str) {
            // It considers the exactly word
            if (useEscapeDictionary) {
              return str;
            }
            return toBeginningOfSentenceCase(str);
          })
          .join('.');
    }
    return toBeginningOfSentenceCase(toLowerCase()) ?? '';
  }

  /// Get first part of string separated by the [separator] parameter
  String first({String separator = ' '}) => split(separator).first;

  /// Get last part of string separated by the [separator] parameter
  String last({String separator = ' '}) {
    final splitted = split(separator);

    if (splitted.lastOrNull?.isEmpty ?? false) {
      return splitted.lastWhere(
        (element) => element.isNotEmpty,
        orElse: () => '',
      );
    }

    return splitted.last;
  }

  /// Get first and last name from a full name
  String toNameAndSurname() {
    return '${first().toCapitalized()} ${last().toCapitalized()}';
  }

  /// Masks the email by replacing some parts with special characters
  /// the default mask character is `...`
  String toMaskedEmail({
    String maskCharacter = '···',
  }) {
    if (isEmpty) return this;

    const at = '@';
    final [name, domain] = split(at);

    return '${name.substringSafe(0, 3)}$maskCharacter${name.substringSafe(name.length - 3)}$at$domain';
  }

  ///
  /// Get the first letters of a full name
  ///
  String get nameInitials {
    return split(' ')
        .map((e) => e.substringSafe(0, 1))
        .join()
        .substringSafe(0, 2)
        .toUpperCase();
  }

  ///
  /// Substring the doesn't throw error when start and end are not inside length
  ///
  String substringSafe(int start, [int? end]) {
    if (start > length) {
      start = length;
    }

    if (end != null && end > length) {
      end = length;
    }

    return substring(start, end);
  }

  ///
  /// Checks if current string contains numbers
  ///
  bool containsNumbers() {
    RegExp exp = RegExp('[0-9]');
    return exp.hasMatch(this);
  }

  ///
  /// Checks if current string contains letters
  ///
  bool containsLetters() {
    RegExp exp = RegExp('[a-zA-Z]');
    return exp.hasMatch(this);
  }

  ///
  /// Filters a string leaving only the numbers in it
  ///
  String toNumbersOnly() {
    return replaceAll(RegExp(r'[^0-9]'), '');
  }

  ///
  /// Filters a string leaving only the alpha numeric characters in it
  ///
  String removeSpecialCharacters({acceptWhiteSpace = false}) {
    //TODO: improve this REGEX
    return replaceAll(
      RegExp(acceptWhiteSpace ? r'[^a-zA-Z0-9\s]' : r'[^a-zA-Z0-9]'),
      '',
    );
  }

  ///
  /// If contains special characteres
  ///
  bool containsSpecialCharacters() {
    return contains(RegExp(r'[^a-zA-Z0-9]'));
  }

  ///
  /// Converts a string in camelCase format to a sentence with spaces
  ///
  String camelCaseToSentence() {
    List<String> wordList =
        replaceAllMapped(RegExp('([A-Z])'), (match) => ' ${match.group(0)}')
            .trim()
            .split(' ');
    wordList[0] = wordList[0][0].toUpperCase() + wordList[0].substring(1);
    return wordList.join(' ');
  }
}

///
/// String nullable extension for common string cases
///
extension StringNullableExtensions on String? {
  ///
  /// Return error unexpected when message is empty
  ///
  String get errorOrUnexpected {
    return this != null && this!.isNotEmpty ? this! : 'Erro inesperado';
  }

  ///
  /// Return error try again when message is empty
  ///
  String get errorOrTryAgain {
    return this != null && this!.isNotEmpty ? this! : 'Tente de novo';
  }

  ///
  /// Return the string value or an empty string
  ///
  String get value {
    return this != null ? this! : '';
  }

  /// Returns the current value when its not empty or null.
  /// Otherwise, returns the [replacement] value.
  String or(String replacement) {
    assert(replacement.isNotEmpty);

    return this != null && this!.isNotEmpty ? this! : replacement;
  }
}

///
/// String convert extension for common string cases
///
extension StringConvertExtensions on String? {
  ///
  /// Return double
  ///
  double toDouble() {
    String? textValue = this;
    String value = textValue ?? '0.0';
    String onlyDigits = value.toNumbersOnly();
    final parsedValue = double.tryParse(onlyDigits) ?? 0.0;
    if (parsedValue == 0.0) return parsedValue;
    return parsedValue / 100;
  }

  ///
  /// If its a string convertable to double
  ///
  bool get canBeDouble {
    try {
      toDouble;
      return true;
    } catch (e) {
      return false;
    }
  }
}
