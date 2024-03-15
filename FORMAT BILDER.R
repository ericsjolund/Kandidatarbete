library(ggplot2)
setwd("//ad.liu.se/home/erisj981/Downloads")

df <- read.csv("arb_df (2).csv")
df$Datum <- as.Date(df$Datum)

## 900x600

theme_set(theme_bw() +
  theme(axis.title.y = element_text(angle = 90, 
                       hjust = 0.5, 
                       vjust = 0.5,
                       size = 14), 
        plot.title = element_text(hjust = 0.5,
                                  size = 17),
        plot.subtitle = element_text(hjust = 0.5),
        plot.caption = element_text(face = "italic",
                                    hjust = 0,
                                    size = 11),
        panel.grid.major.x = element_line(color = "gray"),
        panel.grid.minor.x = element_line(color = "light gray"),
        panel.grid.major.y = element_line(color = "gray"),
        panel.grid.minor.y = element_line(color = "light gray")))

ggplot(data = df) +
  aes(x = df$Datum, y = df$Relativt.arbetslöshetstal) +
  geom_line(size = 1.1,
            colour = "dark orange")+
  labs(x = "",
       y = "Relativt Arbetslöshetstal (%)",
       title = "Relativt arbetslöshetstal(%), 2001-2023",
       caption = "Källa: Ålands statistik- och udredningsbyrå (ÅSUB)") +
  scale_x_date(date_breaks = "3 years",
               date_labels = "%Y", 
               limits = as.Date(c("2001-01-01","2023-12-01")))


ggplot(data = df) +
  aes(x = df$Datum, y = df$Ungdomsarbetslöshetstal..under.25.år.) +
  geom_line(size = 1.1,
            colour = "dark orange")+
  labs(x = "",
       y = "Ungdomsarbetslöshetstal < 25år(%)",
       title = "Ungdomsarbetslöshetstal under 25år(%), 2001-2023",
       caption = "Källa: Ålands statistik- och udredningsbyrå (ÅSUB)") +
  scale_x_date(date_breaks = "3 years",
               date_labels = "%Y", 
               limits = as.Date(c("2001-01-01","2023-12-01")))

#### Lediga platser / Arbetslösa (%) ####
ggplot(data = df) +
  aes(x = df$Datum, y = df$Lediga.platser...arbetslösa) +
  geom_line(size = 1.1,
            colour = "dark orange")+
  labs(x = "",
       y = "Lediga platser / Arbetslösa (%)",
       title = "Lediga platser / Arbetslösa i (%), 2001-2023",
       caption = "Källa: Ålands statistik- och udredningsbyrå (ÅSUB)") +
  scale_x_date(date_breaks = "3 years",
               date_labels = "%Y", 
               limits = as.Date(c("2001-01-01","2023-12-01")))


#### Totalsumma lön ####
ggplot(data = df) +
  aes(x = df$Datum, y = df$Totalsumma_lön) +
  geom_line(size = 1.1,
            colour = "dark orange")+
  labs(x = "",
       y = "Lönesumma",
       title = "Näringslivets Totala Lönesumma, 2001-2023",
       caption = "Källa: Ålands statistik- och udredningsbyrå (ÅSUB)") +
  scale_x_date(date_breaks = "3 years",
               date_labels = "%Y", 
               limits = as.Date(c("2001-01-01","2023-12-01")))



#### Total omsättning ####
ggplot(data = df) +
  aes(x = df$Datum, y = df$konsumenprisindex) +
  geom_line(size = 1.1,
            colour = "dark orange")+
  labs(x = "",
       y = "Konsumentprisindex (%)",
       title = "Konsumentprisindex(%), 2001-2023",
       caption = "Källa: Ålands statistik- och udredningsbyrå (ÅSUB)") +
  scale_x_date(date_breaks = "3 years",
               date_labels = "%Y", 
               limits = as.Date(c("2001-01-01","2023-12-01")))

#### KPI ####
ggplot(data = df) +
  aes(x = df$Datum, y = df$konsumenprisindex) +
  geom_line(size = 1.1,
            colour = "dark orange")+
  labs(x = "",
       y = "Konsumentprisindex (%)",
       title = "Konsumentprisindex(%), 2001-2023",
       caption = "Källa: Ålands statistik- och udredningsbyrå (ÅSUB)") +
  scale_x_date(date_breaks = "3 years",
               date_labels = "%Y", 
               limits = as.Date(c("2001-01-01","2023-12-01")))

