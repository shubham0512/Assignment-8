a = load '/tmp/wordcount.txt' as (line:chararray);
b = foreach a generate FLATTEN(TOKENIZE(line,' ')) as word;
c = group b by word;
d = foreach c generate group,COUNT(b.word);
dump d;

