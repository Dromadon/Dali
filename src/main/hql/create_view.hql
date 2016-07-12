CREATE VIEW nasa_v0 AS SELECT * FROM nasa;

CREATE VIEW nasa_v1_0 AS SELECT host, time, request FROM nasa_v0;
CREATE VIEW nasa_v1_2 AS SELECT host, time, request, httpcode FROM nasa_v0;
CREATE VIEW nasa_v2_0 AS SELECT host, time, split(request, ' ')[0] as method, split(request, ' ')[1] as uri, httpcode FROM nasa_v0;
CREATE VIEW nasa_v3_0 AS SELECT * FROM nasa_v0 WHERE ;