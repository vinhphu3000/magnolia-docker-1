# Supported tags and respective `Dockerfile` links

-	[`5.3` (*5.3/Dockerfile*)](https://github.com/TriMM/magnolia-docker/blob/master/5.3/Dockerfile)
-	[`5.4` (*5.4/Dockerfile*)](https://github.com/TriMM/magnolia-docker/blob/master/5.4/Dockerfile)

# What is Magnolia?

Magnolia is an open-source content management system (CMS) developed by Magnolia International Ltd., based in Basel, Switzerland. It is based on Content repository API for Java (JSR-283).

> [wikipedia.org/wiki/Magnolia_(CMS)](https://en.wikipedia.org/wiki/Magnolia_\(CMS\))

![logo](https://www.magnolia-cms.com/resources/templating-kit/themes/corporate2015/img/logo/magnolia_logo.png)

# How to use this image
Please do **not** use these images in production for now.

## start a Magnolia author and public instance

	docker run --name some-magnolia -p 8080:8080 -d trimm/magnolia

The Magnolia instances will be available at [docker.host:8080/magnoliaAuthor](http://docker.host:8080/magnoliaAuthor) and [docker.host:8080/magnoliaPublic](http://docker.host:8080/magnoliaPublic) .
The default login for the admin interface is *superuser* / *superuser*
