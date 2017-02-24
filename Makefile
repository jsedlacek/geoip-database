update: clean download
.PHONY: update

publish: update
	npm version patch
	git push origin head
	npm publish

download: GeoLite2-City.mmdb GeoLite2-Country.mmdb
.PHONY: download

clean:
	rm -rf GeoLite2-City.mmdb GeoLite2-Country.mmdb
.PHONY: clean

%.mmdb.gz:
	wget http://geolite.maxmind.com/download/geoip/database/$@

%.mmdb: %.mmdb.gz
	gzip -d $<
