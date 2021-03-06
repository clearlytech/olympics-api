FORMAT: 1A

# Olympic Medals API

**NOTE:** this documentation exists for posterity, but as the sochi2014 website is no longer active, this application is also non-functioning.  It remains here for posterity.  See the [original blog post](http://www.clearlytech.com/2014/02/08/building-simple-olympic-medals-api/) for more information.

Olympic Medals API publishes a JSON payload containing the current medal count for the [Sochi 2014](http://www.sochi2014.com/en) Olympic Games.  The full source code for this API is [available on GitHub](http://www.github.com/clearlytech/olympics-api)

# Group Medals

## Standings [/api/v1/medals]

### Current Standings [GET]
Get current standings ranked by medal points.  http://olympics.clearlytech.com/api/v1/medals

+ Response 200 (application/json)

      + Body

            [
                {
                  "country_id": "united-states",
                  "country_name": "United States",
                  "rank": 1,
                  "gold_count": 12,
                  "silver_count": 14,
                  "bronze_count": 6,
                  "medal_count": 32
                },
                {
                  "country_id": "germany",
                  "country_name": "Germany",
                  "rank": 2,
                  "gold_count": 8,
                  "silver_count": 16,
                  "bronze_count": 1,
                  "medal_count": 25
                }
            ]

## Country Medals [/api/v1/medals/{country_id}]

### Country Medal Count [GET]
Return current medal count for a single country, based on country_id shortname.

For example, http://olympics.clearlytech.com/api/v1/medals/united-states

+ Response 200 (application/json)

    + Body

            {
              "country_name": "United States",
              "rank": 1,
              "gold_count": 12,
              "silver_count": 14,
              "bronze_count": 6,
              "medal_count": 32
            }

+ Response 400 (application/json)

      + Body

            {
              "error": "unknown or missing country_id param"
            }
