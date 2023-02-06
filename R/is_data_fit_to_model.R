#' Is Data Fit to Model
#'
#' Determines if the model is fit to run through the model based on length of 
#' the data and the max and min values.
#'
#' @param df A dataframe consisting of at least a decompMedia column and a 
#' SaturatedSpend column that will be used to create an scurve.
#' @param has_adstock_data Boolean value to indicate if the dataframe consists 
#' of a column called AdstockMedia
#' @return A boolean value indicating if the data is fit to model.
#' @export
#' 
is_data_fit_to_model <- function(df, has_adstock_data){
  
  if (nrow(scurve_i) > 10 ){
    max_decompMedia <- df$decompMedia[which.max(scurve_i$SaturatedSpend)]
    min_decompMedia <- df$decompMedia[which.min(scurve_i$SaturatedSpend)]
    
    if(has_adstock){
      max_adstockMedia <- df$AdstockMedia[which.max(scurve_i$SaturatedSpend)]
      min_adstockMedia <- df$AdstockMedia[which.min(scurve_i$SaturatedSpend)]
      
      if(max_decompMedia > min_decompMedia && max_adstockMedia > min_adstockMedia){
        return(TRUE)
      }
      else{
        print("Data is not fit to model")
        return(FALSE)
      }
    }
    else{
      if(max_decompMedia > min_decompMedia){
        return(TRUE)
      }
      else{
        print("Data is not fit to model")
      }
    }
  }
  
  return(FALSE)
}