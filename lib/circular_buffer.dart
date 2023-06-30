class CircularBuffer {
  late int _capacity;

  int _size = 0;

  int _indexread = 0;

  int _indexwrite = 0;

  late List<int> _list;

  CircularBuffer({int capacity = 3}) {
    _capacity = capacity;

    _list = List.generate(_capacity, (index) => 0);
  }

  int count() {
    return _size;
  }

  int capacity() {
    return _capacity;
  }

  void put(int value) {
    _list[_indexwrite] = value;

    _indexwrite++;

    _indexwrite %= _capacity;

    _size++;

    if (overflow) {
      read();
    }
  }

  bool get overflow => _size > _capacity;

  int read() {
    int value = _list[_indexread];

    _indexread++;

    _indexread %= _capacity;

    _size--;

    return value;
  }
}
