
# ===========================================================================
# file: ui.R
# description:  controls the layout and appearance of your app.
# cf. http://shiny.rstudio.com/tutorial
# run a Shiny app giving the name of its directory to the function runApp. 
# requires: 
# author: Sahil Shah <sahil.shah@u.northwestern.edu>
# ==========================================================================

library(shiny)
library(DT)

shinyUI(navbarPage("App Name",

  tabPanel("Panel Name",

    # source returns a list with 2 things inside: 
    # http://stackoverflow.com/questions/30534674
    source("user-interface/ui-EG.R",local=TRUE)$value


    ), #tabPanel ------------------------------------------- 



  # a menu cannot be the first item in the navbarPage.
  navbarMenu("Menu Name",

    # dataTableOutput GSE14764.table, 

    tabPanel("Panel Name",

      DT::dataTableOutput()


      ), # tabPanel --------------------------------------


    tabPanel("Panel Name",

      DT::dataTableOutput()


      ) # tabPanel --------------------------------------    



    ) # navbarMenu



  )) # shinyUI and navbarPage
