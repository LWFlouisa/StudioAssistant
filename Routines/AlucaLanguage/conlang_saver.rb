require "naive_bayes"

a             = NaiveBayes.new(:sense, :nonsense)
a.db_filepath = "_data/language/bianca.nb"

## Spam
a.train(:sense,    "BIANCA: La cabine braun es azeoir pedecise.", "word")
a.train(:sense,      "BIANCA: La demeure vert sont oublie vite.", "word")
a.train(:sense, "BIANCA: Le zigner braun esa azeoir mopedecise.", "word")
a.train(:sense,     "BIANCA: Le maizon gris es azeoir pedecise.", "word")

## Not Spam
a.train(:nonsense,    "BIANCA: es azeoir pedecise. La cabine braun", "word")
a.train(:nonsense,    "BIANCA: cabine braun es azeoir pedecise. La", "word")
a.train(:nonsense,    "BIANCA: La cabine braun es azeoir pedecise.", "word")
a.train(:nonsense,    "BIANCA: pedecise. La cabine braun es azeoir", "word")
# a.train(:nonsense,    "BIANCA: azeoir pedecise. La cabine braun es", "word")
# a.train(:nonsense,      "BIANCA: sont oublie vite. La demeure vert", "word")
# a.train(:nonsense,      "BIANCA: vert sont oublie vite. La demeure", "word")
# a.train(:nonsense,      "BIANCA: demeure vert sont oublie vite. La", "word")
# a.train(:nonsense,      "BIANCA: vite. La demeure vert sont oublie", "word")
# a.train(:nonsense,      "BIANCA: oublie vite. La demeure vert sont", "word")
# a.train(:nonsense, "BIANCA: azeoir mopedecise. Le zigner braun esa", "word")
# a.train(:nonsense, "BIANCA: esa azeoir mopedecise. Le zigner braun", "word")
# a.train(:nonsense, "BIANCA: braun esa azeoir mopedecise. Le zigner", "word")
# a.train(:nonsense, "BIANCA: zigner braun esa azeoir mopedecise. Le", "word")
# a.train(:nonsense,     "BIANCA: Le maizon gris es azeoir pedecise.", "word")
# a.train(:nonsense,     "BIANCA: pedecise. Le maizon gris es azeoir", "word")
# a.train(:nonsense,     "BIANCA: es azeoir pedecise. Le maizon gris", "word")

a.save

# b = "BIANCA: La cabine braun es azeoir pedecise."

# result = a.classify(b)

# print "That makes #{result[0]}."
