package main

import "github.com/cnnrznn/gomr/pkg/driver"

func main() {
	d := driver.NewDriver("wordcount", 3)
	d.Run("wordcount", "/data/moby.txt", "/data/wc.txt")
}
