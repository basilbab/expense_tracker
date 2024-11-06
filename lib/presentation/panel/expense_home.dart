import 'package:expense_tracker/domain/expense_model.dart';
import 'package:flutter/material.dart';

class ScreenExpenseHome extends StatefulWidget {
  const ScreenExpenseHome({super.key});

  @override
  State<ScreenExpenseHome> createState() => _ScreenExpenseHomeState();
}

class _ScreenExpenseHomeState extends State<ScreenExpenseHome> {
  final expenseAmountController = TextEditingController();
  final expenseNarrationConroller = TextEditingController();
  List<ExpenseModel> expenseModelList = [
    ExpenseModel(
        expenseId: '1',
        expenseTitle: 'Food',
        expenseAmount: '150',
        userId: '123'),
    ExpenseModel(
        expenseId: '2',
        expenseTitle: 'Trip',
        expenseAmount: '1500',
        userId: '123'),
    ExpenseModel(
        expenseId: '3',
        expenseTitle: 'Fashion',
        expenseAmount: '2550',
        userId: '123'),
  ];
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Expense Tracking App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: expenseAmountController,
                            decoration: const InputDecoration(
                                hintText: 'Amount',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              // Write the code to add the .....
                            },
                            child: const Text('Add'))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: expenseNarrationConroller,
                            decoration: const InputDecoration(
                                hintText: 'Expense Narration',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .19,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          //Write code to change status
                        },
                        leading: Text((index + 1).toString()),
                        title: Text(
                          expenseModelList[index].expenseAmount,
                          style: const TextStyle(
                              fontSize: 23, color: Colors.purple),
                        ),
                        subtitle: Row(
                          children: [
                            Text(expenseModelList[index].expenseTitle,
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.pink)),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  //Write the code to delete .....
                                },
                                icon: const Icon(Icons.delete))
                          ],
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: expenseModelList.length,
                ))
          ],
        ),
      ),
    );
  }
}
