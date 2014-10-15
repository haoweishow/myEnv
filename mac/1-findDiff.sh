func_diff()
{
    echo "begin to diff file"
	echo "    src:$src"
	echo "    tar:$tar"
    diff $src $tar
}

main()
{
    src=/Users/haoweishow/.zshrc
	tar=user.zshrc
	func_diff

	src=/Users/haoweishow/.vimrc
	tar=user.vimrc
	func_diff
}

main
