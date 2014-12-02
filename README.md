Vidual Analytics
----------------

The Vidual_analytics package will provide data analysis functions for the structured and semi-structured data that will be collected from the Vidual website. As it is built as a package, it can be loaded into an R session or called from RScript in a bash script.

The goal is to provide useful data processing tools for transforming data, validating data, and developing insights from user-collected data.

## Functions

The `listing_data_to_JSON` function will take data collected from fields, perform validation and QA/QC for the collected data, and produce a JSON file. Here is an example for the function call:

```R
listing_data_to_JSON(vimeo_youtube_URL = "http://vimeo.com/3425225",
                     images = c("35234-23.jpg", "35234-23.jpg"),
                     property_type = "house",
                     property_view = NULL,
                     architectural_style = NULL,
                     sale_or_rent = "sale",
                     rent_period = NULL,
                     listing_price = "3,200,000",
                     listing_date = "2014-09-25",
                     beds = 5,
                     baths_full = 5,
                     baths_half = 2,
                     baths_total = NULL,
                     neighborhood = "the neighbourhood",
                     address_1 = "35 Shady Lane",
                     address_2 = NULL,
                     city = "Streetsville",
                     county = NULL,
                     state_province = "WA",
                     country = "USA",
                     zip_postal = 82324,
                     mls_num = "45368-32",
                     lot_size = 6453,
                     square_feet = 3855,
                     garage_parking_spaces = 3,
                     year_built = 2004,
                     lon = -122.163522,
                     lat = 48.108619,
                     short_description = "Really nice place to live",
                     amenities = "quiet street")

```

And here is the JSON output it produces in a text file called `JSONout.txt`:

```json
[
 {
 "vimeo_youtube_URL":      0,
"images":      2,
"property_type": "house",
"property_view":      0,
"architectural_style":      0,
"sale_or_rent": "sale",
"rent_period":      0,
"listing_price": "3,200,000",
"listing_date": "2014-09-25",
"beds":      5,
"baths_full":      5,
"baths_half":      2,
"baths_total":      7,
"neighborhood": "the neighbourhood",
"address_1": "35 Shady Lane",
"address_2":      0,
"city": "Streetsville",
"county":      0,
"state_province": "WA",
"country": "USA",
"zip_postal":  82324,
"mls_num": "45368-32",
"lot_size":   6453,
"square_feet":   3855,
"garage_parking_spaces":      3,
"year_built":   2004,
"lon": -122.16,
"lat": 48.109,
"short_description": "Really nice place to live",
"amenities": "quiet street" 
} 
]

```

## License

Copyright 2014 Vidual. All Rights Reserved. Proprietary and Confidential.
