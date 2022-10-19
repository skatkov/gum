#!/bin/sh

gum confirm "Uninstall rdoc-markdown gem?" && gem uninstall rdoc-markdown

RDOC_MARKDOWN_DIR="/home/stas/Code/rdoc-markdown"
cd $RDOC_MARKDOWN_DIR; gem build rdoc-markdown.gemspec --silent

GEM=$(gum choose $(ls $RDOC_MARKDOWN_DIR/*.gem))

gem install $GEM
