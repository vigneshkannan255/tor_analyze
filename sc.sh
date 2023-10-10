for line in `cat links`
do
    name=$(echo $line | sed 's/http\?:\/\///')
    #echo $line
    curl --socks5 localhost:9050 --socks5-hostname localhost:9050 -s $line | html2text > linkdata/$name
done
