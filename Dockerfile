FROM tomcat:8

ENV DIR_WEBAPP /usr/local/tomcat/webapps

RUN  rm -rf $DIR_WEBAPP/*  

ADD nethospital.war $DIR_WEBAPP/nethospital.war

RUN mkdir -p $DIR_WEBAPP/ROOT/nethospital

RUN  unzip $DIR_WEBAPP/nethospital.war  -d  $DIR_WEBAPP/ROOT/nethospital/

CMD ["catalina.sh", "run"]
