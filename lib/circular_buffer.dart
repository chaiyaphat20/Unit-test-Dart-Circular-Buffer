class CircularBuffer {
  int _capacity = 3; //ขนาด buffer [_,_,_,_,_] cap = 5
  int _count = 0; //จำนวน ข้อมูลใน buffer เช่น [1,2,3,_,_]  count = 3
  int _indexRead = 0;
  int _indexWrite = 0;
  late List<int> _list;

  int count() {
    return _count;
  }

  int cap() {
    return _capacity;
  }
}
