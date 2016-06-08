%dataset preparation

files = readdir ('spamEX');
fet = zeros(length(files)-2,1899); 
size(fet)
for i = 1:length(files)-2
	file = files(i+2);
	name = cell2mat(file);
	file_contents = readFile(strcat('spamEX/',name));
	word_indices = processEmail(file_contents);
	fet(i,:) = emailFeatures(word_indices)';
end


