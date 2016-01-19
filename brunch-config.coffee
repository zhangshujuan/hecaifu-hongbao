exports.config =
  paths:
    watched: ['src/less', 'src/js']
    public: '_public' # export path
  files:

    javascripts:
      joinTo: 'javascripts/h5app.js'
      order:
        before: [
          'bower_components/jquery/dist/jquery.js'
        ]
    stylesheets:
      joinTo:
        'stylesheets/h5.css':///^(
          (src[\/\\]less[\/\\]h5.less)
        )///
        'stylesheets/h52.css':///^(
          (src[\/\\]less[\/\\]h52.less)
        )///
        'stylesheets/h53.css':///^(
          (src[\/\\]less[\/\\]h53.less)
        )///
        'stylesheets/h54.css':///^(
          (src[\/\\]less[\/\\]h54.less)
        )///
        'stylesheets/h55.css':///^(
          (src[\/\\]less[\/\\]h55.less)
        )///
        'stylesheets/h56.css':///^(
          (src[\/\\]less[\/\\]h56.less)
        )///
        'stylesheets/test.css':///^(
          (src[\/\\]less[\/\\]test.less)
        )///
        'stylesheets/main.css':///^(
          (src[\/\\]less[\/\\]main.less)
        )///
    templates:
       joinTo: 'javascripts/app.js'

  modules:
    nameCleaner: (path) ->
      path.replace(/^app\//, '') # root dir
  #   wrapper: (path, data) ->
  #     return 'require.define({#{path}, function (exports, require, module) {#{data}}});\n\n'
  # conventions:
  #   assets: /images(\/|\)/
  conventions:
    assets: /^app\/assets\//

 