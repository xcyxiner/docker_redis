FROM zvelo/redis-trib
ADD redis-trib.rb /usr/local/bin/redis-trib.rb
RUN chmod 755 /usr/local/bin/redis-trib.rb
ENTRYPOINT ["/usr/local/bin/redis-trib.rb"]
