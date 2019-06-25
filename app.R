library(shiny)
library(leaflet)

app <- shinyApp(
        ui = fluidPage(
            # Application title
            titlePanel(format(Sys.time(), "%H:%M %b %d %Y")),
            # Application body
            mainPanel
            (
                leafletOutput('myMap', width="100%", height = "500")
            )
        ),
        server = function(input, output) 
        {
            map = leaflet() %>% addTiles()
            #Where I have lived
            map = map %>% addCircleMarkers(-88.544433594 , 44.024909973, radius = 2, color = c("blue"))
            map = map %>% addCircleMarkers(-88.570022583, 47.121860504, radius = 2, color = c("blue"))
            map = map %>% addCircleMarkers(-75.377777100, 40.631019592, radius = 2, color = c("blue"))
            map = map %>% addCircleMarkers(-111.918684653, 40.623614656, radius = 2, color = c("blue"))
            
            #Where I have traveled to work
            map = map %>% addCircleMarkers(-39.550833, -18.085833, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-104.612518311, 38.263748169, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-112.055809021, 34.771499634, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-95.451797485, 37.682239532, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-94.398071289, 33.721801758, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-96.161979675, 40.998718262, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-122.329452515, 47.603569031, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-110.969757080, 32.221549988, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-111.602912903, 42.654678345, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-117.829887390, 44.773998260, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-114.894828796, 39.247051239, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-86.840309143, 32.766502380, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-82.387817383, 28.554510117, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-76.788269043, 17.970930099, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-75.538368225, 10.425049782, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-78.040817261, -8.563369751, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-71.536460876, -16.400720596, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-45.000278473, -21.245300293, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-37.074459076, -10.909210205, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-44.248748779, -19.467439651, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-67.355377197, 9.904930115, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers( 17.250539780,40.465370178, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers( 12.132160187, 54.079059601, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers( 12.567560196, 55.675670624, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(-118.245323181, 34.053489685, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(100.504829407, 13.753359795, radius = 2, color = c("red"))
            map = map %>% addCircleMarkers(22.9604416, -28.3853972, radius = 2, color = c("red"))
            
            #Where I have traveled to
            map = map %>% addCircleMarkers(-70.650016785, -33.437221527, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(-58.373439789, -34.608489990, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(-68.199089050, -22.909570694, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(-77.532722473, -9.527779579, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(-5.663849831, 40.964260101, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(-9.149479866, 38.726390839, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(2.170010090, 41.388038635, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(-3.705770016, 40.420280457, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(4.370591164, 50.836044312, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(10.738566399, 59.975505829, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(28.229509354, -26.130729675, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(-105.937957764, 35.691680908, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(-83.515769958, 35.712448120, radius = 2, color = c("green"))
            map = map %>% addCircleMarkers(-81.377388000, 28.538230896, radius = 2, color = c("green"))
            
            output$myMap = renderLeaflet(map)
        }
)
    
if (interactive()) app
