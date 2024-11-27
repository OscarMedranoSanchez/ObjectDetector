clear

Input_filename = 'input.txt';
Output_filename= 'output.txt';
Candidates     = 10;  % Number of candidates to retrieve

Input = textread(Input_filename,'%s');
Output = textread(Output_filename,'%s');
Num_images = length(Input); 

matPrecision = zeros(Num_images, Candidates);
matRecall = zeros(Num_images,Candidates);

for i=1:Num_images
    
    num = str2double(Input{i}(8:12));
    modulo = mod(num, 4);
    initial_photo = num - modulo;
    aciertos = 0;
    
    for j=1:Candidates
        if str2double(Output{16*(i-1) + 6 + j}(8:12)) >= initial_photo && ...
           str2double(Output{16*(i-1) + 6 + j}(8:12)) <= (initial_photo + 3)
            aciertos = aciertos + 1;
        end
        matPrecision(i, j) = aciertos / j;
        matRecall(i, j) = aciertos / 4;
    end
end

totPrecision = mean(matPrecision);
totRecall = mean(matRecall);
fscore = ((2*totPrecision.*totRecall)./(totPrecision + totRecall));
max(fscore)

plot(totRecall,totPrecision);grid
axis([0 1 0 1])
