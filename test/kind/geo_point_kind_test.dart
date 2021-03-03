// Copyright 2021 Gohilla Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:kind/kind.dart';
import 'package:test/test.dart';

void main() {
  group('GeoPointKind', () {
    test('name', () {
      expect(const GeoPointKind().name, 'GeoPoint');
    });

    test('GeoPointKind.kind', () {
      // ignore: invalid_use_of_protected_member
      final kind = GeoPointKind.kind;
      expect(kind.name, 'GeoPointKind');

      expect(kind.jsonTreeEncode(const GeoPointKind()), {});
      expect(kind.jsonTreeDecode({}), const GeoPointKind());
    });

    test('== / hashCode', () {
      // ignore: non_const_call_to_literal_constructor
      final value = GeoPointKind();
      // ignore: non_const_call_to_literal_constructor
      final clone = GeoPointKind();
      // ignore: non_const_call_to_literal_constructor
      final other = StringKind();

      expect(value, clone);
      expect(value, isNot(other));

      expect(value.hashCode, clone.hashCode);
      expect(value.hashCode, isNot(other.hashCode));
    });

    test('newInstance()', () {
      expect(const GeoPointKind().newInstance(), same(GeoPoint.zero));
    });

    test('randomExample', () {
      const n = 1000;
      final list = const GeoPointKind().randomExampleList(n);
      expect(list.toSet(), hasLength(greaterThan(n ~/ 2)));
    });
  });
}
