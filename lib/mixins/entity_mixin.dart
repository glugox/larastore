 mixin EntityMixin {

  dynamic toEntity() {
    throw UnimplementedError('toEntity must be implemented by the implementing class.');
  }

  String getName() {
    return 'Name TODO';
  }
}

