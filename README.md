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

## Input
Go to User Choice. Choose any number from 0-4. This determines the specific phrase chosen:

~~~
Routines/AlucaLanguage/_input/user/user_choice.txt
~~~

Now go look into the grammatic components:

~~~
gender.txt
nouns.txt
conjucation.txt
verbs.txt
adverbs.txt
~~~

Note that punctuation is determined automatically. These help the machine determine what grammar pattern it needs to follow by comparing what sentence it knows to the sentence that you have written in order to improve its knowledge set. This is organized to match the specific grammar found in Fraponic Static.

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
