<?php

namespace Drupal\passing_module;

/**
 * Used to demonstrate drupal-check.
 */
class MyModule {

  public function someMethod() {
    \Drupal::messenger()->addMessage('Hello world.');
  }

}
