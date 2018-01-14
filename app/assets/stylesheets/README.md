Organizing the CSS
======================

Prefer @mixins to putting multiple classes on an element
-----------------------

To keep the CSS easier at point of use

Split things into components folder
-----------------------

Styles for both React and normal "components" should live in `app/assets/stylesheets/components`, giving us a unified place for styles.

Use @import instead of require_tree
-----------------------

This allows us to use Sass mixins or variables from other files, but does require manual addition of asset files
