library(shiny)
library(shinymaterial)

# overall help here: https://ericrayanderson.github.io/shinymaterial/
# color universe here: http://materializecss.com/color.html
# icon universe here :http://materializecss.com/icons.html

ui <- material_page(
  title = "Kulgap PDX Dashboard",
  nav_bar_color = "blue",
  nav_bar_fixed = TRUE,
  
  
  # # Place side-nav in the beginning of the UI
  # material_side_nav(fixed = TRUE, # Place side-nav tabs within side-nav
  #                   material_side_nav_tabs(side_nav_tabs = c("Example tab 1" = "example_1",
  #                                                            "About" = "about_section"),
  #                                          icons = c("assessment", "blur_off"))
  # ),
  
  material_row(
    material_column(
      width = 2,
      material_card(
        title = "",
        depth = 5,
        material_dropdown(
          input_id = "num_rep_input",
          label = "Pick number of replicates",
          choices = c(1, 2, 3, 4, 5),
          selected = NULL,
          multiple = FALSE
          
        ))),
    material_column(width = 10,
                    # Define side-nav tab content
                    material_side_nav_tab_content(
                      side_nav_tab_id = "example_1",
                      tags$h4("First tab")
                    ),
                    
                    # Define side-nav tab content
                    material_side_nav_tab_content(
                      side_nav_tab_id = "example_2",
                      tags$h4("Second tab")
                    ),
                    
                    # Define side-nav tab content
                    material_side_nav_tab_content(
                      side_nav_tab_id = "about_section",
                      tags$h4("About tab")
                      
                      # # reference webiste 
                      # tags$a(
                      #   target = "_blank",
                      #   class = "btn orange",
                      #   href = "databrew.cc",
                      #   "Visite our website!"
                      # )
                      
                    )
                    
    )
    
    
    
    
    
  )    
  
  
)

server <- function(input, output) {
  
}
shinyApp(ui = ui, server = server)