# kgc-beamer
Beamer template for Knowledge Graph Conference (work in progress)

:bangbang: This is **not** an offical template!

Made for fun by Veronika Heimsbakk, veronika.heim@gmail.com


## Commands
### `\tp{text}`
Compiles a title page. 
* `text` is the summary of your presentation. 

### `\presentationframe{image_location}{text}`
Compiles a presentation of the speaker. 
* `image_location` set path to image of choice. :bangbang: **Important to use a quadratic image** :bangbang:
* `text` is some text summary of choice. 

### `\subtitleframe{frametitle}`
Compiles a transition title slide. 
* `frametitle` is the title of the slide.

### `\theend{twittername}`
Compiles an ending slide. 
* `twittername` your nickname on twitter.

## Environment
### `code`
Compiles a `tcolorbox` styled for code snippet purposes. Does not contain syntax highlighting.
