import 'package:flutter_test/flutter_test.dart';
import 'package:larastore/app.dart';
import 'package:larastore/dataset.dart';

import 'package:larastore/larastore.dart';
import 'package:larastore/larastore_options.dart';

void main() {
  late Larastore larastore;

  setUp((){
    larastore = Larastore.initialize(
        options: LarastoreOptions(
            baseUrl: 'http://duo.loc/api', converter: AppResourceConverter()));
  });

  test('can get Larastore instance', () {
    expect(larastore, isA<Larastore>());
  });

  test("can retreive collection", () async {
    Dataset users = await larastore.collection<UserModel>('users');
    expect(users, isA<Dataset<UserModel>>());
  });
}
