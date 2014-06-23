shinyUI(
        pageWithSidebar(
                headerPanel("Happiness prediction"),
                sidebarPanel(
                        helpText("Part of a project for the Coursera course 'Data Science - Developing Data Products'. 
                         It makes use of the sleep data from R and a nonsense algorithm. You may select one of two non-existent sleep drugs
                         and the side of the bed you wake up. Your choice results in a prediction of happiness that day."),
                        selectInput('drug','Which drug are you planning to take?', c("NotSoSuperSleep(TM)", "SuperSleep(TM)")),
                        selectInput('side','Which side of the bed do you plan to get out?', c("Wrong side", "Right side"))
                ),
                mainPanel(
                        h3('Results of prediction'),
                        h4('Drug you selected'),
                        verbatimTextOutput("inputValue1"),
                        h4('Side of the bed you selected'),
                        verbatimTextOutput("inputValue2"),
                        h4('Our state-of-the-art prediction algorithm predicts the following increase in happiness following your sleep'),
                        verbatimTextOutput("prediction")
                )
        )
)