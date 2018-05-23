{
  source("Scripts/helper.R");  # this line will be in all your scripts
  packageData = read.csv("Data/CRANpackages.csv");
  
  plotData = ggplot(packageData) +
    geom_point( aes(x=Date, y=Packages) ) +
    ggtitle("Packages in CRAN (2001-2014)") +
    scale_y_continuous(breaks = seq(0, 6000, by=500)) +
    theme(axis.text.x=element_text(angle=90, hjust=1));
  
 plot(plotData);
}