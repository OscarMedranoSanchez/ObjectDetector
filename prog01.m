clear

% % for i = 1:2000
% %     nom = ['./UKentuckyDatabase/ukbench', sprintf('%05d.jpg', i-1)];
% %     imag = rgb2gray(imread(nom));
% %     H(i, :) = imhist(imag, 256);    
% % end
% 
% % mesh(H);
% 
% % save('dataBase', 'H');

load('dataBase');

Input_filename = 'input.txt';
Output_filename= 'output.txt';
Candidates     = 10;  % Number of candidates to retrieve

Input = textread(Input_filename,'%s');
Num_images = length(Input); 
a=fopen(Output_filename,'w'); 

for i=1:Num_images
    
    fprintf(a,'Retrieved list for query image %s \n',char(Input(i)));
    
    % Here, is suposed that the system gets a index vector to the most similar
    % images in the vector Similar_images;
    Similar_images = (1:Candidates);

    % Writing the results at the Output file
    for j=1:Candidates
        fprintf(a,'%s\n',sprintf('ukbench%05d.jpg',Similar_images(j)-1));
    end
    fprintf(a,'\n');
end

% function distancia = calcular_distancia(img1, img2)
%     distancia = 1 - ssim(img1, img2);
% end
