library(MASS)
data(sleep)

expHappiness <- function(drug, side) {
        if(drug=="NotSoSuperSleep(TM)") drug <- 1
        if(drug=="SuperSleep(TM)") drug <- 2
        if(side=="Wrong side") side <- 2
        if(side=="Right side") side <- 1/2
        mean(sleep[sleep[,"group"]==drug, "extra"]) / side
}

shinyServer(
        function(input, output) {
                output$inputValue1 <- renderPrint({input$drug})
                output$inputValue2 <- renderPrint({input$side})
                output$prediction <- renderPrint({expHappiness(input$drug, input$side)})
        }
)