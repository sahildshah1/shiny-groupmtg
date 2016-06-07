# ===========================================================================
# file: server.R
# description:
# cf. http://shiny.rstudio.com/tutorial
# requires: 
# author: Sahil Shah <sahil.shah@u.northwestern.edu>
# ==========================================================================

library(shiny)
library(DT)

source("load-EG.R",local=TRUE)



shinyServer(function(input, output) {

	# Define user specific objects inside unname function outside of render
	# objects each user would need personal copy of (eg. esession info)

# Panel A ====================================================


source('server-output/server-EG.R',local=TRUE)


# Panel B ==================================================================


output$EG.plot <- renderPlot({

	source('render-plot/EG-plot.R',local=TRUE)

}) 




}) # shinyServer