# Massachusetts 2020 Town Census

https://www.mass.gov/info-details/massgis-data-2020-us-census-towns

Download the non-projected shape file by clicking [`View Data in MassMapper`](https://maps.massgis.digital.mass.gov/MassMapper/MassMapper.html?bl=MassGIS%20Basemap__100&l=massgis:GISDATA.CENSUS2020TOWNS_ARC__GISDATA.CENSUS2020TOWNS_ARC::Default__ON__100,massgis:GISDATA.CENSUS2020TOWNS_POLY__GISDATA.CENSUS2020TOWNS_POLY::Default__ON__100&b=-71.74965490820436,42.18119114000181,-70.76843847754029,42.57935390208944) then selecting `WGS84 (Latitude-Longitude) - EPSG:4326` as the output coordinate system.

Convert into topojson by running `./convert.fish Census\ 2020\ Towns/GISDATA_CENSUS2020TOWNS_POLYPolygon.shp`
