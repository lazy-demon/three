// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserLogCollectionReference
    implements
        UserLogQuery,
        FirestoreCollectionReference<UserLogQuerySnapshot> {
  factory UserLogCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UserLogCollectionReference;

  static UserLog fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserLogFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    UserLog value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  UserLogDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserLogDocumentReference> add(UserLog value);
}

class _$UserLogCollectionReference extends _$UserLogQuery
    implements UserLogCollectionReference {
  factory _$UserLogCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserLogCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: UserLogCollectionReference.fromFirestore,
            toFirestore: UserLogCollectionReference.toFirestore,
          ),
    );
  }

  _$UserLogCollectionReference._(
    CollectionReference<UserLog> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<UserLog> get reference =>
      super.reference as CollectionReference<UserLog>;

  @override
  UserLogDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserLogDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserLogDocumentReference> add(UserLog value) {
    return reference.add(value).then((ref) => UserLogDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserLogCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserLogDocumentReference
    extends FirestoreDocumentReference<UserLogDocumentSnapshot> {
  factory UserLogDocumentReference(DocumentReference<UserLog> reference) =
      _$UserLogDocumentReference;

  DocumentReference<UserLog> get reference;

  /// A reference to the [UserLogCollectionReference] containing this document.
  UserLogCollectionReference get parent {
    return _$UserLogCollectionReference(reference.firestore);
  }

  @override
  Stream<UserLogDocumentSnapshot> snapshots();

  @override
  Future<UserLogDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String name,
    int age,
    String email,
  });

  Future<void> set(UserLog value);
}

class _$UserLogDocumentReference
    extends FirestoreDocumentReference<UserLogDocumentSnapshot>
    implements UserLogDocumentReference {
  _$UserLogDocumentReference(this.reference);

  @override
  final DocumentReference<UserLog> reference;

  /// A reference to the [UserLogCollectionReference] containing this document.
  UserLogCollectionReference get parent {
    return _$UserLogCollectionReference(reference.firestore);
  }

  @override
  Stream<UserLogDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return UserLogDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<UserLogDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return UserLogDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? name = _sentinel,
    Object? age = _sentinel,
    Object? email = _sentinel,
  }) async {
    final json = {
      if (name != _sentinel) "name": name as String,
      if (age != _sentinel) "age": age as int,
      if (email != _sentinel) "email": email as String,
    };

    return reference.update(json);
  }

  Future<void> set(UserLog value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is UserLogDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class UserLogDocumentSnapshot extends FirestoreDocumentSnapshot {
  UserLogDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<UserLog> snapshot;

  @override
  UserLogDocumentReference get reference {
    return UserLogDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final UserLog? data;
}

abstract class UserLogQuery implements QueryReference<UserLogQuerySnapshot> {
  @override
  UserLogQuery limit(int limit);

  @override
  UserLogQuery limitToLast(int limit);

  UserLogQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  UserLogQuery whereAge({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  UserLogQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  UserLogQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserLogDocumentSnapshot? startAtDocument,
    UserLogDocumentSnapshot? endAtDocument,
    UserLogDocumentSnapshot? endBeforeDocument,
    UserLogDocumentSnapshot? startAfterDocument,
  });

  UserLogQuery orderByAge({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    UserLogDocumentSnapshot? startAtDocument,
    UserLogDocumentSnapshot? endAtDocument,
    UserLogDocumentSnapshot? endBeforeDocument,
    UserLogDocumentSnapshot? startAfterDocument,
  });

  UserLogQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserLogDocumentSnapshot? startAtDocument,
    UserLogDocumentSnapshot? endAtDocument,
    UserLogDocumentSnapshot? endBeforeDocument,
    UserLogDocumentSnapshot? startAfterDocument,
  });
}

class _$UserLogQuery extends QueryReference<UserLogQuerySnapshot>
    implements UserLogQuery {
  _$UserLogQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<UserLog> reference;

  UserLogQuerySnapshot _decodeSnapshot(
    QuerySnapshot<UserLog> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return UserLogQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<UserLogDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: UserLogDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return UserLogQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<UserLogQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<UserLogQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  UserLogQuery limit(int limit) {
    return _$UserLogQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  UserLogQuery limitToLast(int limit) {
    return _$UserLogQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  UserLogQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserLogQuery(
      reference.where(
        'name',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  UserLogQuery whereAge({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$UserLogQuery(
      reference.where(
        'age',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  UserLogQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserLogQuery(
      reference.where(
        'email',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  UserLogQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserLogDocumentSnapshot? startAtDocument,
    UserLogDocumentSnapshot? endAtDocument,
    UserLogDocumentSnapshot? endBeforeDocument,
    UserLogDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('name', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$UserLogQuery(query, _collection);
  }

  UserLogQuery orderByAge({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserLogDocumentSnapshot? startAtDocument,
    UserLogDocumentSnapshot? endAtDocument,
    UserLogDocumentSnapshot? endBeforeDocument,
    UserLogDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('age', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$UserLogQuery(query, _collection);
  }

  UserLogQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserLogDocumentSnapshot? startAtDocument,
    UserLogDocumentSnapshot? endAtDocument,
    UserLogDocumentSnapshot? endBeforeDocument,
    UserLogDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('email', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$UserLogQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserLogQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserLogQuerySnapshot
    extends FirestoreQuerySnapshot<UserLogQueryDocumentSnapshot> {
  UserLogQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<UserLog> snapshot;

  @override
  final List<UserLogQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserLogDocumentSnapshot>> docChanges;
}

class UserLogQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements UserLogDocumentSnapshot {
  UserLogQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<UserLog> snapshot;

  @override
  UserLogDocumentReference get reference {
    return UserLogDocumentReference(snapshot.reference);
  }

  @override
  final UserLog data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLog _$UserLogFromJson(Map<String, dynamic> json) => UserLog(
      name: json['name'] as String,
      age: json['age'] as int,
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserLogToJson(UserLog instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'email': instance.email,
    };
