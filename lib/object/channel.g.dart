// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

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
abstract class ChannelCollectionReference
    implements
        ChannelQuery,
        FirestoreCollectionReference<ChannelQuerySnapshot> {
  factory ChannelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ChannelCollectionReference;

  static Channel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ChannelFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Channel value,
    SetOptions? options,
  ) {
    return _$ChannelToJson(value);
  }

  @override
  ChannelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ChannelDocumentReference> add(Channel value);
}

class _$ChannelCollectionReference extends _$ChannelQuery
    implements ChannelCollectionReference {
  factory _$ChannelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ChannelCollectionReference._(
      firestore.collection('channels').withConverter(
            fromFirestore: ChannelCollectionReference.fromFirestore,
            toFirestore: ChannelCollectionReference.toFirestore,
          ),
    );
  }

  _$ChannelCollectionReference._(
    CollectionReference<Channel> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<Channel> get reference =>
      super.reference as CollectionReference<Channel>;

  @override
  ChannelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ChannelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ChannelDocumentReference> add(Channel value) {
    return reference.add(value).then((ref) => ChannelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChannelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ChannelDocumentReference
    extends FirestoreDocumentReference<ChannelDocumentSnapshot> {
  factory ChannelDocumentReference(DocumentReference<Channel> reference) =
      _$ChannelDocumentReference;

  DocumentReference<Channel> get reference;

  /// A reference to the [ChannelCollectionReference] containing this document.
  ChannelCollectionReference get parent {
    return _$ChannelCollectionReference(reference.firestore);
  }

  late final MessageCollectionReference messages = _$MessageCollectionReference(
    reference,
  );

  @override
  Stream<ChannelDocumentSnapshot> snapshots();

  @override
  Future<ChannelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    List<dynamic> users,
  });

  Future<void> set(Channel value);
}

class _$ChannelDocumentReference
    extends FirestoreDocumentReference<ChannelDocumentSnapshot>
    implements ChannelDocumentReference {
  _$ChannelDocumentReference(this.reference);

  @override
  final DocumentReference<Channel> reference;

  /// A reference to the [ChannelCollectionReference] containing this document.
  ChannelCollectionReference get parent {
    return _$ChannelCollectionReference(reference.firestore);
  }

  late final MessageCollectionReference messages = _$MessageCollectionReference(
    reference,
  );

  @override
  Stream<ChannelDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return ChannelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<ChannelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return ChannelDocumentSnapshot._(
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
    Object? users = _sentinel,
  }) async {
    final json = {
      if (users != _sentinel) "users": users as List<dynamic>,
    };

    return reference.update(json);
  }

  Future<void> set(Channel value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is ChannelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class ChannelDocumentSnapshot extends FirestoreDocumentSnapshot {
  ChannelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Channel> snapshot;

  @override
  ChannelDocumentReference get reference {
    return ChannelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Channel? data;
}

abstract class ChannelQuery implements QueryReference<ChannelQuerySnapshot> {
  @override
  ChannelQuery limit(int limit);

  @override
  ChannelQuery limitToLast(int limit);

  ChannelQuery whereUsers({
    List<dynamic>? isEqualTo,
    List<dynamic>? isNotEqualTo,
    List<dynamic>? isLessThan,
    List<dynamic>? isLessThanOrEqualTo,
    List<dynamic>? isGreaterThan,
    List<dynamic>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<dynamic>? arrayContainsAny,
  });

  ChannelQuery orderByUsers({
    bool descending = false,
    List<dynamic> startAt,
    List<dynamic> startAfter,
    List<dynamic> endAt,
    List<dynamic> endBefore,
    ChannelDocumentSnapshot? startAtDocument,
    ChannelDocumentSnapshot? endAtDocument,
    ChannelDocumentSnapshot? endBeforeDocument,
    ChannelDocumentSnapshot? startAfterDocument,
  });
}

class _$ChannelQuery extends QueryReference<ChannelQuerySnapshot>
    implements ChannelQuery {
  _$ChannelQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Channel> reference;

  ChannelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Channel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return ChannelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<ChannelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: ChannelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return ChannelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<ChannelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<ChannelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  ChannelQuery limit(int limit) {
    return _$ChannelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  ChannelQuery limitToLast(int limit) {
    return _$ChannelQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  ChannelQuery whereUsers({
    List<dynamic>? isEqualTo,
    List<dynamic>? isNotEqualTo,
    List<dynamic>? isLessThan,
    List<dynamic>? isLessThanOrEqualTo,
    List<dynamic>? isGreaterThan,
    List<dynamic>? isGreaterThanOrEqualTo,
    bool? isNull,
    List<dynamic>? arrayContainsAny,
  }) {
    return _$ChannelQuery(
      reference.where(
        'users',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContainsAny: arrayContainsAny,
      ),
      _collection,
    );
  }

  ChannelQuery orderByUsers({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ChannelDocumentSnapshot? startAtDocument,
    ChannelDocumentSnapshot? endAtDocument,
    ChannelDocumentSnapshot? endBeforeDocument,
    ChannelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('users', descending: descending);

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

    return _$ChannelQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$ChannelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ChannelQuerySnapshot
    extends FirestoreQuerySnapshot<ChannelQueryDocumentSnapshot> {
  ChannelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Channel> snapshot;

  @override
  final List<ChannelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ChannelDocumentSnapshot>> docChanges;
}

class ChannelQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements ChannelDocumentSnapshot {
  ChannelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Channel> snapshot;

  @override
  ChannelDocumentReference get reference {
    return ChannelDocumentReference(snapshot.reference);
  }

  @override
  final Channel data;
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class MessageCollectionReference
    implements
        MessageQuery,
        FirestoreCollectionReference<MessageQuerySnapshot> {
  factory MessageCollectionReference(
    DocumentReference<Channel> parent,
  ) = _$MessageCollectionReference;

  static Message fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Message.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Message value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  /// A reference to the containing [ChannelDocumentReference] if this is a subcollection.
  ChannelDocumentReference get parent;

  @override
  MessageDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MessageDocumentReference> add(Message value);
}

class _$MessageCollectionReference extends _$MessageQuery
    implements MessageCollectionReference {
  factory _$MessageCollectionReference(
    DocumentReference<Channel> parent,
  ) {
    return _$MessageCollectionReference._(
      ChannelDocumentReference(parent),
      parent.collection('messages').withConverter(
            fromFirestore: MessageCollectionReference.fromFirestore,
            toFirestore: MessageCollectionReference.toFirestore,
          ),
    );
  }

  _$MessageCollectionReference._(
    this.parent,
    CollectionReference<Message> reference,
  ) : super(reference, reference);

  @override
  final ChannelDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Message> get reference =>
      super.reference as CollectionReference<Message>;

  @override
  MessageDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MessageDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MessageDocumentReference> add(Message value) {
    return reference.add(value).then((ref) => MessageDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MessageCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MessageDocumentReference
    extends FirestoreDocumentReference<MessageDocumentSnapshot> {
  factory MessageDocumentReference(DocumentReference<Message> reference) =
      _$MessageDocumentReference;

  DocumentReference<Message> get reference;

  /// A reference to the [MessageCollectionReference] containing this document.
  MessageCollectionReference get parent {
    return _$MessageCollectionReference(
      reference.parent.parent!.withConverter<Channel>(
        fromFirestore: ChannelCollectionReference.fromFirestore,
        toFirestore: ChannelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<MessageDocumentSnapshot> snapshots();

  @override
  Future<MessageDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String text,
    int type,
    String author,
  });

  Future<void> set(Message value);
}

class _$MessageDocumentReference
    extends FirestoreDocumentReference<MessageDocumentSnapshot>
    implements MessageDocumentReference {
  _$MessageDocumentReference(this.reference);

  @override
  final DocumentReference<Message> reference;

  /// A reference to the [MessageCollectionReference] containing this document.
  MessageCollectionReference get parent {
    return _$MessageCollectionReference(
      reference.parent.parent!.withConverter<Channel>(
        fromFirestore: ChannelCollectionReference.fromFirestore,
        toFirestore: ChannelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<MessageDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return MessageDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<MessageDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return MessageDocumentSnapshot._(
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
    Object? text = _sentinel,
    Object? type = _sentinel,
    Object? author = _sentinel,
  }) async {
    final json = {
      if (text != _sentinel) "text": text as String,
      if (type != _sentinel) "type": type as int,
      if (author != _sentinel) "author": author as String,
    };

    return reference.update(json);
  }

  Future<void> set(Message value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class MessageDocumentSnapshot extends FirestoreDocumentSnapshot {
  MessageDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Message> snapshot;

  @override
  MessageDocumentReference get reference {
    return MessageDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Message? data;
}

abstract class MessageQuery implements QueryReference<MessageQuerySnapshot> {
  @override
  MessageQuery limit(int limit);

  @override
  MessageQuery limitToLast(int limit);

  MessageQuery whereText({
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
  MessageQuery whereType({
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
  MessageQuery whereAuthor({
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

  MessageQuery orderByText({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByType({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByAuthor({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });
}

class _$MessageQuery extends QueryReference<MessageQuerySnapshot>
    implements MessageQuery {
  _$MessageQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Message> reference;

  MessageQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Message> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return MessageQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<MessageDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: MessageDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return MessageQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<MessageQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<MessageQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  MessageQuery limit(int limit) {
    return _$MessageQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  MessageQuery limitToLast(int limit) {
    return _$MessageQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  MessageQuery whereText({
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
    return _$MessageQuery(
      reference.where(
        'text',
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

  MessageQuery whereType({
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
    return _$MessageQuery(
      reference.where(
        'type',
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

  MessageQuery whereAuthor({
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
    return _$MessageQuery(
      reference.where(
        'author',
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

  MessageQuery orderByText({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('text', descending: descending);

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

    return _$MessageQuery(query, _collection);
  }

  MessageQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('type', descending: descending);

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

    return _$MessageQuery(query, _collection);
  }

  MessageQuery orderByAuthor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('author', descending: descending);

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

    return _$MessageQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$MessageQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MessageQuerySnapshot
    extends FirestoreQuerySnapshot<MessageQueryDocumentSnapshot> {
  MessageQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Message> snapshot;

  @override
  final List<MessageQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MessageDocumentSnapshot>> docChanges;
}

class MessageQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements MessageDocumentSnapshot {
  MessageQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Message> snapshot;

  @override
  MessageDocumentReference get reference {
    return MessageDocumentReference(snapshot.reference);
  }

  @override
  final Message data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
      users: json['users'] as List<dynamic>,
    );

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'users': instance.users,
    };
