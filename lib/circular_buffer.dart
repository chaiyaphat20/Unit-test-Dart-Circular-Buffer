class CircularBuffer {
  late int _capacity; //ขนาด buffer [_,_,_,_,_] cap = 5
  int _count = 0; //จำนวน ข้อมูลใน buffer เช่น [1,2,3,_,_]  count = 3
  int _indexRead = 0;
  int _indexWrite = 0;
  late List<int> _list;
  CircularBuffer({int capacity = 3}) {
    _capacity = capacity;
    _list = List.generate(_capacity, (index) => 0);
  }

  int count() {
    return _count;
  }

  int capacity() {
    return _capacity;
  }

  void push(int value) {
    _list[_indexWrite] = value;
    _indexWrite++;
    _indexWrite %= _capacity;
    _count++;
    if (overflow) {
      read();
    }
  }

  bool get overflow => _count > _capacity;

  int read() {
    int value = _list[_indexRead];
    _indexRead++;
    _indexRead %= _capacity;
    _count--;
    return value;
  }
}