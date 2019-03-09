function pi
	env CC=/usr/bin/arm-linux-gnu-gcc CGO_CFLAGS="-I /usr/arm-linux-gnu/include" GOOS=linux GOARCH=arm GOARM=7 CGO_ENABLED=1 $argv
end
