const test = require('tape');
const database = require('./index');
const maxmind = require('maxmind');

test('city', t => {
  const cityLookup = maxmind.openSync(database.city);
  const { city, country, location } = cityLookup.get('83.208.93.244');
  t.equal(city.names.en, 'Prague');
  t.equal(country.names.en, 'Czechia');
  t.equal(location.time_zone, 'Europe/Prague');
  t.end();
});

test('country', t => {
  const countryLookup = maxmind.openSync(database.country);
  const { country } = countryLookup.get('83.208.93.244');
  t.equal(country.names.en, 'Czechia');
  t.end();
});
