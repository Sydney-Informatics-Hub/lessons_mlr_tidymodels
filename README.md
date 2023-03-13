# Machine Learning in R

This is a template for a new R project that uses Quarto to create a client-accessible website as an alternative to Rmd.

[Quarto](https://quarto.org/) needs to be installed, as does the latest version of RStudio.

In order to use some of the nifty features of Quarto, you will also need to install a few other packages into your environment. We recommend using `renv` for package control.

```r
renv::init()
install.packages("yaml")
# for the nice links to code documentation in your code:
install.packages("xml2")
install.packages("downlit")
```

To render the website, execute `quarto render --to all` from the project directory.  

The project itself should contain the following folders:

  - 000\_scoping
  - 002\_emails\_and\_meetings
  - 003\_literature
  - 100\_data\_cleaning\_scripts\_EDA
  - 100\_data\_raw
  - 200\_data\_clean
  - 400\_analysis
  - 500\_report
