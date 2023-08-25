
library(readr)
library(dplyr)
library(tidyr)
library(readxl)


ruta <- file.choose()

dataframe <- read_excel(ruta)

colnames(dataframe)

# "Country Name"  "Country Code"  "Series Name"   "Series Code" 

dataframe_piv <- pivot_longer(data = dataframe, cols = c("1960 [YR1960]", "1961 [YR1961]", "1962 [YR1962]", 
               "1963 [YR1963]", "1964 [YR1964]","1965 [YR1965]","1966 [YR1966]", "1967 [YR1967]", 
               "1968 [YR1968]", "1969 [YR1969]", "1970 [YR1970]",
               "1971 [YR1971]" ,"1972 [YR1972]", "1973 [YR1973]", "1974 [YR1974]", "1975 [YR1975]",
               "1976 [YR1976]" ,"1977 [YR1977]", "1978 [YR1978]", "1979 [YR1979]", "1980 [YR1980]",
               "1981 [YR1981]", "1982 [YR1982]", "1983 [YR1983]", "1984 [YR1984]", "1985 [YR1985]",
               "1986 [YR1986]", "1987 [YR1987]", "1988 [YR1988]", "1989 [YR1989]", "1990 [YR1990]",
               "1991 [YR1991]", "1992 [YR1992]", "1993 [YR1993]", "1994 [YR1994]", "1995 [YR1995]",
               "1996 [YR1996]", "1997 [YR1997]", "1998 [YR1998]", "1999 [YR1999]", "2000 [YR2000]",
               "2001 [YR2001]", "2002 [YR2002]", "2003 [YR2003]", "2004 [YR2004]", "2005 [YR2005]",
               "2006 [YR2006]", "2007 [YR2007]", "2008 [YR2008]", "2009 [YR2009]", "2010 [YR2010]",
               "2011 [YR2011]", "2012 [YR2012]", "2013 [YR2013]", "2014 [YR2014]", "2015 [YR2015]",
               "2016 [YR2016]", "2017 [YR2017]", "2018 [YR2018]", "2019 [YR2019]", "2020 [YR2020]",
               "2021 [YR2021]", "2022 [YR2022]"), names_to = "Year", values_to = "Valor")

View(dataframe_piv)


dataframe_piv <- rename(dataframe_piv, "SeriesName" =  `Series Name`, "CountryName" = "Country Name" , "CountryCode" = "Country Code", "SeriesCode" = "Series Code" )

colnames(dataframe_piv)
View(dataframe_piv)


