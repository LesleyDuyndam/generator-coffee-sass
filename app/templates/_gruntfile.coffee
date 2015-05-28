module.exports = (grunt) ->

  #    Project configuration.
  grunt.initConfig {

    pkg: grunt.file.readJSON('package.json'),

    karma: {
      unit:
        configFile: 'karma.config.coffee'
    },

    coffee: {
      compile:
        files:
          "dist/scripts/<%= slug %>.js": ["src/coffee/classes/*.coffee", "src/coffee/*.coffee"]
    },

    sass: {
      files:
        "dist/style/main.css": ["src/sass/main.scss"]
    },

    uglify: {
      my_target:
        files:
          "dist/<%= slug %>.min.js": ["dist/<%= slug %>.js"]
    },

    watch: {
      coffee:
        files: ['src/coffee/**/*.coffee'],
        tasks: ['coffee']

      sass: {
        files: ['src/sass/**/*.scss'],
        tasks: ['sass']
      }
    }
  }

  #    Load the plugin
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-sass')
  grunt.loadNpmTasks('grunt-contrib-uglify')
  grunt.loadNpmTasks('grunt-contrib-watch')

  #   Default task
  grunt.registerTask( 'default', [
    'coffee',
    'sass',
    'uglify',
  ])