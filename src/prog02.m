clear

% load('dataBase128');
load('dataBase256');
% mesh(H)

Input_filename = 'input.txt';
Output_filename = 'output.txt';
Candidates = 10;  % Number of candidates to retrieve

Input = textread(Input_filename,'%s');
Num_images = length(Input); 
a=fopen(Output_filename,'w'); 

Table128 = createTable(); % Creació de la taula de 128 bins
Table256 = createTable256(); % Creació de la taula de 256 bins

tic

for i=1:Num_images
    
    fprintf(a,'Retrieved list for query image %s \n',char(Input(i)));
        
    nom = ['./UKentuckyDatabase/', sprintf('%s', char(Input(i)))];
    
%     im = rgb2dsh(imread(nom), Table128);  % ho passo a DSH, en comptes de Gray
%     h1 = imhist(2*im, 128); % només arriben valors fins 128, llavors per
%                             ocupar menys espai de memòria
    im = rgb2dsh(imread(nom), Table256);
    h1 = imhist(im);
    
    for i=1:2000
        d(i)= distance5(h1', H(i,:));
    end

    [sd, Similar_images] = sort(d);

    for j=1:Candidates
        fprintf(a,'%s\n',sprintf('ukbench%05d.jpg', Similar_images(j)-1));
    end
    fprintf(a,'\n');
end

toc
