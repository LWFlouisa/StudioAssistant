require "naive_bayes"

a = NaiveBayes.load('_data/language/bianca.nb') 

## Spam
b = File.read("_posts/input.md").to_s

result = a.classify(b)

puts "BIANCA: That makes #{result[0]}."

open("_posts/input.md", "w") { |f|
  f.puts "## BIANCA"
  f.puts "BIANCA: That makes #{result[0]}."
}
