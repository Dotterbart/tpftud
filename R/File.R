#´ Find the best "1, 2 oder 3" answer
#´
#´ @param x A question (character)
#´ @return The number of the best answer
#´ @examples
#´ ezod("Which of the three is correct?")
ezod <- function(x = "Frage"){
  if (!is.character(x)) stop("Fragen gehoeren in Anfuehrungszeichen")
  sample(1:3, 1)
}

#´ Find the best "Wer wird Millionaer" answer
#´
#´ @param x A question (character)
#´ @return The letter of the best answer
#´ @examples
#´ wwm("Which of the four is correct?")
wwm <- function(x = "Frage"){
  if (!is.character(x)) stop("Fragen gehoeren in Anfuehrungszeichen")
  sample(c("A", "B", "C", "D"), 1)
}

#´ Find the best "Der Preis ist heiß" answer
#´
#´ @param x A product (character)
#´ @return The price of the product
#´ @examples
#´ dpih("How much is the fish?")
dpih <- function(x = "Objekt"){
  if (!is.character(x)) stop("zu schaetzende Artikel gehoeren in Anfuehrungszeichen")
  cat(sample(seq(0.01, 200, 0.01), 1), "Euro")
}

#´ Find the best "Geh aufs Ganze" answer
#´
#´ @param x The kind of choice (character)
#´ @return The definitive best choice
#´ @examples
#´ gag("Umschlag")
#´ gag("Tor")
gag <- function(x = "Tor"){
  if (!is.character(x)) stop("insgeheim gibt es nur Umschlag oder Tor (jeweils in Anfuehrungszeichen)")
  if (x == "Umschlag" | x == "umschlag"){
    return(cat(sample(c("gelber", "gruener", "blauer", "roter"), 1), "Umschlag"))
  }
  cat("Tor", sample(1:3, 1))
}
