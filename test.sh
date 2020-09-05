echo "* TEST code-lib-forest"
cd ../core-lib-forest
forest app test unit

echo "\n\n* TEST groundcover-rb"
cd ../groundcover-rb
rspec

echo "\n* TEST lamb-rb"
cd ../lamb-rb
rspec

echo "\n* TEST forest-rb"
cd ../forest-rb
rspec
