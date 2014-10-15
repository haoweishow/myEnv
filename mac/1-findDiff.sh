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
	tar=haoweishow.zshrc
	func_diff

	src=/Users/haoweishow/.vimrc
	tar=haoweishow.vimrc
	func_diff
}

main
