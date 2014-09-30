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
      listing_df[1,1] <- vimeo_youtube_URL
      
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
    listing_df[1,3] <- property_type
  }
  
  if (!is.null(property_view)){ 
    listing_df[1,4] <- property_view
  }
  
  if (!is.null(property_view)){ 
    listing_df[1,5] <- architectural_style
  }
  
  if (!is.null(sale_or_rent)){ 
    listing_df[1,6] <- sale_or_rent
  }
  
  if (!is.null(rent_period)){ 
    listing_df[1,7] <- rent_period
  }
  
  if (!is.null(listing_price)){ 
    listing_df[1,8] <- listing_price
  }

  if (!is.null(listing_date)){ 
    listing_df[1,9] <- listing_date
  }
  
  if (!is.null(beds)){ 
    listing_df[1,10] <- beds
  }
  
  if (!is.null(baths_full)){ 
    listing_df[1,11] <- baths_full
  }

  if (!is.null(baths_half)){ 
    listing_df[1,12] <- baths_half
  }

  if (!is.null(baths_full) & !is.null(baths_half)){ 
    listing_df[1,13] <- baths_half + baths_full
  }
  
  if (!is.null(neighborhood)){ 
    listing_df[1,14] <- neighborhood
  }

  if (!is.null(address_1)){ 
    listing_df[1,15] <- address_1
  }

  if (!is.null(address_2)){ 
    listing_df[1,16] <- address_2
  }
  
  if (!is.null(city)){ 
    listing_df[1,17] <- city
  }
  
  if (!is.null(county)){ 
    listing_df[1,18] <- county
  }

  if (!is.null(state_province)){ 
    listing_df[1,19] <- state_province
  }
  
  if (!is.null(country)){ 
    listing_df[1,20] <- country
  }

  if (!is.null(zip_postal)){ 
    listing_df[1,21] <- zip_postal
  }

  if (!is.null(mls_num)){ 
    listing_df[1,22] <- mls_num
  }
  
  if (!is.null(lot_size)){ 
    listing_df[1,23] <- lot_size
  }

  if (!is.null(square_feet)){ 
    listing_df[1,24] <- square_feet
  }
  
  if (!is.null(garage_parking_spaces)){ 
    listing_df[1,25] <- garage_parking_spaces
  }

  if (!is.null(year_built)){ 
    listing_df[1,26] <- year_built
  }
  
  if (!is.null(lon)){ 
    listing_df[1,27] <- lon
  }
  
  if (!is.null(lat)){ 
    listing_df[1,28] <- lat
  }
  
  if (!is.null(short_description)){ 
    listing_df[1,29] <- short_description
  }
  
  if (!is.null(amenities)){ 
    listing_df[1,30] <- amenities
  }

  
  # Create JSON output from data frame by row as arrays
  
  j = toJSON(listing_df, byrow = TRUE, colNames = TRUE)
  
}
