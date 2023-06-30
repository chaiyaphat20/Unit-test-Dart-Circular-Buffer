class CircularBuffer {
  int _capacity = 3; //ขนาด buffer [_,_,_,_,_] cap = 5
  int _count = 0; //จำนวน ข้อมูลใน buffer เช่น [1,2,3,_,_]  count = 3
  int _indexRead = 0;
  int _indexWrite = 0;
  late List<int> _list = List.generate(_capacity, (index) => 0);

  int count() {
    return _count;
  }

  int cap({int input = 0}) {
    _list = List.generate(_capacity + input, (index) => 0);
    return _capacity + input;
  }

  void put(int value) {
    _list[_indexWrite++] = value;
    ++_count;
  }

  int read() {
    --_count;
    int result = _list[_indexRead];
    _indexRead++;
    return result;
  }
}
