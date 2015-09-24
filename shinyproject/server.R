

shinyServer(function(input,output){
    
    output$text1<-renderText({
        if(input$am==1) "automatic transmission"
        else "manual transmission"
        
    })
    output$text2<-renderText({
    paste(input$weight*1000,"lbs")
        
    })
    output$text3<-renderText({
    paste(input$qsec,"seconds")
        
    })
    
    output$result<-renderText({
        if(input$am==0)
            mpg=9.6178-3.9165*input$weight+1.2259*input$qsec
        
        else if(input$am==1)
            mpg=12.5536-3.9165*input$weight+1.2259*input$qsec
        paste(mpg,"Miles/(US) gallon")
    })
})