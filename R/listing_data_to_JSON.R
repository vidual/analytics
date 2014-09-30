#' Transform a Vidual input data to JSON for visualization
#' @description This function takes a input parameters for a Vidual listing and outputs a JSON file for visualization.
#' @param vimeo_youtube_URL 
#' @param images 
#' @param property_type 
#' @param property_view 
#' @param architectural_style 
#' @param sale_or_rent 
#' @param rent_period 
#' @param listing_price 
#' @param listing_date 
#' @param beds 
#' @param baths_full 
#' @param baths_half 
#' @param baths_total 
#' @param neighborhood 
#' @param address_1 
#' @param address_2 
#' @param city 
#' @param county 
#' @param state_province 
#' @param country 
#' @param zip_postal 
#' @param mls_num 
#' @param lot_size 
#' @param square_feet 
#' @param garage_parking_spaces 
#' @param year_built 
#' @param lon 
#' @param lat 
#' @param short_description 
#' @param amenities
#' @export listing_CSV_to_JSON

listing_data_to_JSON <- function(vimeo_youtube_URL = NULL,
                                 images = NULL,
                                 property_type = NULL,
                                 property_view = NULL,
                                 architectural_style = NULL,
                                 sale_or_rent = NULL,
                                 rent_period = NULL,
                                 listing_price = NULL,
                                 listing_date = NULL,
                                 beds = NULL,
                                 baths_full = NULL,
                                 baths_half = NULL,
                                 baths_total = NULL,
                                 neighborhood = NULL,
                                 address_1 = NULL,
                                 address_2 = NULL,
                                 city = NULL,
                                 county = NULL,
                                 state_province = NULL,
                                 country = NULL,
                                 zip_postal = NULL,
                                 mls_num = NULL,
                                 lot_size = NULL,
                                 square_feet = NULL,
                                 garage_parking_spaces = NULL,
                                 year_built = NULL,
                                 lon = NULL,
                                 lat = NULL,
                                 short_description = NULL,
                                 amenities = NULL){
  
  # Add package requirements
  require(RJSONIO)
  require(RCurl)
  
  # Create a data frame with the objects
  listing_df <- as.data.frame(mat.or.vec(nr = 1, nc = 30))
  colnames(listing_df) <- c("vimeo_youtube_URL", "images", "property_type", "property_view",
                            "architectural_style", "sale_or_rent", "rent_period", "listing_price",
                            "listing_date", "beds", "baths_full", "baths_half", "baths_total",
                            "neighborhood", "address_1", "address_2", "city", "county", "state_province",
                            "country", "zip_postal", "mls_num", "lot_size", "square_feet",
                            "garage_parking_spaces", "year_built", "lon", "lat",
                            "short_description", "amenities")
  
  # Validate whether YouTube or Vimeo URL exists
  if (!is.null(vimeo_youtube_URL)){
    remote_video_file_exists <- url.exists(vimeo_youtube_URL)
    
    if (remote_video_file_exists == TRUE){
      
    }
    
  }
  
  # Determine information about images
  if (!is.null(images)){
    number_of_images <- length(images)
    
    # Get the sizes of the images
    
    # Get the resolution values for each of the images
    
    # Get the pixel density for each of the images
    
  }
  
  if (!is.null(property_type)){
    property_type <- property_type
  }
  
  if (!is.null(property_view)){ 
    property_view = property_view
  }
  
  if (!is.null(property_view)){ 
    architectural_style = architectural_style
  }
  
  if (!is.null(sale_or_rent)){ 
    sale_or_rent = sale_or_rent
  }
  
  if (!is.null(rent_period)){ 
    rent_period = rent_period
  }
  
  if (!is.null(listing_price)){ 
    listing_price = listing_price
  }

  if (!is.null(listing_date)){ 
    listing_date = listing_date
  }
  
  if (!is.null(beds)){ 
    beds = beds
  }
  
  if (!is.null(baths_full)){ 
    baths_full = baths_full
  }

  if (!is.null(baths_half)){ 
    baths_half = baths_half
  }

  if (!is.null(baths_full) & !is.null(baths_half)){ 
    baths_total = baths_half + baths_full
  }
  
  if (!is.null(neighborhood)){ 
    neighborhood = neighborhood
  }

  if (!is.null(address_1)){ 
    address_1 = address_1
  }

  if (!is.null(address_2)){ 
    address_2 = address_2
  }
  
  if (!is.null(city)){ 
    city = city
  }
  
  if (!is.null(county)){ 
    county = county
  }

  if (!is.null(state_province)){ 
    state_province = state_province
  }
  
  if (!is.null(country)){ 
    country = country
  }

  if (!is.null(zip_postal)){ 
    zip_postal = zip_postal
  }

  if (!is.null(mls_num)){ 
    mls_num = mls_num
  }
  
  if (!is.null(lot_size)){ 
    lot_size = lot_size
  }

  if (!is.null(square_feet)){ 
    square_feet = square_feet
  }
  
  if (!is.null(garage_parking_spaces)){ 
    garage_parking_spaces = garage_parking_spaces
  }

  if (!is.null(year_built)){ 
    year_built = year_built
  }
  
  if (!is.null(lon)){ 
    lon = lon
  }
  
  if (!is.null(lat)){ 
    lat = lat
  }
  
  if (!is.null(short_description)){ 
    short_description = short_description
  }
  
  if (!is.null(amenities)){ 
    amenities = amenities
  }

  
  # Create JSON output from data frame by row as arrays
  
  
}
