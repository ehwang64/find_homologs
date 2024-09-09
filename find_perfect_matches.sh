
#!/bin/bash
query="$1"
subject="$2"
output="$3"

blastn -query "$query" -subject "$subject" -task blastn-short -outfmt '6 qseqid sseqid pident length qlen slen' -out$
awk '($3 == 100) && ($4 == $5)' temp_result.txt > "$output"

match_count=$(wc -l < $output)
echo $match_count
rm temp_result.txt



