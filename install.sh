DIR=$(dirname $(readlink -f $0));
PLUGINS_DIR=/home/$USER/.vim/pack;

echo "[INFO] Making backup of current '.vimrc'";
cp /home/$USER/.vimrc .vimrc.bak;

echo "[INFO] Deleting current '.vimrc'";
rm -rf .vimrc;

echo "[INFO] Linking new '.vimrc' to /home/$USER/.vimrc";
ln -s $DIR/vim/.vimrc /home/$USER;

echo "[INFO] Creating vim plugins directories";
mkdir -p $PLUGINS_DIR/typescript/start;
mkdir -p $PLUGINS_DIR/vim/start;

echo "[INFO] Cloning Plugins";
git clone https://github.com/neoclide/coc.nvim $PLUGINS_DIR/typescript/start/coc.nvim;
git clone https://github.com/leafgarland/typescript-vim.git $PLUGINS_DIR/typescript/start/typescript-vim.git;
git clone https://github.com/junegunn/fzf $PLUGINS_DIR/vim/start/fzf;
git clone https://github.com/junegunn/fzf.vim $PLUGINS_DIR/vim/start/fzf.vim;
git clone https://github.com/vim-airline/vim-airline $PLUGINS_DIR/vim/start/vim-airline;
git clone https://github.com/tomasiser/vim-code-dark $PLUGINS_DIR/vim/start/vim-code-dark;
git clone https://github.com/tpope/vim-fugitive $PLUGINS_DIR/vim/start/vim-fugitive;
