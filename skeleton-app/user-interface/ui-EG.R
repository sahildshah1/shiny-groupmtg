
# ===========================================================================
# file: ui-moderatedt.R
# description:  
# requires: 
# author: Sahil Shah <sahil.shah@u.northwestern.edu>
# ==========================================================================

#http://shiny.rstudio.com/articles/layout-guide.html
#http://shiny.rstudio.com/gallery/navbar-example.html

fluidPage(

  fluidRow(

    column(2,

      selectInput(,


      sliderInput(),

      h5(helpText()),

      h5(textOutput())


      ), # column 


    column(2,

      textInput(),

      sliderInput(),

      textOutput(),

      hr(),
      helpText()

      ), # column  


    column(8,

      plotOutput(
        "EG.plot"
        )

      # hr(),

      # tableOutput("moderatedt.table")


      ) # column

    ) # fluidRow

) # fluidpage
