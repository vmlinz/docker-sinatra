FROM ruby:2.2-onbuild

EXPOSE 4567
CMD ["/usr/local/bundle/bin/foreman","start","-d","/usr/src/app"]



