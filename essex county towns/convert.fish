#!/usr/bin/env fish

shp2json $argv[1] |
    geoproject -n 'd3.geoConicConformal().parallels([41 + 43 / 60, 42 + 41 / 60]).rotate([71 + 30 / 60, 0]).fitSize([975,610], d)' |
    ndjson-split 'd.features' |
    ndjson-map 'delete d.properties.statefp20,
delete d.properties.countyfp20,
delete d.properties.cousubfp20,
delete d.properties.cousubns20,
delete d.properties.lsad20,
delete d.properties.classfp20,
delete d.properties.mtfcc20,
delete d.properties.cnectafp20,
delete d.properties.nectafp20,
delete d.properties.nctadvfp20,
delete d.properties.funcstat20,
delete d.properties.aland20,
delete d.properties.awater20,
delete d.properties.intptlat20,
delete d.properties.intptlon20,
delete d.properties.town20,
delete d.properties.town_id,
delete d.properties.fips_stco2,
delete d.properties.county20,
delete d.properties.type,
delete d.properties.fourcolor,
delete d.properties.area_acres,
delete d.properties.sq_miles,
delete d.properties.pop1960,
delete d.properties.pop1970,
delete d.properties.pop1980,
delete d.properties.pop1990,
delete d.properties.pop2000,
delete d.properties.pop2010,
delete d.properties.pop2020,
delete d.properties.popch10_20,
delete d.properties.housing20,
d' >temp-map.ndjson
geo2topo -n cities=temp-map.ndjson |
    toposimplify -p .005 -f |
    topoquantize 1e5 > essex-towns-topo.json
