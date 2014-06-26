function [A labels columns] = main(dataset, k, print )
% function [A labels columns] = main(dataset, k, print )
% Input 'dataset' is the address of the dataset.
% Input 'k'is the number of required columns.
% Input 'print' if a flad that say if the answer should be printed.
% 
% Return in 'A' the data matrix, with instances as columns.
% Return in 'labels' a vector with the data labels.
% Return in 'columns' the index of the selected columns.
%
% Luzia de Menezes Romanetto <luziaromanetto@gmail.com>
% Luis Gustavo Nonato <lgustavo.nonato@gmail.com>
%
% Last update: 09/Jun/2014
     dataAddress = strcat(dataset,'.data');
     labelAddress = strcat(dataset,'.label');
     
     A=load(dataAddress);
     
     file=fopen(labelAddress,'r');
     tline = fgetl(file);     
     labels = regexp(tline,' ','split');
     
     [data columns] = CUR_SL(A,k);

     if( print == true )
        columns'
        labels(columns)'
     end
end