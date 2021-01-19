import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// {@template user}
///  User model
///
/// [User.empty] represents an unauthenticated user
/// {@endtemplate}

class User extends Equatable {
  /// {@macro user}
  const User({
    @required this.email,
    @required this.id,
    this.username
    ,
  })  : assert(email != null),
        assert(id != null);

  /// The current user's email address.
  final String email;

  /// The current user's id.
  final String id;

  /// The current user's name (display name).
  final String username
  ;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(email: '', id: '', username
  : '');

  @override
  List<Object> get props => [email, id, username
  ];
}
