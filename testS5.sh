repo_name=$(basename `git rev-parse --show-toplevel`);
if grep -Fxq "$repo_name" dependencies
then
	echo "in dep";

else
	echo "not in dep";
	echo $repo_name >> dependencies;
fi

echo "";
echo "dependencies :";
cat dependencies;