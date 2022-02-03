pacman::p_load(tidyverse, rio, magrittr, janitor, here,readxl, sf)
deso_regso <- import("https://github.com/StaffanBetner/SverigesGeografi/blob/main/county_municipality_regso_deso.RDS?raw=true")

deso_regso %>% as_tibble() %>% distinct(county_code, county_name, county_name_long, deso) -> county_deso


tibble(files = list.files("./data/", recursive = T)) %>% 
  separate(files, into = c("date"), sep = "/", remove=F) %>% 
  mutate(sheets = map(files, ~excel_sheets(paste0("data/", .x)))) -> 
  deso_excel_sheets

deso_excel_sheets %>% unnest(sheets) %>% 
  filter(sheets != "Innehåll") %>% 
  mutate(all_data = pro_map2(files, sheets, ~read_excel(paste0("data/", .x), skip = 1, sheet = .y, na = "-NA-") %>% 
                          left_join(county_deso, by = c("DeSO-kod" = "deso")) %>% 
                          fill(county_code, county_name, county_name_long) %>% 
                           mutate_all(as.character))) -> all_data

all_data %>% unnest(all_data) %>% select(-files) %>% 
  rename(deso = `DeSO-kod`) %>% 
  left_join(deso_regso %>% as_tibble() %>% select(-geometry)) %>% 
  relocate(county_code, county_name, county_name_long, municipality_code, municipality_name, municipality_name_long, regso_code, regso_name, .before=`2 doser %`) %>% 
  relocate(deso, sheet = sheets, .after=regso_name) %>% 
  relocate(Ålder, Kön, .after = sheet) %>% 
  gather(antal_doser, andel, `2 doser %`, `Minst 1 dos %`, `Minst 2 doser %`, `3 doser %`) %>% 
  separate(andel, into = c("andel","andel_upper"), sep="-", convert=TRUE) %>% 
  mutate(antal_doser = antal_doser %>% parse_number()) %>% 
  write_csv("all_data.csv")

zip(zipfile = "all_data.zip", "all_data.csv")
