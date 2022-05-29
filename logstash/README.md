# https://www.elastic.co/es/blog/introducing-logstash-input-http-plugin
# https://www.elastic.co/guide/en/logstash/current/ls-security.html

output {
  elasticsearch {
    hosts => ["https://es01:9200","https://es02:9200","https://es03:9200"]
    user => "elastic"
    password => "elasticpw"
    ssl => false
    ssl_certificate_verification => false
    cacert => "/usr/share/logstash/config/ca.crt"
  }
  stdout { codec => rubydebug}
}