chroma = require 'chroma-js'

root = document.documentElement
bg = ''
fg = ''
ac = ''

module.exports =
  activate: (state) ->
    bg = atom.config.get('chameleon-syntax.color.bg').toHexString()
    fg = atom.config.get('chameleon-syntax.color.fg').toHexString()
    ac = atom.config.get('chameleon-syntax.color.ac').toHexString()
    setColors()

    # Change Background
    atom.config.onDidChange 'chameleon-syntax.color.bg', ({newValue, oldValue}) ->
      bg = newValue.toHexString()
      setColors()

    # Change Foreground
    atom.config.onDidChange 'chameleon-syntax.color.fg', ({newValue, oldValue}) ->
      fg = newValue.toHexString()
      setColors()

    # Change Accent
    atom.config.onDidChange 'chameleon-syntax.color.ac', ({newValue, oldValue}) ->
      ac = newValue.toHexString()
      setColors()

  deactivate: ->
    unsetColors()

# Apply Colors -----------------------
setColors = ->
  unsetColors() # prevents adding endless properties


  # Color mixing
  _bgHigh = chroma.mix( bg, 'hsl(250, 0%, 100%)', 0.1); # mix with white
  _bgMid  = bg                                           # set by user
  _bgLow  = chroma.mix( bg, 'hsl(250, 12%, 18%)', 0.1); # mix with background


  _fgHigh = chroma.mix( fg, 'hsl(250, 0%, 100%)', 0.5); # mix with white
  _fgMid  = fg                                           # set by user
  _fgLow  = chroma.mix( fg, 'hsl(250, 12%, 18%)', 0.75); # mix with background

  _acHigh = chroma.mix( ac, 'hsl(250, 0%, 100%)', 0.5); # mix with white
  _acMid = ac                                           # set by user
  _acLow  = chroma.mix( ac, 'hsl(250, 12%, 18%)', 0.66); # mix with background


  # Color scales
  _bgScale = chroma.scale([_bgHigh, _bgMid, _bgLow]).colors(5)
  _fgScale = chroma.scale([_fgHigh, _fgMid, _fgLow]).colors(5)
  _acScale = chroma.scale([_acHigh, _acMid, _acLow]).colors(5)

  root.style.setProperty('--bg-1', _acScale[0])
  root.style.setProperty('--bg-2', _acScale[1])
  root.style.setProperty('--bg-3', _acScale[2]) # <- set by user
  root.style.setProperty('--bg-4', _acScale[3])
  root.style.setProperty('--bg-5', _acScale[4])

  root.style.setProperty('--fg-1', _fgScale[0])
  root.style.setProperty('--fg-2', _fgScale[1])
  root.style.setProperty('--fg-3', _fgScale[2]) # <- set by user
  root.style.setProperty('--fg-4', _fgScale[3])
  root.style.setProperty('--fg-5', _fgScale[4])

  root.style.setProperty('--ac-1', _acScale[0])
  root.style.setProperty('--ac-2', _acScale[1])
  root.style.setProperty('--ac-3', _acScale[2]) # <- set by user
  root.style.setProperty('--ac-4', _acScale[3])
  root.style.setProperty('--ac-5', _acScale[4])



# Unset Colors -----------------------
unsetColors = ->
  root.style.removeProperty('--bg-1')
  root.style.removeProperty('--bg-2')
  root.style.removeProperty('--bg-3')
  root.style.removeProperty('--bg-4')
  root.style.removeProperty('--bg-5')

  root.style.removeProperty('--fg-1')
  root.style.removeProperty('--fg-2')
  root.style.removeProperty('--fg-3')
  root.style.removeProperty('--fg-4')
  root.style.removeProperty('--fg-5')

  root.style.removeProperty('--ac-1')
  root.style.removeProperty('--ac-2')
  root.style.removeProperty('--ac-3')
  root.style.removeProperty('--ac-4')
  root.style.removeProperty('--ac-5')