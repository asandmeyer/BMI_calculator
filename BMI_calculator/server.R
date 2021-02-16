library(shiny)
shinyServer(function(input, output) {
    
    #calculation of the BMI value
    output$BMI <- renderText({
        BMI_value <- input$numeric_kg / (input$numeric_m * input$numeric_m)
        round(BMI_value, digits = 2)
    })
    
    #defining the category
    output$BMI_category <- renderText({
        BMI_value <- input$numeric_kg / (input$numeric_m * input$numeric_m)
        if (BMI_value <= 18.5){print("underweigth")}
        else if (BMI_value <= 25){print("healthy weigth")}
        else if (BMI_value <= 30) {print("overweigth")}
        else {print("obese")}
    })
    
    #calculating the healthy range with a given heigth
    output$BMI_range <- renderText({
        min <- 18.5*(input$numeric_m * input$numeric_m)
        max <- 25*(input$numeric_m * input$numeric_m)
        paste(min, "kg to ", max, "kg")
    })

})
