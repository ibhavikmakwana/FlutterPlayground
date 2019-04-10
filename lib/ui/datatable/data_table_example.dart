import 'package:flutter/material.dart';

class DataClassExample extends StatelessWidget {
  final String title;

  DataClassExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: DataTable(
          sortColumnIndex: 1,
          columns: [
            DataColumn(
                label: Text("One"),
                numeric: true,
                tooltip: "This is first column"),
            DataColumn(
              label: Text("Two"),
              numeric: false,
            )
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(
                  Text("Cell 1"),
                  showEditIcon: true,
                  onTap: () {
                    print("Cell 1 tapped");
                  },
                  placeholder: false,
                ),
                DataCell(
                  Text("Cell 2"),
                  onTap: () {},
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text("Cell 3"),
                  onTap: () {},
                ),
                DataCell(
                  Text("Cell 4"),
                  onTap: () {},
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text("Cell 5"),
                  onTap: () {},
                ),
                DataCell(
                  Text("Cell 6"),
                  onTap: () {},
                ),
              ],
            ),
          ],
          sortAscending: true,
        ),
      ),
    );
  }
}
