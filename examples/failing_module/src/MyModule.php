<?php

namespace Drupal\failing_module;

/**
 * Used to demonstrate drupal-check.
 */
class MyModule {

  public function someMethod() {
    drupal_set_message('hello world.');
  }

}
