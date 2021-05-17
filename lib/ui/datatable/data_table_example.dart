import 'package:flutter/material.dart';

class DataClassExample extends StatelessWidget {
  final String title;

  const DataClassExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: DataTable(
          sortColumnIndex: 1,
          columns: const [
            DataColumn(
              label: Text("One"),
              numeric: true,
              tooltip: "This is first column",
            ),
            DataColumn(
              label: Text("Two"),
            )
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(
                  const Text("Cell 1"),
                  showEditIcon: true,
                  onTap: () {
                    print("Cell 1 tapped");
                  },
                ),
                DataCell(
                  const Text("Cell 2"),
                  onTap: () {},
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  const Text("Cell 3"),
                  onTap: () {},
                ),
                DataCell(
                  const Text("Cell 4"),
                  onTap: () {},
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  const Text("Cell 5"),
                  onTap: () {},
                ),
                DataCell(
                  const Text("Cell 6"),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
