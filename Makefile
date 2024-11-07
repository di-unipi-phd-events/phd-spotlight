setup:
	bundle install

serve:
	bundle exec jekyll serve --livereload

build:
	export JEKYLL_ENV="production" && bundle exec jekyll build

publish: build
	rclone sync -v _site/ PHDSPOTLIGHT:/web