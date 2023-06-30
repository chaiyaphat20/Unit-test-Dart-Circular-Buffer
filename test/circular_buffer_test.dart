import 'package:circular_buffer/circular_buffer.dart';
import 'package:test/test.dart';

void main() {
  group('circular-buffer', () {
    test('1 : ถ้าสร้าง circular-buffer count จะต้องเท่ากับ 0 ', () {
      // arrange
      int expectedValue = 0;
      CircularBuffer circularBuffer = CircularBuffer();

      // act
      int actualValue = circularBuffer.count();

      // assert
      expect(actualValue, expectedValue);
    });

    test('1.1 : ถ้าสร้าง circular-buffer, default capacity ต้องเท่ากับ 3', () {
      // arrange
      int expectedValue = 3;
      CircularBuffer circularBuffer = CircularBuffer();

      // act
      int actualValue = circularBuffer.cap();

      // assert
      expect(actualValue, expectedValue);
    });

    test(
        '1.2 : ถ้าสร้าง circular-buffer with capacity 5, capacity ต้องเท่ากับ 5',
        () {});

    test(
        '2 : ถ้าสร้าง circular-buffer ใส่ข้อมูล 1, count ต้องเท่ากับ 1', () {});

    test('3 : ถ้าสร้าง circular-buffer ใส่ข้อมูล 2, read ต้องเท่ากับ 2', () {});
    test(
        '3.1 : ถ้าสร้าง circular-buffer ใส่ข้อมูล 2, เมื่อทำการ read ไปหนึ่งครั้ง, count ต้องเท่ากับ 0',
        () {});

    test(
        '4 : ถ้าสร้าง circular-buffer ใส่ข้อมูล 1 และ 2, เมื่อทำการ read ต้องเท่ากับ 1',
        () {});

    test(
        '4.1 : ถ้าสร้าง circular-buffer ใส่ข้อมูล 1 และ 2, เมื่อทำการ read, count ต้องเท่ากับ 1',
        () {});

    test(
        '5 : ถ้าสร้าง circular-buffer ใส่ข้อมูล 1 และ 2, เมื่อทำการ read ครั้งที่ 2 , value ต้องเท่ากับ 2',
        () {});

    test(
        '7 : ถ้าสร้าง circular-buffer ใส่ข้อมูล 1 ,2 และ 3, เมื่อทำการ read ครั้งที่ 1 ,push 4 เข้าไป และ read 3 ครั้ง, value ต้องเท่ากับ 4',
        () {});

    test(
        '8 : ถ้าสร้าง circular-buffer ใส่ข้อมูล 1 ,2 , 3 ,4  และ 5, เมื่อทำการ read ครั้งที่ 1 , value ต้องเท่ากับ 3 เมื่อ capacity = 4',
        () {});
    test(
        '9 : ถ้าสร้าง circular-buffer ใส่ข้อมูล 1 ,2 , 3 และ 4, เมื่อทำการ read ครั้งที่ 1  และ  read ครั้งที่สอง, value ต้องเท่ากับ 2 ',
        () {});
  });
}
