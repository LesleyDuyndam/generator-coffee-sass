module.exports = (grunt) ->

  #    Project configuration.
    grunt.initConfig {
      package: grunt.file.readJSON('package.json')
    }

  #    Load the plugin