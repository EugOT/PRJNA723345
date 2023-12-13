library(tidyverse)
metrics_summary_SRR14289035 <- read_csv("/data/PRJNA723345/cellranger/SRR14289035/outs/metrics_summary.csv") %>% mutate(Run = "SRR14289035")
metrics_summary_SRR14289036 <- read_csv("/data/PRJNA723345/cellranger/SRR14289036/outs/metrics_summary.csv") %>% mutate(Run = "SRR14289036")
metrics_summary_SRR14289037 <- read_csv("/data/PRJNA723345/cellranger/SRR14289037/outs/metrics_summary.csv") %>% mutate(Run = "SRR14289037")
metrics_summary_SRR14289038 <- read_csv("/data/PRJNA723345/cellranger/SRR14289038/outs/metrics_summary.csv") %>% mutate(Run = "SRR14289038")
metrics_summary <-
  bind_rows(
    metrics_summary_SRR14289035,
    metrics_summary_SRR14289036,
    metrics_summary_SRR14289037,
    metrics_summary_SRR14289038)

metrics_summary |>
  select("Estimated Number of Cells", "Run")

write_tsv(metrics_summary, "/data/PRJNA723345/metrics_summary.tsv")

