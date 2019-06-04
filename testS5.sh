repo_name=$(basename `git rev-parse --show-toplevel`)
arg=$0;
filename=$(basename "$0")
dep_path=${arg%"$filename"}
dep_name="dependencies"
dep_path="$dep_path$dep_name"

IFS=' ' read -r branch urlplus <<< "$(git remote -v)"
read -r fetch url <<< "$branch"

if grep -Fxq "$repo_name" $dep_path
then
	echo "in dep"
else
	echo "not in dep - updating..."
	echo "$repo_name $url" >> $dep_path
	echo "added to dep"
fi

echo "";
echo "dependencies :"
cat $dep_path