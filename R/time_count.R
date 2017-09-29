

#' for elements that start and stop dates/times this counts how many are active
#' @param which string would you like to count the letters of
#' @keywords string count
#' @export
#' @examples
#' read.spatial()
#' 
time_count = function(start_times, end_times, time_diff = NA, first = min(start_times), last = max(end_times)){
        diff_times = end_times-start_times
        
        if(is.na(time_diff)){
                min_diff = min(as.numeric(diff_times, units = "secs"))
        }else{
                min_diff = time_diff
        }
        seq_times = seq(first, last, by=min_diff)
        
        
        seq_times_num = as.numeric(seq_times)
        start_times_num = round(as.numeric(start_times)/min_diff) * min_diff
        end_times_num = round(as.numeric(end_times)/min_diff) * min_diff
        
        starting_count = as.data.frame(table(start_times_num))
        which_start_count = match(seq_times_num, starting_count$start_times_num)
        start_count_seq = starting_count$Freq[which_start_count]
        start_count_seq[is.na(start_count_seq)] = 0
        
        
        ending_count = as.data.frame(table(end_times_num))
        which_end_count = match(seq_times_num, ending_count$end_times_num)
        end_count_seq = ending_count$Freq[which_end_count]
        end_count_seq[is.na(end_count_seq)] = 0
        
        total = 0
        room_count = cumsum(start_count_seq - end_count_seq)
        seq_data = data.frame(seq_times = seq_times, count = room_count)
        
        return(seq_data)
} 