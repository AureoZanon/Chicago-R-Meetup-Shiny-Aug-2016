# Shiny Presentation at Chicago R User Group

Example code for Chicago R User Group meeting on 8/3/2016.

Requires the following packages from CRAN:

```r
install.packages(c("leaflet", "quantmod", "dygraphs", "rmarkdown",
  "forecast", "flexdashboard", "formattable", "shiny"))
``` 

An up-to-date version of RStudio is also recommended.

R 3.2.5 used for examples.

Links/examples reviewed in the following order:

## 1. htmlwidgets for R

http://www.htmlwidgets.org/

```r
library(dygraphs)
dygraph(nhtemp, main = "New Haven Temperatures") %>% 
  dyRangeSelector(dateWindow = c("1920-01-01", "1960-01-01"))
```

See Leaflet_Chicago_Starbucks_Locations.R

## 2. R Markdown

http://rmarkdown.rstudio.com/

http://rmarkdown.rstudio.com/developer_parameterized_reports.html

See Stocks.Rmd

Example params argument of the rmarkdown::render function:

```r
rmarkdown::render("Stocks.Rmd", params = list(symbol='TSLA'))
```
See Stocks_New_Features.Rmd

## 3. Shiny

http://shiny.rstudio.com/gallery/

http://shiny.rstudio.com/gallery/movie-explorer.html

https://gallery.shinyapps.io/shiny-salesman/

https://github.com/toddwschneider/shiny-salesman

## 3.A Shiny HTML Templates

http://shiny.rstudio.com/articles/templates.html

See Finance_Shiny_HTML_Template

## 3.B Shiny Gadgets

http://shiny.rstudio.com/articles/gadgets.html

https://github.com/calligross/ggthemeassist

Code example used with ggthemeassist:

```r
library(ggplot2)

summary(diamonds)

summary(diamonds$price)

aveSize <- round(mean(diamonds$carat), 4)
clarity <- levels(diamonds$clarity)

p <- qplot(carat, price, data = diamonds, color = clarity) + labs(x = "Carat", y = "Price") + labs(title = "Diamond Pricing")

p
```

## 4. R Markdown & Shiny for Interactive & Reproducible Analysis 

http://shiny.rstudio.com/gallery/download-knitr-reports.html

http://rmarkdown.rstudio.com/flexdashboard/examples.html

https://beta.rstudioconnect.com/jjallaire/htmlwidgets-dygraphs/

https://jjallaire.shinyapps.io/shiny-kmeans/

See Stocks_Flexdashboard_Shiny.Rmd
