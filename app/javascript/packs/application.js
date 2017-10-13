/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import WebpackerReact from 'webpacker-react'

import LearningComponent from 'components/learning_component'
import StoryTable from 'components/story_table.js'

import injectTapEventPlugin from 'react-tap-event-plugin';

// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin();

WebpackerReact.setup({LearningComponent, StoryTable})
    // when adding new component, add to this ES6 hash syntax
    // ie adding a FooBar component should make this line be
    // WebpackerReact.setup({LearningComponent, Foobar})

