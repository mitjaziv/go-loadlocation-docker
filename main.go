package main

import (
	"fmt"
	"time"
)

func main() {

	// Load required location
	location, err := time.LoadLocation("Europe/Berlin")
	if err != nil {
		fmt.Println(err)
	}

	// Get local German time
	t := time.Now().In(location)

	// Display local german time
	fmt.Println("Time in Berlin:", t.Format("02.01.2006 15:04"))
}
