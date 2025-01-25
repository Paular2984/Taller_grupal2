rm(list=ls())

path <- "~/unir/Estadistica y R para datos"
getwd()
setwd(path)

df <- read.csv('Dataset expresión genes.csv')
str(df, list.len = 500)

library(ggplot2)
library(dplyr)
library(pheatmap)

Fig_1 <- ggplot(df, aes(x = trat, y = AQ_ALOX5, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_ALOX5", x = "Tratamiento", y = "Expresión de AQ_ALOX5") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_2 <- ggplot(df, aes(x = trat, y = AQ_CD274, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_CD274", x = "Tratamiento", y = "Expresión de AQ_CD274") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_3 <- ggplot(df, aes(x = trat, y = AQ_CHKA, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_CHKA", x = "Tratamiento", y = "Expresión de AQ_CHKA") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_4 <- ggplot(df, aes(x = trat, y = AQ_CSF2, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_CSF2", x = "Tratamiento", y = "Expresión de AQ_CSF2") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_5 <- ggplot(df, aes(x = trat, y = AQ_FOXO3, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_FOXO3", x = "Tratamiento", y = "Expresión de AQ_FOXO3") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_6 <- ggplot(df, aes(x = trat, y = AQ_IL6, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_IL6", x = "Tratamiento", y = "Expresión de AQ_IL6") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_7 <- ggplot(df, aes(x = trat, y = AQ_LDHA, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_LDHA", x = "Tratamiento", y = "Expresión de AQ_LDHA") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_8 <- ggplot(df, aes(x = trat, y = AQ_LIF, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_LIF", x = "Tratamiento", y = "Expresión de AQ_LIF") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_9 <- ggplot(df, aes(x = trat, y = AQ_MAPK1, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_MAPK1", x = "Tratamiento", y = "Expresión de AQ_MAPK1") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_10 <- ggplot(df, aes(x = trat, y = AQ_NOS2, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_NOS2", x = "Tratamiento", y = "Expresión de AQ_NOS2") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_11 <- ggplot(df, aes(x = trat, y = AQ_IFNG, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_IFNG", x = "Tratamiento", y = "Expresión de AQ_IFNG") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_12 <- ggplot(df, aes(x = trat, y = AQ_PDCD1, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_PDCD1", x = "Tratamiento", y = "Expresión de AQ_PDCD1") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_13 <- ggplot(df, aes(x = trat, y = AQ_PPARG, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_PPARG", x = "Tratamiento", y = "Expresión de AQ_PPARG") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_14 <- ggplot(df, aes(x = trat, y = AQ_TGFB1, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_TGFB1", x = "Tratamiento", y = "Expresión de AQ_TGFB1") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

Fig_15 <- ggplot(df, aes(x = trat, y = AQ_TNF, fill = trat)) +
  geom_boxplot(outlier.color = "black", outlier.size = 2, width = 0.7) +
  labs(title = "AQ_TNF", x = "Tratamiento", y = "Expresión de AQ_TNF") +
  scale_fill_manual(values = c("lightpink", "lightblue")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"), legend.position = 'none')

install.packages('patchwork')

library(patchwork)
combined_plot_1 <- Fig_1 + Fig_2 + Fig_3 + Fig_4 + Fig_5 + Fig_6 + Fig_7 + Fig_8 + 
  Fig_9 + Fig_10 + Fig_11 + Fig_12 + Fig_13 + Fig_14 + Fig_15 + plot_layout(ncol = 5) 
print(combined_plot_1)

#################################################################
##                           HISTOGRAMAS                       ##
#################################################################

plot_1 <- ggplot(df, aes(x = glucosa , fill = glucosa)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "Glucosa", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_2 <- ggplot(df, aes(x = leucocitos , fill = leucocitos)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "Leucocitos", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_3 <- ggplot(df, aes(x = linfocitos , fill = linfocitos)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "Linfocitos", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_4 <- ggplot(df, aes(x = neutrofilos , fill = neutrofilos)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "Neutrofilos", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_5 <- ggplot(df, aes(x = chol , fill = chol)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "chol", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_6 <- ggplot(df, aes(x = hdl , fill = hdl)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "hdl", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_7 <- ggplot(df, aes(x = hierro , fill = hierro)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "Hierro", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_8 <- ggplot(df, aes(x = igA , fill = igA)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "igA", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_9 <- ggplot(df, aes(x = igE , fill = igE)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "igE", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_10 <- ggplot(df, aes(x = igG , fill = igG)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "igG", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_11 <- ggplot(df, aes(x = igN , fill = igN)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "igN", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_12 <- ggplot(df, aes(x = ldl , fill = ldl)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "ldl", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_13 <- ggplot(df, aes(x = pcr , fill = pcr)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "PCR", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_14 <- ggplot(df, aes(x = transferrina , fill = transferrina)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "Transferrina", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_15 <- ggplot(df, aes(x = trigliceridos , fill = trigliceridos)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "Trigliceridos", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

plot_16 <- ggplot(df, aes(x = cpk , fill = cpk)) +
  geom_histogram(aes(y = after_stat(density)), bins = 30, fill = 'yellow', color = "black", alpha = 0.4, position = "identity") +
  geom_density(color = 'red', size = 1.5 ) +
  labs(title = "cpk", x = "Distribución", y = "Frecuencia") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

library(patchwork)

combined_plot <- plot_1 + plot_2 + plot_3 + plot_4 + plot_5 + 
  plot_6 + plot_7 + plot_8 + plot_9 + plot_10 + plot_11 + plot_12 + 
  plot_13 + plot_14 + plot_15 + plot_16 + plot_layout(ncol = 4)

print(combined_plot)
#################################################################
##                           HEATMAPS                          ##
#################################################################

Expresión_de_genes<- df %>% select(starts_with("AQ_"),-AQ_NOX5,-AQ_ADIPOQ) 
scale(Expresión_de_genes)

DatosHeatmap <- scale(Expresión_de_genes)


set.seed(1995)
pheatmap(DatosHeatmap, 
         main = "Heatmap",
         show_rownames = TRUE,
         cluster_cols = TRUE,
         cluster_rows = TRUE,
         cutree_rows = 3,
         cutree_cols = 2,
         color = colorRampPalette(c("blue", "white", "red"))(100))

 
Expresión_de_genes_1<- df %>% select(id, starts_with("AQ_"),-AQ_NOX5,-AQ_ADIPOQ)
rownames(Expresión_de_genes_1) <- Expresión_de_genes_1$id
Expresión_de_genes_1 <- Expresión_de_genes_1 %>% select(-id)  
invisible(scale(Expresión_de_genes_1))

DatosHeatmap_1 <- invisible(scale(Expresión_de_genes_1))
class(DatosHeatmap_1)

set.seed(1996)
pheatmap(DatosHeatmap_1, 
         main = "Heatmap",
         show_rownames = TRUE,
         fontsize_row = 5,
         cluster_cols = TRUE,
         cluster_rows = TRUE,
         cutree_rows = 2,
         cutree_cols = 2,
         color = colorRampPalette(c("blue", "white", "red"))(100))
