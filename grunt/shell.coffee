module.exports =
  dist_make:
    command: [
      'rm -rf docroot'
      'drush make rest-cms.make docroot'
    ].join('&&')
  profile_make:
    command: 'drush make --no-core --contrib-destination=. --yes satellite.make'
    options:
      execOptions:
        cwd: 'src/satellite'
