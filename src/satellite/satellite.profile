<?php

/**
 * Implements hook_profile_details().
 */
function satellite_profile_details() {
  return array(
    'name' => 'Satellite',
    'description' => 'Install profile for a RESTful CMS proof-of-concept.',
  );
}

/**
 * Implements hook_install_tasks().
 */
function satellite_install_tasks() {
  return array(
    '_satellite_install_task_theme' => array('display' => FALSE),
  );
}

function _satellite_install_task_theme(&$install_state) {
  $theme = 'rubik';
  theme_enable(array($theme));
  variable_set('theme_default', $theme);
  theme_disable(array('bartik'));
}
