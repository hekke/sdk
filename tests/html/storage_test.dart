#library('StorageTest');
#import('../../pkg/unittest/lib/unittest.dart');
#import('../../pkg/unittest/lib/html_config.dart');
#import('dart:html');

main() {
  useHtmlConfiguration();
  test('GetItem', () {
    final value = window.localStorage['does not exist'];
    Expect.isNull(value);
  });
  test('SetItem', () {
    final key = 'foo';
    final value = 'bar';
    window.localStorage[key] = value;
    final stored = window.localStorage[key];
    Expect.equals(value, stored);
  });
}
