# StudioAssistant
A demonstration of how this chatbot processing responces.

## Differences From Mainland And Dialectical Francais
Note that there are differences from this fictional creole language and standard French, for more information:

[Fraponic Static](https://lwflouisa.github.io/StudioAssistant/FraponicStatic/)

## Upper AIML
~~~
<?xml version = "1.0" encoding = "UTF-8"?>

<aiml version = "1.0.1" encoding = "UTF-8">
  <category>
    <pattern>Can you say something to me in French?</pattern>
    <template>
      <system>cd Routines/AlucaLanguage; ruby gen_feed.rb</system>
    </template>
  </category>
<aiml>
~~~

## Lower DSXML using Aluca Language
The machine automatically generates this form of XML to create realistic human responces in French.

~~~DSXML
<grammar>
  <phrase context=''>
    <gender>Le</gender>
    <noun>maizon</noun>
    <adjective>gris</adjective>
    <conjunction>es</conjunction>
    <verb>azeoir</verb>
    <adverb>pedecise</adverb>
    <punctuation>.</punctuation>
  </phrase>
</grammar> 
~~~

## Terminal Output
~~~
BIANCA: Le maizon gris es azeoir pedecise.
BIANCA: That makes sense.
~~~

## RSS Output
This comes with an RSS feed, which can be found in Routines/AlucaLanguage/_feed/feed.xml
