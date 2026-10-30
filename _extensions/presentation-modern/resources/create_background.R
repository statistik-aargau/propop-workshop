library(magick)

# Title slide
img <- image_blank(width = 3000, height = 2000, color = "#004875")

logo <- image_read("Vorlage_Präsentation/_extensions/presentation-modern/resources/crest_white.png")

# Resize the logo
logo <- image_scale(logo, "350x350")

img <- image_composite(img, logo, offset = "+240+90")

image_write(img, path = "Vorlage_Präsentation/_extensions/presentation-modern/resources/background_modern.png")

# Slide theme split
part_white <- image_blank(width = 3000, height = 2000, color = "white")

part_yellow <- image_blank(width = 1300, height = 2000, color = "#F1DFB1")

split <- image_composite(part_white, part_yellow, offset = "+0+0")
print(split)
image_write(split, path = "Vorlage_Präsentation/_extensions/presentation-modern/resources/split.png")
