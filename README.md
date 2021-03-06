# Chameleon syntax theme

> Warning: This is still experimental (see FAQ). Only use this theme together with the Chameleon UI theme (see under Install).

A color shifting syntax theme for Atom.

![Chameleon theme](https://cloud.githubusercontent.com/assets/378023/20452572/64e8d14a-ae50-11e6-8fb4-137d2e85ea1f.gif)


## Examples

Instead of using the color picker, you can also edit your `config.cson` file.

1 | 2 | 3
--- | --- | ---
![Chameleon dark](https://cloud.githubusercontent.com/assets/378023/20453670/c7a97de2-ae6f-11e6-96bf-405f418cc90a.png) | ![Chameleon dark brown](https://cloud.githubusercontent.com/assets/378023/20453672/d05a6410-ae6f-11e6-9778-283a9ce1a13b.png) | ![Chameleon light](https://cloud.githubusercontent.com/assets/378023/20453674/d644d504-ae6f-11e6-8d38-3d3dec2c902b.png)


```cson
# 1
"chameleon-syntax":
  color:
    ac: "#49ff94"
    bg: "#383747"
    fg: "#7093a8"

# 2
"chameleon-syntax":
  color:
    ac: "#ffc465"
    bg: "#36302d"
    fg: "#71966c"

# 3
"chameleon-syntax":
  color:
    ac: "#5a5aff"
    bg: "#fffcf9"
    fg: "#8c847b"
```


## Install

This theme isn’t published. But you can still try it out by installing it from Atom’s settings. Go to __Settings > Install__ and then enter `simurai/chameleon-syntax` and click on the "Themes" button. It should show a card with an "Install" button. Don’t forget to also install `simurai/chameleon-ui` since they depend on each other.

Then switch to the "Themes" tab and pick **Chameleon** for both, UI and Syntax.


## Settings

You can change the color scheme by going to `Settings > Themes > chameleon-syntax Theme` (or the cog icon next to the theme picker). There you can customize the background, text and accent color.

![Chameleon theme color picker](https://cloud.githubusercontent.com/assets/378023/20452184/6903a7cc-ae47-11e6-9fa1-6fa9e72caa42.png)


## FAQ

__Why isn’t this theme published?__

This theme is pretty experimental and not all packages get updated with the right colors.

By convention, Atom themes have to define a list of Less variables that other packages will use to make their package look consistent with the rest of the UI. This theme uses custom properties (CSS variables) for its colors which unfortunately aren’t compatible with Less variables.

You can certainly use it, but there might be issues where certain areas are red. See next question.

__I see red?__

If you see red somewhere it means that package still needs to be overridden. Feel free to make an issue, but no guarantee that it will be fixed everywhere.
