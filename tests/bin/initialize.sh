#!/bin/bash
npm run env run tests-wordpress "chmod -c ugo+w /var/www/html"
npm run env clean all
npm run env run tests-cli "wp rewrite structure '/%postname%/' --hard"
npm run env run tests-cli "wp post create --post_type=page --post_title='Blog' --post_name=blog --post_status=publish"
