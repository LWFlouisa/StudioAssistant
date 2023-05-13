# StudioAssistant
A demonstration of how this chatbot processing responces.

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
~~~DSXML

~~~
