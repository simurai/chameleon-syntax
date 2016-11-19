# Chameleon syntax theme

> Warning: This is still experimental (see FAQ). Only use this theme together with the Chameleon UI theme (see under Install).

A color shifting syntax theme for Atom.

![Chameleon theme](https://cloud.githubusercontent.com/assets/378023/20452425/8c2716e4-ae4c-11e6-9e68-744460bdff44.gif)


### Install

This theme isn’t published. But you can still try it out by installing it from Atom’s settings. Go to __Settings > Install__ and then enter `simurai/chameleon-syntax` and click on the "Themes" button. It should show a card with an "Install" button. Don’t forget to also install `simurai/chameleon-ui` since they depend on each other.

Then switch to the "Themes" tab and pick **Chameleon** for both, UI and Syntax.


## Settings

You can change the color scheme by going to `Settings > Themes > chameleon-syntax Theme` (or the cog icon next to the theme picker). There you can customize the background, text and accent color.

![Chameleon theme color picker](https://cloud.githubusercontent.com/assets/378023/20452184/6903a7cc-ae47-11e6-9fa1-6fa9e72caa42.png)


### FAQ

__Why isn’t this theme published?__

This theme is pretty experimental and not all packages get updated with the right colors.

By convention, Atom themes have to define a list of Less variables that other packages will use to make their package look consistent with the rest of the UI. This theme uses custom properties (CSS variables) for its colors which unfortunately aren’t compatible with Less variables.

You can certainly use it, but there might be issues where certain areas are red. See next question.

__I see red?__

If you see red somewhere it means that package still needs to be overridden. Feel free to make an issue, but no guarantee that it will be fixed everywhere.
