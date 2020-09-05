echo "Code sizes"
cd ../
echo "* Ruby"
find . | grep "\.rb" | xargs cat | wc -l

echo "* Forest"
find . | grep "\.forest" | xargs cat | wc -l

echo "* Groundcover"
find . | grep "\.gc" | xargs cat | wc -l
