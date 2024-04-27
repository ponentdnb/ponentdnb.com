rm -rf _site
bundle exec jekyll build
cd _site
tar czvf package.tar.gz *
scp -P 131 package.tar.gz marcsances@192.168.0.20:/home/marcsances/ponentdnb/package.tar.gz
ssh -o StrictHostKeyChecking=no -p 131 marcsances@192.168.0.20 "cd /home/marcsances/ponentdnb; tar zxvf package.tar.gz"
