import 'package:help/models/memo_data.dart';

void main() {
  List<MemoData> items = [
    MemoData(content: 'memo 1', createAt: DateTime(2022, 12, 31)),
    MemoData(content: 'memo 2', createAt: DateTime(2022, 1, 1)),
    MemoData(content: 'memo 3', createAt: DateTime(2023, 1, 5)),
    MemoData(content: 'memo 4', createAt: DateTime(2023, 2, 10)),
  ];

  for (var memo in groupMemoDataByYear(items).entries) {
    print(memo.toString());
  }
}

Map<int,List<MemoData>> groupMemoDataByYear(List<MemoData> items) {

  Map<int, List<MemoData>> memoByYear = {};

  for (var item in items) {
    int year = item.createAt.year;

    if (!memoByYear.containsKey(year)) {
      memoByYear[year] = [];
    }
    memoByYear[year]?.add(item);
  }
  return memoByYear;
}