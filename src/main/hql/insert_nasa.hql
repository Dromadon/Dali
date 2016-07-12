insert overwrite table nasa select regexp_extract(line, '^(.+)\\s-\\s-') as host,
                         regexp_extract(line, '\\[(.+)\\]') as time,
                         regexp_extract(line, '\\s\"(.+)\"\\s') as request,
                         regexp_extract(line, '\\s(\\d{3}\\s)') as httpcode,
                         regexp_extract(line, '\\s(\\d*)$') as bytes
                       from nasa_raw;
