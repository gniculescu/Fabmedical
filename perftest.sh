host="fabmedical-603140.mongo.cosmos.azure.com"
username="fabmedical-603140"
password="FqM1ah6WC3JuHxxVsVYw9es4ikI0AAQoYJgsfRYXkxcLetwPuIs1bAXcjhg02bdn4TiIQ8kggvyzQZFruP5pPg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
