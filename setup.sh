link_path="/usr/local/bin"
target_path=`pwd`
exec_file="upgrade_gitlab-ce.sh"

symlink_link="$link_path/$exec_file"
symlink_target="$target_path/$exec_file"

echo "Creating symbolic link for $exec_file ..."
echo "symlink: $symlink_link"
echo "target : $symlink_target"
 
if [ -f $symlink_link ]; then
    echo "Error: symlink $symlink_link exists!"
    echo "It points to `readlink -f $symlink_link`";
    echo "We do not overwrite existing link. Do nothing.";
elif [ ! -f $symlink_target ]; then
    echo "Error: symlink target $symlink_target does not exist!";
    echo "Do nothing";
else 
    sudo ln -fs $symlink_target $symlink_link
fi


