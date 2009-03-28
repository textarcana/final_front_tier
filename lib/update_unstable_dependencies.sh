# update this app's unstable dependencies
# Execute the following commands in the application root

# Haml, Compass and
# the jRails plugin.

git clone git://github.com/nex3/haml.git
cd haml; rake install
cd ..; rm -rf haml
sudo gem install --source http://gems.github.com/ chriseppstein-compass
./script/plugin install http://ennerchi.googlecode.com/svn/trunk/plugins/jrails

# JSDoc Toolkit for generating documentation
# from JavaScript sources.
# First cd to /branches, then do:
#
# svn rm misc/vendor/jsdoc-toolkit
# svn ci -m "removing old unstable jsdoc toolkit" misc/vendor
# svn checkout http://jsdoc-toolkit.googlecode.com/svn/trunk/ jsdoc-toolkit-read-only
# svn export jsdoc-toolkit-read-only/jsdoc-toolkit misc/vendor/jsdoc-toolkit
# svn add misc/vendor/jsdoc-toolkit
# svn ci -m "upgrading to latest unstable jsdoc toolkit" misc/vendor
