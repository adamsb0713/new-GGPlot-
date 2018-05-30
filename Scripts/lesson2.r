{
  source("Scripts/helper.R"); # this line will be in all your scripts
  weatherData = read.csv("Data/LansingNOAA2016.csv",
                         stringsAsFactors = FALSE);
  
  plotData = ggplot(weatherData) +
    geom_point(aes(x=windSpeed, y=abs(tempDept)),
               color="purple",size=3.5, shape=5,
               alpha = 0.4 ) +
    theme_bw() +
    labs(title = "Humidity vs. Temperature",
         subtitle = "Lansing, Michigan: 2016",
         x = "Wind Speed (m/s)",
         y = "Temperature Departure (F)") +
    theme(axis.title.x=element_text(size=14, color="lightblue"),
          axis.title.y=element_text(size=14, color="lightblue"),
          plot.title=element_text(size=19, face="bold",
                                  color ="navy"),
          plot.subtitle=element_text(size=10, face="bold.italic",
                                     color ="black", family="serif")) +
    geom_smooth(mapping=aes(x=windSpeed, y=tempDept), method="lm",
                color="darkgreen", size=0.8, linetype=4, fill="lightgrey") +
    theme(axis.text.x=element_text(angle=45, hjust=1)) +
    theme(axis.text.y=element_text(angle=90, hjust=1));
  
  plot(plotData);
  
  cat("This graph shows Wind Speed v. Temperature Departure");
}