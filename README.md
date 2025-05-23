# Technical Documentation

## Contributing

### Making documentation changes

To make changes edit the source files in the [source/docs](source/docs) folder.

### Adding documentation

You can add a new file to the source/docs folder (or an appropriate sub-folder) to create a new page.

It is probably easiest to copy an existing file and change the name if you are new to writing text in [markdown](https://www.markdownguide.org/).


### Raising and merging PRs to this repo

To submit changes to this repo, raise a PR in the usual way detailing documentation changes in the description.

### The GDS Way

The Digital Handbook was built using the [gds-way](https://github.com/alphagov/gds-way) as a starting point.

## Running Locally

### Getting started

To preview or build the website, we need to use the terminal.

You can use the Dockerfile provided:

```
docker build . -t digital-handbook
docker run --rm -p 4567:4567 -p 35729:35729 -v $(pwd):/usr/src/docs -it digital-handbook
```

Alternatively, you can simply run the startup.sh script, which automates the above steps:

```
./startup.sh
```

Otherwise, the following steps will get Middleman running locally.

#### Install Ruby and Bundler

Install Ruby with Rubygems, preferably with a [Ruby version manager][rvm],
and the [Bundler gem][bundler].

A [.ruby-version](./.ruby-version) file is provided for use with [rbenv][].
If you update it, please update the [Dockerfile](./Dockerfile).

#### Clone the repository

Clone the repository using:

```
git clone https://github.com/cabinetoffice/digital-handbook
cd digital-handbook
```

#### Additional commands for Apple silicon

If you are using a Mac with Apple silicon (such as an M1 chip), you must run additional commands.

> **Note**
> If you are using an Intel Mac, skip this and go to the ‘Install the required gems’ step.

Tell Bundler to use libraries relating to the Apple silicon architecture:

```
 bundle lock --add-platform arm64-darwin-21
 bundle config --local specific_platform true
 bundle config --local build.ffi --enable-libffi-alloc
```

We need to make sure the EventMachine gem is built with OpenSSL from [Homebrew](https://brew.sh/) and not the default macOS version of OpenSSL.

First, install OpenSSL 1.1:

```
brew install openssl@1.1
```

Do not worry if Homebrew says OpenSSL 1.1 is already installed.

Then tell your Mac to use the Homebrew installation of OpenSSL 1.1 when looking for packages (this will last until you end your terminal session):

```
export PKG_CONFIG_PATH=$(brew --prefix openssl@1.1)/lib/pkgconfig
```

#### Install the required gems
Then in the application folder type the following to install the required gems:

```
bundle config set path 'vendor/bundle'
bundle install
```

### Preview

Whilst writing documentation we can run a middleman server to preview how the
published version will look in the browser. After saving a change the preview in
the browser will automatically refresh.

The preview is only available on our own computer. Others will not be able to
access it if they are given the link.

Type the following to start the server:

```
bundle exec middleman server
```

If all goes well something like the following output will be displayed:

```
== The Middleman is loading
== LiveReload accepting connections from ws://192.168.0.8:35729
== View your site at "http://Laptop.local:4567", "http://192.168.0.8:4567"
== Inspect your site configuration at "http://Laptop.local:4567/__middleman", "http://192.168.0.8:4567/__middleman"
```

You should now be able to view a live preview at http://localhost:4567.

### Build

If you want to publish the website without using a build script you may need to
build the static HTML files.

Type the following to build the HTML:

```
bundle exec middleman build
```

This will create a `build` subfolder in the application folder which contains
the HTML and asset files ready to be published.

### Check external links

If you want to verify that all of the external links in every page work (i.e.
do not return an HTTP error code), use the `check_links.rb` script.

```
bundle exec ruby check_links.rb
```

This script is automatically run as part of CI, but skipped on the main branch
(so that the main branch can always be deployed).

## Deploy

This repo is continuously deployed from the `main` branch by GitHub Actions, using the workflow defined in [`/.github/workflows/deploy-to-pages.yaml`](/.github/workflows/deploy-to-pages.yaml).

## Licence

Unless stated otherwise, the codebase is released under [the MIT License][mit].
This covers both the codebase and any sample code in the documentation.

The documentation is [© Crown copyright][copyright] and available under the terms
of the [Open Government 3.0][ogl] licence.

[rvm]: https://www.ruby-lang.org/en/documentation/installation/#managers
[rbenv]: https://github.com/rbenv/rbenv
[bundler]: https://bundler.io/
[mit]: LICENCE
[copyright]: https://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/crown-copyright/
[ogl]: https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
