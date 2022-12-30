// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String age, String email, String mobile)
        addStudentList,
    required TResult Function() getStudentList,
    required TResult Function(int id) deleteStudent,
    required TResult Function(int id, int index, String name, String age,
            String email, String mobile)
        updateStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult? Function()? getStudentList,
    TResult? Function(int id)? deleteStudent,
    TResult? Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult Function()? getStudentList,
    TResult Function(int id)? deleteStudent,
    TResult Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentList value) addStudentList,
    required TResult Function(GetStudentList value) getStudentList,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(UpdateStudent value) updateStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentList value)? addStudentList,
    TResult? Function(GetStudentList value)? getStudentList,
    TResult? Function(DeleteStudent value)? deleteStudent,
    TResult? Function(UpdateStudent value)? updateStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentList value)? addStudentList,
    TResult Function(GetStudentList value)? getStudentList,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentListEventCopyWith<$Res> {
  factory $StudentListEventCopyWith(
          StudentListEvent value, $Res Function(StudentListEvent) then) =
      _$StudentListEventCopyWithImpl<$Res, StudentListEvent>;
}

/// @nodoc
class _$StudentListEventCopyWithImpl<$Res, $Val extends StudentListEvent>
    implements $StudentListEventCopyWith<$Res> {
  _$StudentListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddStudentListCopyWith<$Res> {
  factory _$$AddStudentListCopyWith(
          _$AddStudentList value, $Res Function(_$AddStudentList) then) =
      __$$AddStudentListCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String age, String email, String mobile});
}

/// @nodoc
class __$$AddStudentListCopyWithImpl<$Res>
    extends _$StudentListEventCopyWithImpl<$Res, _$AddStudentList>
    implements _$$AddStudentListCopyWith<$Res> {
  __$$AddStudentListCopyWithImpl(
      _$AddStudentList _value, $Res Function(_$AddStudentList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? email = null,
    Object? mobile = null,
  }) {
    return _then(_$AddStudentList(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddStudentList implements AddStudentList {
  const _$AddStudentList(
      {required this.name,
      required this.age,
      required this.email,
      required this.mobile});

  @override
  final String name;
  @override
  final String age;
  @override
  final String email;
  @override
  final String mobile;

  @override
  String toString() {
    return 'StudentListEvent.addStudentList(name: $name, age: $age, email: $email, mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentList &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age, email, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentListCopyWith<_$AddStudentList> get copyWith =>
      __$$AddStudentListCopyWithImpl<_$AddStudentList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String age, String email, String mobile)
        addStudentList,
    required TResult Function() getStudentList,
    required TResult Function(int id) deleteStudent,
    required TResult Function(int id, int index, String name, String age,
            String email, String mobile)
        updateStudent,
  }) {
    return addStudentList(name, age, email, mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult? Function()? getStudentList,
    TResult? Function(int id)? deleteStudent,
    TResult? Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
  }) {
    return addStudentList?.call(name, age, email, mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult Function()? getStudentList,
    TResult Function(int id)? deleteStudent,
    TResult Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
    required TResult orElse(),
  }) {
    if (addStudentList != null) {
      return addStudentList(name, age, email, mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentList value) addStudentList,
    required TResult Function(GetStudentList value) getStudentList,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(UpdateStudent value) updateStudent,
  }) {
    return addStudentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentList value)? addStudentList,
    TResult? Function(GetStudentList value)? getStudentList,
    TResult? Function(DeleteStudent value)? deleteStudent,
    TResult? Function(UpdateStudent value)? updateStudent,
  }) {
    return addStudentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentList value)? addStudentList,
    TResult Function(GetStudentList value)? getStudentList,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    required TResult orElse(),
  }) {
    if (addStudentList != null) {
      return addStudentList(this);
    }
    return orElse();
  }
}

abstract class AddStudentList implements StudentListEvent {
  const factory AddStudentList(
      {required final String name,
      required final String age,
      required final String email,
      required final String mobile}) = _$AddStudentList;

