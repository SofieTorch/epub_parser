/// Reading direction declared on the EPUB's `<spine>` element.
///
/// Reference taken from https://www.w3.org/TR/epub-33/#attrdef-spine-page-progression-direction
enum PageProgressionDirection {
  ltr('ltr'),
  rtl('rtl'),
  $default('default');

  const PageProgressionDirection(this.value);
  final String value;

  static PageProgressionDirection fromValue(String value) {
    return PageProgressionDirection.values
        .firstWhere((item) => item.value == value);
  }
}
