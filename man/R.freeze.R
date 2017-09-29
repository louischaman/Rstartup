(.packages()) %>% 
        sapply(  function(x)as.character(packageVersion(x)) ) %>%
        paste0("install_version(\"", names(.),"\",\"",  ., "\")\n") %>%
        cat()
