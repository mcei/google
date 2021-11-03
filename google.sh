s="https://www.google.com/search?q="
i=0

for arg in "$@"
  do
    s=$s$arg
    (( i += 1 ))
    if [[ $i -lt $# ]]; then
    	s=$s+
    fi
  done

echo $s

w3m $s
