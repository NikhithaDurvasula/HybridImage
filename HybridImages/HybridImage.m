close all;

input1 = im2single(imread('1a.jpg'));
input2 = im2single(imread('1b.jpg'));                                                                                                                                                                                                                                                                                                                                                             
cutoff_frequency = 10;
filter = fspecial('Gaussian',[cutoff_frequency*4+1 1],cutoff_frequency);
low_frequenc 
high_frequencies = input2 - my_imfilter(my_imfilter(input2,filter),filter');
hybrid_image = low_frequencies + high_frequencies;

figure(1); imshow(low_frequencies)
figure(2); imshow(high_frequencies + 0.5)
vis = vis_hybrid_image(hybrid_image);
figure(3); imshow(vis);
imwrite(low_frequencies,'LowFrequencies.jpg','quality',95);
imwrite(high_frequencies + 0.5,'HighFrequencies.jpg','quality',95);
imwrite(hybrid_image,'HybridImage.jpg','quality',95);