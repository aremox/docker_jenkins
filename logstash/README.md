# https://towardsdatascience.com/jenkins-events-logs-and-metrics-7c3e8b28962b
# https://www.elastic.co/es/blog/introducing-logstash-input-http-plugin
# https://www.elastic.co/guide/en/logstash/current/ls-security.html

output {
  elasticsearch {
    hosts => ["https://es01:9200","https://es02:9200","https://es03:9200"]
    user => "logstashinter"
    password => "logstashinterpw"
    ssl => true
    ssl_certificate_verification => false
    cacert => "/usr/share/logstash/config/ca.crt"
  }
  stdout { codec => rubydebug}
}