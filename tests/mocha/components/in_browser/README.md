Tests in this folder are meant to be run via PhantomJS or other service that fully emulates a browser.

React components should - ideally - not touch the real DOM, or rely on their being a real browser. However, sometimes in browser functionality must be tested.

Our testing strategy should be seen as a pyramid: mostly unit tests, with a sprinkle of in browser tests for flavor.
