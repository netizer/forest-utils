echo "Ruby code size"
echo "* forest-rb"
cd ../forest-rb
find . | grep .rb | xargs cat | wc -l

echo "* lamb-rb"
cd ../lamb-rb
find . | grep .rb | xargs cat | wc -l

echo "* groundcover-rb"
cd ../groundcover-rb
find . | grep .rb | xargs cat | wc -l
