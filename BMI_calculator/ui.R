library(shiny)
shinyUI(fluidPage(
    titlePanel("BMI calculator"),

    # Sidebar with input fields
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric_kg", "body weight in kg", value = 50),
            numericInput("numeric_m", "body length in m", value = 1.80, min = 0, step = 0.01)
        ),

        # Show the results
        mainPanel(
            p("The body mass index (BMI) is a metric to define your health. This tool calculates your BMI and gives feedback about your BMI category."),
            p("BMI = mass [kg] / length x length [m²]"),
            h3("Your calculated BMI"),
            textOutput("BMI"),
            h3("Health category"),
            textOutput("BMI_category"),
            h3("Normal weigth range for your heigth"),
            textOutput("BMI_range")
        )
    )
))
