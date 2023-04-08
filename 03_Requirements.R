knitr::include_graphics("images/Cow face distribution.png")
library(webexercises)
library(ggplot2)
theme_set(theme_classic())


# dnorm gives standard normal
ggplot(NULL, aes(c(-5,5))) + 
  geom_area(stat = "function", fun = dnorm, fill = "grey80", xlim = c(-5, -1))+
  geom_area(stat = "function", fun = dnorm, fill = "grey80", xlim = c(-1,5)) + 
  labs(x = "Nutrient intake amount", y = "Proportion of Population", title = "")+
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.line = element_blank(),
        plot.title = element_text(hjust = 0.5))+
  geom_vline(xintercept = 0, color = "red")+  
  annotate(geom = "text", x = 1, y = .45, label = "EAR", color = "red")


# dnorm gives standard normal
ggplot(NULL, aes(c(-5,5))) + 
  geom_area(stat = "function", fun = dnorm, fill = "grey80", xlim = c(-5, -1))+
  geom_area(stat = "function", fun = dnorm, fill = "grey80", xlim = c(-1,5)) + 
  labs(x = "Nutrient intake amount", y = "Proportion of Population", title = "")+
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.line = element_blank(),
        plot.title = element_text(hjust = 0.5)) + 
  geom_vline(xintercept = 0, color = "red")+  
  geom_vline(xintercept = 2, color = "red", linetype = "dashed")+ 
  annotate(geom = "text", x = 0.35, y = .45, label = "EAR", color = "red")+
  annotate(geom = "text", x = 2.35, y = .45, label = "RDA", color = "red")



# dnorm gives standard normal
ggplot(NULL, aes(c(-5,5))) + 
  geom_area(stat = "function", fun = dnorm, fill = "grey80", xlim = c(-5, -1))+
  geom_area(stat = "function", fun = dnorm, fill = "grey80", xlim = c(-1,5)) + 
  labs(x = "Nutrient intake amount", y = "Proportion of Population", title = "")+
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.line = element_blank(),
        plot.title = element_text(hjust = 0.5)) + 
  geom_vline(xintercept = 0, color = "red")+  
  geom_vline(xintercept = 2, color = "red", linetype = "dashed")+ 
  geom_vline(xintercept = 3, color = "purple", linetype = "dashed")+ 
  annotate(geom = "segment", xend = 2.25, x = 3.4, y = .33, yend = .2,color = "green")+
  annotate(geom = "text", x = 0.35, y = .45, label = "EAR", color = "red")+
  annotate(geom = "text", x = 2.35, y = .45, label = "RDA", color = "red")+
  annotate(geom = "text", x = 3.35, y = .45, label = "MTL", color = "purple")+
  annotate(geom = "text", x = 3.45, y = .35, label = "?AI?", color = "green")+
  annotate(geom = "rect", xmin = 0, xmax = 2.5, ymin = 0, ymax = .4, fill = "green", alpha = .1)


x = c(11:30)
y1 = c(25:34, rep(35, 10))
e = rnorm(n = 20, 0, 1)
y2 = y1 + e
dat = data.frame(x, y2 )
ggplot(dat,aes(x = x, y = y2)) + 
  geom_point() + 
  geom_vline(aes(xintercept = 22), color = "red")+
  annotate(geom = "text", x = 24.5, y = 37, 
           label = "Requirement of nutrient X", color = "red")+
  annotate(geom = "segment", xend = 10, x = 22, yend = 25, y = 35)+
  annotate(geom = "segment", xend = 22, x = 30, yend = 35, y = 35)+
  labs(y = "FPCM (kg)", x = "Intake amount of nutrient X") 

# 0.8x + 

x = c(11:30)
y1 = c(25:34, rep(35, 10))
e = rnorm(n = 20, 0, 1)
y2 = y1 + e
dat = data.frame(x, y2 )
ggplot(dat,aes(x = x, y = y2)) + 
  geom_point() + 
  geom_vline(aes(xintercept = 26), color = "red")+
  annotate(geom = "text", x = 20, y = 37, 
           label = "Amount X when FPCM (Y) is optimized", color = "red") +
  geom_smooth(method = "lm", formula = y~poly(x,2), se = F, color = "black")+
  labs(y = "FPCM (kg)", x = "Intake amount of nutrient X") 

knitr::purl("03_Requirements.Rmd")
