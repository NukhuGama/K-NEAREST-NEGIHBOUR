clear all;
clc;
DataTrain = importdata('DataTrain_Tugas3_AI.csv');
DataTest = importdata('DataTest_Tugas3_AI.csv');

% Andaikan k = 79 
k = 79

n=1;


for j=1:1:200
    
    for i=1:1:800
        
        % Euclidean Distance 
        jarak(j,1) = sqrt((DataTrain.data(i,2)-DataTest.data(j,2))^2 + (DataTrain.data(i,3)-DataTest.data(j,3))^2 + (DataTrain.data(i,4)-DataTest.data(j,4))^2 + (DataTrain.data(i,5)-DataTest.data(j,5))^2 + (DataTrain.data(i,6)-DataTest.data(j,6))^2) 
       
    
   
    end;   
end;


% Mengsorting jarak  
makeSorting = sort(jarak);

for y=1:1:k
    %pilih jarak yang terkecil sebanyak k
     nilaiMinimum(y,1) = makeSorting(y,1);  

     %hitung akurasi 
     Akurasi(y,1) = (nilaiMinimum(y,1)/200) * 100 ;

     % Akurasi yang bagus adalah yang lebih besar dari 70%
     if Akurasi(y,1) > 0.70 
        
         nilaiOptimum(n,1) = DataTrain.data(y,7); 
         n=n+1
         
     end;
     
end; 


csvwrite('TebakanTugas3.csv',nilaiOptimum); 

 








