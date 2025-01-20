setup:
	bundle install

serve:
	bundle exec jekyll serve --livereload

build:
	export JEKYLL_ENV="production" && bundle exec jekyll build

publish: build
	rclone sync -v _site/ PHDSPOTLIGHT:/web

# to use Makefile do:
# bash --login
# rvm use 2.7.8
# make <rule>