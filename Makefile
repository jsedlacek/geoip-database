update: clean download
.PHONY: update

download: GeoLite2-City.mmdb GeoLite2-Country.mmdb
.PHONY: download

clean:
	rm -rf GeoLite2-City.mmdb GeoLite2-Country.mmdb
.PHONY: clean

release:
	npm version patch
	git push origin head --tag
.PHONY: release

test:
	node test.js
.PHONY: test

%.mmdb.gz:
	wget http://geolite.maxmind.com/download/geoip/database/$@

%.mmdb: %.mmdb.gz
	gzip -d $<
