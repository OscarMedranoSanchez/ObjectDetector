clear

Table128 = createTable();
Table256 = createTable256();
for i = 1:2000
    nom = ['./UKentuckyDatabase/ukbench', sprintf('%05d.jpg', i-1)];
%     imag = rgb2dsh(imread(nom), Table128);
%     H(i, :) = imhist(2*imag, 128);    
    imag = rgb2dsh(imread(nom), Table256);
    H(i, :) = imhist(imag);    
end

mesh(H);

% save('dataBase128', 'H');
save('dataBase256', 'H');
