# geoip-database
![build status](https://travis-ci.org/jsedlacek/geoip-database.svg?branch=master)

GeoLite2 databases packaged for npm. Contains GeoLite2-City.mmdb and GeoLite2-Country.mmdb files.

# Install

```
npm install geoip-database
```

# Usage

Ideally used together with [maxmind](https://github.com/runk/node-maxmind) or other geoip module that requires geoip database installed separately.

```js
const database = require('geoip-database');
const maxmind = require('maxmind');
const cityLookup = maxmind.openSync(database.city);

const {city, country, location} = cityLookup.get('83.208.93.244');
console.log(city.names.en); // Prague
```

# License

The GeoLite2 databases are distributed under the Creative Commons Attribution-ShareAlike 4.0 International License.

This product includes GeoLite2 data created by MaxMind, available from http://www.maxmind.com.
