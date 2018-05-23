{
  source("Scripts/helper.R");  # this line will be in all your scripts
  packageData = read.csv("Data/accdeaths.csv");
  
  plotData = ggplot(packageData) +       #telling you to what data to plot 
    geom_point( aes(x=time, y=value) ) +  #declaring x and y values 
    ggtitle("Accidental Deaths in the US 1973-1978") +   #title of the plot
    scale_x_continuous(breaks = seq(1973, 1978, by=.5)) + #editing the x axis so it went by up by half a year
    theme(axis.text.x=element_text(angle=45, hjust=1));    #themes of the x axis ( angling labes at 4 degrees)
  
  plot(plotData);
}