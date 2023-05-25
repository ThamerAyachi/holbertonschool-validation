package main

import (
	"fmt"
	"io"
	"net/http"
)

func HelloHandler(w http.ResponseWriter, r *http.Request) {
	// Extract the query parameters from the GET request
	queryParams := r.URL.Query()

	// Retrieve the query parameters with the key "name"
	nameParams := queryParams["name"]

	var name string
	switch len(nameParams) {
	case 0:
		// Set the name variable to "there" when there is no parameter "name" in the request
		name = "there"
	default:
		// Set the name variable to the first parameter "name" in the request
		name = nameParams[0]
	}

	// Return status 400 if name is empty
	if name == "" {
		w.WriteHeader(400)
		return
	}

	// Write the string "Hello <name>" into the response's body
	_, _ = io.WriteString(w, fmt.Sprintf("Hello %s!", name))

	// Print a line in the ACCESS log
	fmt.Printf("HIT: hello handler with name %s \n", name)
}
