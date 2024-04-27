rm -rf _site
bundle exec jekyll build
cd _site
tar czvf package.tar.gz *
scp -P 1310 package.tar.gz marcsances@marquii.duckdns.org:/home/marcsances/ponentdnb/package.tar.gz
ssh -o StrictHostKeyChecking=no -p 1310 marcsances@marquii.duckdns.org "cd /home/marcsances/ponentdnb; tar zxvf package.tar.gz"
