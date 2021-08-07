# Biostatistical Computing with R

Work in progress development of the course material for the BIOS524 "Biostatistical Computing with R" course, August 25-October 13, 2021. Links to images and material are added to the slides. 

## Course Description

Title: "Biostatistical Computing with R"  
Course web site: https://bios524-r-2021.netlify.app/ 
Time: Monday, Wednesday, August 25-October 13, 2021, 10:30am-12:00pm    
Location: 5001, One Capitol Square
Equipment Required:  A computer with Internet access  
Registrant Limit: 25    
Description: This is a first-year graduate level course in biostatistical computing. This course is designed to provide an introduction to R programming. We will cover the data management/manipulation, common graphical and statistical procedures both in R. No knowledge of calculus/algebra is required although some vector/matrix operations will be discussed.


## Site template

Site template is based on the ["Statistical Image Analysis Course for Neuroscientists"](https://github.com/laderast/stats_for_neuroscientists) repository developed by [Ted Laderas](https://laderast.github.io/). The original source is ["GSU MPA/MPP course on program evaluation and causal inference"](https://github.com/andrewheiss/evalsp20.classes.andrewheiss.com) repository by [Andrew Heiss](https://www.andrewheiss.com/)

## Site building 

```
# Build and serve site
blogdown::serve_site()
# Stop server
blogdown::stop_server()
```

## Theme

This site uses the [Academic Hugo theme](https://sourcethemes.com/academic/), with some slight template modifications found in `/assets/` and `layouts/`. The theme is included as a submodule, so when when cloning for the first time, use this command to get the theme too:

    git clone --recursive https://github.com/gcushen/hugo-academic.git

To get the theme later, use this command:

    git submodule add \
      https://github.com/gcushen/hugo-academic.git \
      themes/hugo-academic

To update to the latest version of the theme, use:

    git submodule update --recursive --remote
