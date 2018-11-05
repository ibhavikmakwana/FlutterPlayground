class SampleData {
  SampleData(this.title, [this.children = const <SampleData>[]]);

  final String title;
  final List<SampleData> children;
}
