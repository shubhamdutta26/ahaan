# # Important:
# library(showtext)
# font_add_google(name = "Source Sans Pro", family = "SourceSansPro")
# showtext_auto()

shubham_theme_dark <- function() {
    # Plot decoration
    theme(plot.background = element_rect(fill = "#36474f"),# change background color
          panel.background = element_rect(colour="#ffffff",# change plot border color
                                          fill = "#36474f"),# change plot background color
          # panel.background = element_blank(), # remove plot border
          panel.grid.major.x = element_blank(),# remove major grid lines
          panel.grid.major.y = element_line(size = 0.1),# remove major grid lines
          panel.grid.minor = element_blank(),# remove minor grid lines
          # legend.position= "none",# remove legend legend.position= c(0.1, 0.75)
          legend.background = element_rect(fill = "#36474f"),# change legend background
          legend.key = element_rect(fill = "#36474f"),# change legend keys background
          legend.title = element_text(family = "SourceSansPro", size = 12, color = "#ffffff"),# change legend title color
          legend.text = element_text(family = "SourceSansPro", size = 12, color = "#ffffff"),# change legend text color
          plot.title    = element_text(family = "SourceSansPro", size = 15, color = "#ffffff"),
          plot.subtitle = element_text(family = "SourceSansPro", size = 10, color = "#ffffff"),
          plot.caption = element_text(family = "SourceSansPro", size = 10, color = "#ffffff"),
          axis.title.x  = element_text(family = "SourceSansPro", size = 6, color = "#ffffff"),
          axis.title.y  = element_text(family = "SourceSansPro", size = 12, color = "#ffffff"),
          axis.text.x   = element_text(family = "SourceSansPro", size = 10, color = "#ffffff"),
          axis.text.y   = element_text(family = "SourceSansPro", size = 10, color = "#ffffff"),
          axis.ticks = element_line(color = "#ffffff"),
          axis.line.x = element_line(color = "#ffffff", size = 0.5))
}


shubham_theme_light <- function() {
  # Plot decoration
  theme(plot.background = element_rect(fill = "#cacaca"),# change background color
        # panel.background = element_rect(colour="#36474f",# change plot border color
        #                                 fill = "#cacaca"),# change plot background color
        panel.background = element_blank(), # remove plot border
        panel.grid.major.x = element_blank(),# remove major grid lines
        panel.grid.major.y = element_line(size = 0.1, color = "#36474f"),# remove major grid lines
        panel.grid.minor = element_blank(),# remove minor grid lines
        # legend.position= "none",# remove legend legend.position= c(0.1, 0.75)
        legend.background = element_rect(fill = "#cacaca"),# change legend background
        legend.key = element_rect(fill = "#cacaca"),# change legend keys background
        legend.title = element_text(family = "SourceSansPro", size = 15, color = "#36474f"),# change legend title color
        legend.text = element_text(family = "SourceSansPro", size = 12, color = "#36474f"),# change legend text color
        plot.title    = element_text(family = "SourceSansPro", size = 20, color = "#36474f"),
        plot.subtitle = element_text(family = "SourceSansPro", size = 10, color = "#36474f"),
        plot.caption = element_text(family = "SourceSansPro", size = 10, color = "#36474f"),
        axis.title.x  = element_text(family = "SourceSansPro", size = 18, color = "#36474f"),
        axis.title.y  = element_text(family = "SourceSansPro", size = 18, color = "#36474f"),
        axis.text.x   = element_text(family = "SourceSansPro", size = 13, color = "#36474f"),
        axis.text.y   = element_text(family = "SourceSansPro", size = 13, color = "#36474f"),
        axis.ticks = element_line(color = "#36474f"),
        axis.line.x = element_line(color = "#36474f", size = 0.5))
}

shubham_palette_dark <- c("#65C18C", "#FF6363", "#BAFFB4", "#CAB8FF", "#ffe119","#edad08", "#73af48", "#8E9CA3", "#f032e6", "#ff7c05", "#38a6a5", "#424b54")
