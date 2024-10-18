FROM openproject/community:13.4.1

RUN rm -f /app/vendor/bundle/ruby/3.2.0/bundler/gems/clamav-client-29e78ae94307/test/fixtures/clamavtest.txt \
    /app/vendor/bundle/ruby/3.2.0/bundler/gems/clamav-client-29e78ae94307/test/fixtures/clamavtest.zip