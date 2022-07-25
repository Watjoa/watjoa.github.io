library(scholar)
library(vitae)
library(writexl)

id <- get_publications("F-fOgBoAAAAJ&hl")
impact <- get_impactfactor(journals=id$journal, max.distance = 0.1)
id <- cbind(id, impact)
write_xlsx(id,'list_references.xlsx')


