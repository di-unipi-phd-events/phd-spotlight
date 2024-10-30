setup:
	bundle install

serve:
	bundle exec jekyll serve --livereload

build:
	export JEKYLL_ENV="production" && bundle exec jekyll build