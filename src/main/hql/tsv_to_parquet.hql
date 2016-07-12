CREATE TEMPORARY TABLE nasa_parquet LIKE nasa stored as parquet location "/user/octo/nasa_parquet/";

INSERT OVERWRITE TABLE nasa_parquet SELECT * FROM nasa;