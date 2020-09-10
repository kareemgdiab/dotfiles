DIR=$(dirname $(readlink -f $0));
echo "Script directory: $DIR";

echo "Making backup of current '.vimrc'";
cp /home/$USER/.vimrc .vimrc.bak;

echo "Deleting current '.vimrc'";
rm -rf .vimrc;

echo "Linking new '.vimrc' to /home/$USER/.vimrc";
ln -s $DIR/vim/.vimrc /home/$USER;
