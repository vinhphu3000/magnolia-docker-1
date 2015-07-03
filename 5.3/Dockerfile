FROM tomcat:7-jre7

ENV MAGNOLIA_VERSION 5.3.9
ENV MAGNOLIA_WAR_URL https://nexus.magnolia-cms.com/content/repositories/magnolia.public.releases/info/magnolia/bundle/magnolia-bundled-webapp/$MAGNOLIA_VERSION/magnolia-bundled-webapp-$MAGNOLIA_VERSION.war

#VOLUME ["/usr/local/tomcat/webapps/"]

RUN set -x \
	&& curl -fSL "$MAGNOLIA_WAR_URL" -o magnolia.war \
	&& curl -fSL "$MAGNOLIA_WAR_URL.sha1" -o magnolia.war.sha1 \
	&& echo " magnolia.war" >> magnolia.war.sha1 \
	&& sha1sum -c magnolia.war.sha1 \
	#&& rm -rf /usr/local/tomcat/webapps/* \
	&& rm -rf /usr/local/tomcat/webapps/ROOT \
	&& cp magnolia.war /usr/local/tomcat/webapps/magnoliaPublic.war \
	&& cp magnolia.war /usr/local/tomcat/webapps/magnoliaAuthor.war

VOLUME ["/usr/local/tomcat/webapps/"]

CMD ["catalina.sh", "run"]