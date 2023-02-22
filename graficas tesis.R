
library(readxl)
library(dplyr)
library(ggplot2)
library(ggpubr)}

PCV <- read_excel("PCV.xlsx")

anova_brotes_t = PCV [c(1:36), ]

ggplot(anova_brotes_t, aes(x = Tratamiento, y= Brotes, fill = Volumen, color =Frecuencia)) +
  geom_boxplot() + geom_jitter(alpha=0.2, size = 0.1)+
  labs(x = "Tratamientos",
       y = "Índice de multiplicación")+
  theme_minimal()+
  theme(legend.position = "top")