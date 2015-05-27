require 'coffee-errors'

util = require 'util'
path = require 'path'
yeoman = require 'yeoman-generator'

buildString = ( files ) ->
  bufferString = '['

  last = files.length - 1
  counter = 0;

  for filename in files
    do (filename ) ->
      bufferString += '"' + filename + '"'
      bufferString += if counter != last  then ", " else "]"
      counter++

  bufferString

#
class CoffeeKarmaGenerator extends yeoman.generators.Base
  constructor: (args, options) ->
    super
    @currentYear = (new Date()).getFullYear()
    @on 'end', => @installDependencies skipInstall: options['skip-install']

    @pkg_generator      = JSON.parse @readFileAsString path.join __dirname, '../package.json'
    @pkg_template       = JSON.parse @readFileAsString path.join __dirname, 'templates/_package.json'
    @pkg_template_files = buildString(  @pkg_template.files )


  askFor: ->
    done = @async()

    # have Yeoman greet the user.
    console.log @yeoman

    prompts = [
      name:     'moduleName'
      message:  'What\'s the name of your project?'
      default:  @_.slugify(@appname)
    ,
      name:     'moduleDescription'
      message:  'Can you give me a short description of your project?'
      default:  'Awesome CoffeeScript project, build with Yeoman'
    ]

    @prompt( prompts, (props) =>
      @appname      = props.moduleName
      @description  = props.moduleDescription
      @slug         = @_.slugify @appname
      done()
    )

  projectfiles: ->
    @template '_package.json', 'package.json'
    @template '_README.md', 'README.md'
    @template '_gruntfile.coffee', 'gruntfile.coffee'
    @template '_bower.json', 'bower.json'
    @template '.bowerrc'

  gitfiles: ->
    @copy '_gitignore', '.gitignore'

  app: ->
    @mkdir 'dist'
    @template 'dist/index.html', "dist/index.html"
    @template 'src/coffee/index.coffee', "src/coffee/#{@appname}.coffee"
    @template 'src/coffee/classes/example.class.coffee', "src/coffee/classes/example.class.coffee"
    @template 'src/sass/main.scss', 'src/sass/main.scss'

module.exports = CoffeeKarmaGenerator