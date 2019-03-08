navbarPage("The ten most similar players - Pro Evolution Soccer 2019",
           tabPanel("Graphic",fluidPage(theme = shinytheme("flatly")),
tags$head(
  tags$style(HTML(".shiny-output-error-validation{color: red;}"))),
pageWithSidebar(
  headerPanel('Apply filters'),
  sidebarPanel(width = 4,
    selectInput('player', 'Choose a player:',paste(data$player,"-",data$team)),
    sliderInput("overall", "Overall:",
                min = 50, max = 100,
                value = c(50,100)),
    sliderInput("height", "Height (cm):",
                min = 155, max = 203,
                value = c(155,203)),
    checkboxGroupInput(inputId = "position",
                       label = 'Position:', choices = c("GK" = "GK", "CB" = "CB",
                                                        "RB"="RB","LB"="LB","DMF"="DMF",
                                                        "CMF"="CMF","AMF"="AMF",
                                                        "RMF"="RMF","LMF"="LMF",
                                                        "RWF"="RWF","LWF"="LWF",
                                                        "SS"="SS","CF"="CF"), 
                       selected = c("CF"="CF"),inline=TRUE),
    checkboxGroupInput(inputId = "foot",
                       label = 'Foot:', choices = c("Right foot" = "Right foot",
                                                        "Left foot" = "Left foot"), 
                       selected = c("Right foot" = "Right foot",
                                    "Left foot" = "Left foot"),inline=TRUE),
   submitButton("Update filters")
  ),
  mainPanel(
    column(8, plotlyOutput("plot1", width = 800, height=700),
           p("To visualize the graph of the player, click the icon at side of names 
             in the graphic legend. It is worth noting that graphics will be overlapped.",
             style = "font-size:25px")
    
  )
  )
)),
      tabPanel("About",p("We used a data set consisting of 39 attributes from 11,158 players registered
                          in Pro Evolution Soccer 2019 (PES 2019), an electronic soccer game. The data set
                          was obtained from ", a("PES Data Base", href="http://pesdb.net/", target="_blank"),
                         "website using web scraping. This app is an interactive tool that allows any user to choose a soccer player from the game
                         and find the ten players most similar whith him. The similarity between the players is determined using a data mining technique
                         called", a("k-nearest neighbors", href="https://en.wikipedia.org/wiki/K-nearest_neighbors_algorithm", target="_blank"), ".",style = "font-size:25px"),
               
               hr(), 
               p("The available player positions are:",style = "font-size:25px"),
               p("GK: Goalkeeper",style = "font-size:15px;color: blue"),
               p("CB: Center Back",style = "font-size:15px;color: blue"),
               p("RB: Right Back",style = "font-size:15px;color: blue"),
               p("LB: Left Back",style = "font-size:15px;color: blue"),
               p("DMF: Defense Midfield",style = "font-size:15px;color: blue"),
               p("CMF: Center Midfield",style = "font-size:15px;color: blue"),
               p("AMF: Attacking Midfield",style = "font-size:15px;color: blue"),
               p("RMF: Right Midfield",style = "font-size:15px;color: blue"),
               p("LMF: Left Midfield",style = "font-size:15px;color: blue"),
               p("RWF: Right Wing Forward",style = "font-size:15px;color: blue"),
               p("LWF: Left Wing Forward",style = "font-size:15px;color: blue"),
               p("SS: Second Striker",style = "font-size:15px;color: blue"),
               p("CF: Counter Forward",style = "font-size:15px;color: blue"),
               hr(), 
               
               p("The abbreviations used in the radar chart are:",style = "font-size:25px"),
               
               p("BAL: Unwavering Balance",style = "font-size:15px;color: blue"),
               p("STM: Stamina",style = "font-size:15px;color: blue"),
               p("SPE: Speed",style = "font-size:15px;color: blue"),
               p("EXP: Explosive Power",style = "font-size:15px;color: blue"),
               p("ATT: Attacking Prowess",style = "font-size:15px;color: blue"),
               p("BCO: Ball Control",style = "font-size:15px;color: blue"),
               p("DRI: Dribbling",style = "font-size:15px;color: blue"),
               p("LPAS: Low Pass",style = "font-size:15px;color: blue"),
               p("APAS: Air Pass (Lofted Pass)",style = "font-size:15px;color: blue"),
               p("KPOW: Kicking Power",style = "font-size:15px;color: blue"),
               p("FIN: Finishing",style = "font-size:15px;color: blue"),
               p("PKIC: Place Kicking",style = "font-size:15px;color: blue"),
               p("SWE: Swerve",style = "font-size:15px;color: blue"),
               p("HEA: Header",style = "font-size:15px;color: blue"),
               p("JUM: Jump",style = "font-size:15px;color: blue"),
               p("PHY: Physical Contact",style = "font-size:15px;color: blue"),
               p("BWIN: Ball Winning",style = "font-size:15px;color: blue"),
               p("DEF: Defensive Prowess",style = "font-size:15px;color: blue"),
               p("GOA: Goalkeeping",style = "font-size:15px;color: blue"),
               p("GKC: GK Catch",style = "font-size:15px;color: blue"),
               p("CLE: Clearing",style = "font-size:15px;color: blue"),
               p("REF: Reflexes",style = "font-size:15px;color: blue"),
               p("COV: Coverage",style = "font-size:15px;color: blue")),
 
tabPanel("Developers",
         p(a("Thiago Valentim Marques", href="http://buscatextual.cnpq.br/buscatextual/visualizacv.do?id=K4201666A2", target="_blank"),style = "font-size:25px"),
           p("e-mail: thiagomadridd@gmail.com",style = "font-size:20px"),
           p(a("Julio Cesar Soares", href="http://buscatextual.cnpq.br/buscatextual/visualizacv.do?id=K4417495Y5", target="_blank"),style = "font-size:25px"),
             p("email: soares.julio@gmail.com",style = "font-size:20px"),
             p(a("Francisco Caninde Assis de Oliveira", href="http://buscatextual.cnpq.br/buscatextual/visualizacv.do?id=K8219531A6", target="_blank"),style = "font-size:25px"),
               p("e-mail: frecs123@gmail.com",style = "font-size:20px"))

)




