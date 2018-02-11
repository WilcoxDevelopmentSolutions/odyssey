AWS services often litter config files in the root of the project. This is slightly annoying as these often have common-ish names: env.yml, buildspec.yml, etc etc.

All AWS configuration files should go in this folder, then the required files should just be (relative!) symlinks back to this directory.

Bonus points awarded for using more descriptive names (ie `buildspec.yml` symlinked to `aws/codebuild.yml`)