  String get name;
  String get age;
  String get email;
  String get mobile;
  @JsonKey(ignore: true)
  _$$AddStudentListCopyWith<_$AddStudentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStudentListCopyWith<$Res> {
  factory _$$GetStudentListCopyWith(
          _$GetStudentList value, $Res Function(_$GetStudentList) then) =
      __$$GetStudentListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStudentListCopyWithImpl<$Res>
    extends _$StudentListEventCopyWithImpl<$Res, _$GetStudentList>
    implements _$$GetStudentListCopyWith<$Res> {
  __$$GetStudentListCopyWithImpl(
      _$GetStudentList _value, $Res Function(_$GetStudentList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStudentList implements GetStudentList {
  const _$GetStudentList();

  @override
  String toString() {
    return 'StudentListEvent.getStudentList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStudentList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String age, String email, String mobile)
        addStudentList,
    required TResult Function() getStudentList,
    required TResult Function(int id) deleteStudent,
    required TResult Function(int id, int index, String name, String age,
            String email, String mobile)
        updateStudent,
  }) {
    return getStudentList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult? Function()? getStudentList,
    TResult? Function(int id)? deleteStudent,
    TResult? Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
  }) {
    return getStudentList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult Function()? getStudentList,
    TResult Function(int id)? deleteStudent,
    TResult Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
    required TResult orElse(),
  }) {
    if (getStudentList != null) {
      return getStudentList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentList value) addStudentList,
    required TResult Function(GetStudentList value) getStudentList,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(UpdateStudent value) updateStudent,
  }) {
    return getStudentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentList value)? addStudentList,
    TResult? Function(GetStudentList value)? getStudentList,
    TResult? Function(DeleteStudent value)? deleteStudent,
    TResult? Function(UpdateStudent value)? updateStudent,
  }) {
    return getStudentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentList value)? addStudentList,
    TResult Function(GetStudentList value)? getStudentList,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    required TResult orElse(),
  }) {
    if (getStudentList != null) {
      return getStudentList(this);
    }
    return orElse();
  }
}

abstract class GetStudentList implements StudentListEvent {
  const factory GetStudentList() = _$GetStudentList;
}

/// @nodoc
abstract class _$$DeleteStudentCopyWith<$Res> {
  factory _$$DeleteStudentCopyWith(
          _$DeleteStudent value, $Res Function(_$DeleteStudent) then) =
      __$$DeleteStudentCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteStudentCopyWithImpl<$Res>
    extends _$StudentListEventCopyWithImpl<$Res, _$DeleteStudent>
    implements _$$DeleteStudentCopyWith<$Res> {
  __$$DeleteStudentCopyWithImpl(
      _$DeleteStudent _value, $Res Function(_$DeleteStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteStudent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteStudent implements DeleteStudent {
  const _$DeleteStudent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'StudentListEvent.deleteStudent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStudent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStudentCopyWith<_$DeleteStudent> get copyWith =>
      __$$DeleteStudentCopyWithImpl<_$DeleteStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String age, String email, String mobile)
        addStudentList,
    required TResult Function() getStudentList,
    required TResult Function(int id) deleteStudent,
    required TResult Function(int id, int index, String name, String age,
            String email, String mobile)
        updateStudent,
  }) {
    return deleteStudent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult? Function()? getStudentList,
    TResult? Function(int id)? deleteStudent,
    TResult? Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
  }) {
    return deleteStudent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult Function()? getStudentList,
    TResult Function(int id)? deleteStudent,
    TResult Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentList value) addStudentList,
    required TResult Function(GetStudentList value) getStudentList,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(UpdateStudent value) updateStudent,
  }) {
    return deleteStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentList value)? addStudentList,
    TResult? Function(GetStudentList value)? getStudentList,
    TResult? Function(DeleteStudent value)? deleteStudent,
    TResult? Function(UpdateStudent value)? updateStudent,
  }) {
    return deleteStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentList value)? addStudentList,
    TResult Function(GetStudentList value)? getStudentList,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(this);
    }
    return orElse();
  }
}

abstract class DeleteStudent implements StudentListEvent {
  const factory DeleteStudent({required final int id}) = _$DeleteStudent;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteStudentCopyWith<_$DeleteStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStudentCopyWith<$Res> {
  factory _$$UpdateStudentCopyWith(
          _$UpdateStudent value, $Res Function(_$UpdateStudent) then) =
      __$$UpdateStudentCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      int index,
      String name,
      String age,
      String email,
      String mobile});
}

