class CircularBuffer {
  int _capacity = 5; //ขนาด buffer [_,_,_,_,_] cap = 5
  int _count = 0; //จำนวน ข้อมูลใน buffer เช่น [1,2,3,_,_]  count = 3
  int _indexRead = 0;
  int _indexWrite = 0;
  late List<int> _list = List.generate(_capacity, (index) => 0);

  int count() {
    int totalValue = 0;

    totalValue = _list.where((element) => element != 0).length;

    return totalValue;
  }

  int cap() {
    return _capacity;
  }

  void put(int value) {
    _list[_indexWrite++] = value;
  }
}
