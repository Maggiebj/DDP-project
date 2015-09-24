shinyUI(fluidPage(
    titlePanel(
        h3("MPG Calculation",align="left")
        ),
    sidebarLayout(
        sidebarPanel(
        h3("Instruction:"),
        helpText("Please select manual/automatic transmission,weight of car,and 1/4 mile time of car,and click 'Submit'."),
        radioButtons("am",label=h5("Transmission"),choices=list("manual"=0,"automatic"=1),selected=1),
        sliderInput("weight",label=h5("Weight of Car (lb/1000)"),min=1.5,max=5.5,step=0.1,value=2.0),
        sliderInput("qsec",label=h5("Car Speed:1/4 mile time in seconds"),min=14.5,max=23.0,step=0.1,value=10.0),
        submitButton("Submit")
    ),
        mainPanel(
            h4("Note:"),
            h5("The application is a demonstration of calculation on MPG. We used the dataset of 'mtcars'.The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).I developed a regression model between the outcome mpg and variables."),
            h5("The regression model we developed has Adjusted R-squared of 0.9862.The regression model is:"),
            em("mpg=9.6178factor(am)0+12.5536factor(am)1-3.9165wt+1.2259qsec"),
            h5("'am' is transmission(manual=0,automatic=1),'wt' is weight of car,'qsec' is speed in 1/4mile time"),
            h5("we use the value range as variable value range in the 'mtcars'dataset."),
            h5("You may input transmission,weight and speed in the left side as instrustion, and you'll get MPG result  in the right side."),
            h4("TRY IT!"),
            
            h5("=========================================================================================="),
       
            strong("You have selected:"),
            textOutput("text1"),
            br(),
            strong("The Weight of Car is"),
            textOutput("text2"),
            br(),
            strong("The Car Speed of 1/4 mile time in second is"),
            textOutput("text3"),
            br(),
            strong("The MPG of the car is"),
            div( textOutput("result"),style="color:red"))
    
        )
    )
)