/// @nodoc
class __$$UpdateStudentCopyWithImpl<$Res>
    extends _$StudentListEventCopyWithImpl<$Res, _$UpdateStudent>
    implements _$$UpdateStudentCopyWith<$Res> {
  __$$UpdateStudentCopyWithImpl(
      _$UpdateStudent _value, $Res Function(_$UpdateStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? name = null,
    Object? age = null,
    Object? email = null,
    Object? mobile = null,
  }) {
    return _then(_$UpdateStudent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStudent implements UpdateStudent {
  const _$UpdateStudent(
      {required this.id,
      required this.index,
      required this.name,
      required this.age,
      required this.email,
      required this.mobile});

  @override
  final int id;
  @override
  final int index;
  @override
  final String name;
  @override
  final String age;
  @override
  final String email;
  @override
  final String mobile;

  @override
  String toString() {
    return 'StudentListEvent.updateStudent(id: $id, index: $index, name: $name, age: $age, email: $email, mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStudent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, index, name, age, email, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStudentCopyWith<_$UpdateStudent> get copyWith =>
      __$$UpdateStudentCopyWithImpl<_$UpdateStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, String age, String email, String mobile)
        addStudentList,
    required TResult Function() getStudentList,
    required TResult Function(int id) deleteStudent,
    required TResult Function(int id, int index, String name, String age,
            String email, String mobile)
        updateStudent,
  }) {
    return updateStudent(id, index, name, age, email, mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult? Function()? getStudentList,
    TResult? Function(int id)? deleteStudent,
    TResult? Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
  }) {
    return updateStudent?.call(id, index, name, age, email, mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String age, String email, String mobile)?
        addStudentList,
    TResult Function()? getStudentList,
    TResult Function(int id)? deleteStudent,
    TResult Function(int id, int index, String name, String age, String email,
            String mobile)?
        updateStudent,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(id, index, name, age, email, mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentList value) addStudentList,
    required TResult Function(GetStudentList value) getStudentList,
    required TResult Function(DeleteStudent value) deleteStudent,
    required TResult Function(UpdateStudent value) updateStudent,
  }) {
    return updateStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStudentList value)? addStudentList,
    TResult? Function(GetStudentList value)? getStudentList,
    TResult? Function(DeleteStudent value)? deleteStudent,
    TResult? Function(UpdateStudent value)? updateStudent,
  }) {
    return updateStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentList value)? addStudentList,
    TResult Function(GetStudentList value)? getStudentList,
    TResult Function(DeleteStudent value)? deleteStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(this);
    }
    return orElse();
  }
}

abstract class UpdateStudent implements StudentListEvent {
  const factory UpdateStudent(
      {required final int id,
      required final int index,
      required final String name,
      required final String age,
      required final String email,
      required final String mobile}) = _$UpdateStudent;

  int get id;
  int get index;
  String get name;
  String get age;
  String get email;
  String get mobile;
  @JsonKey(ignore: true)
  _$$UpdateStudentCopyWith<_$UpdateStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentListState {
// required final String name,
// required final String age,
// required final String email,
// required final String mobile,
  List<StudentModal> get studentModelList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentListStateCopyWith<StudentListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentListStateCopyWith<$Res> {
  factory $StudentListStateCopyWith(
          StudentListState value, $Res Function(StudentListState) then) =
      _$StudentListStateCopyWithImpl<$Res, StudentListState>;
  @useResult
  $Res call({List<StudentModal> studentModelList});
}

/// @nodoc
class _$StudentListStateCopyWithImpl<$Res, $Val extends StudentListState>
    implements $StudentListStateCopyWith<$Res> {
  _$StudentListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentModelList = null,
  }) {
    return _then(_value.copyWith(
      studentModelList: null == studentModelList
          ? _value.studentModelList
          : studentModelList // ignore: cast_nullable_to_non_nullable
              as List<StudentModal>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $StudentListStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StudentModal> studentModelList});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$StudentListStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentModelList = null,
  }) {
    return _then(_$_Initial(
      studentModelList: null == studentModelList
          ? _value._studentModelList
          : studentModelList // ignore: cast_nullable_to_non_nullable
              as List<StudentModal>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required final List<StudentModal> studentModelList})
      : _studentModelList = studentModelList;

// required final String name,
// required final String age,
// required final String email,
// required final String mobile,
  final List<StudentModal> _studentModelList;
// required final String name,
// required final String age,
// required final String email,
// required final String mobile,
  @override
  List<StudentModal> get studentModelList {
    if (_studentModelList is EqualUnmodifiableListView)
      return _studentModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentModelList);
  }

  @override
  String toString() {
    return 'StudentListState(studentModelList: $studentModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._studentModelList, _studentModelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_studentModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements StudentListState {
  const factory _Initial({required final List<StudentModal> studentModelList}) =
      _$_Initial;

  @override // required final String name,
// required final String age,
// required final String email,
// required final String mobile,
  List<StudentModal> get studentModelList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
