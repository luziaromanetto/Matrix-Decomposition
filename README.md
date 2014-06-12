Matrix-Decomposition
====================

Luzia de Menezes Romanetto <luziaromanetto@gmail.com>

Luis Gustavo Nonato <lgustavo.nonato@gmail.com>

Last update: 09/Jun/2014

This application has two matlab function 'main' and 'columnSelection', and two datasets 'wine' and 'samsung'.

The main function given an address and a number k, read a dataset and returns its k selected columns. 
The columnSelection function given a data matrix and a number k, returns its k selected columns.

Here is an example of use:

> [ A labels columns] = main('./datasets/wine/wine', 5,true)

its return in columns the 5 columns selected by the proposed method.

Each dataset is given in three file: with extension .date containing the data matrix, with another extension .label
containing the class label of each instance, and the last with extension .info that contains the description of the dataset.
