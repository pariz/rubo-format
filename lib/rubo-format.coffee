{CompositeDisposable} = require 'atom'
{BufferedProcess} = require 'atom'

module.exports =
  RuboFormat =

    config:
      path:
        type: 'string'
        default: 'rubocop'

    activate: (state) ->

      command = "rubocop"

      atom.config.observe "rubo-format.path", (newCommand) ->
        console.log("rubo-format:","change rubocop path","new path:",newCommand)
        command = newCommand if newCommand is not undefined


      stdout = (output) ->
        console.log("rubo-format:",command,output)

      exit = (code) ->
        console.log("rubo-format:",command,"exited with #{code}")

      atom.workspace.observeTextEditors (editor) ->
        editor.onDidSave (evt) ->
          if editor.getGrammar().name is "Ruby"
            console.log("rubo-format:","formatting",evt.path)
            args = [evt.path,'-a']
            process = new BufferedProcess({command, args})
