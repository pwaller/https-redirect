// Redirect all requests to https.
package main

import (
	"fmt"
	"net"
	"net/http"
	"os"
)

func main() {
	addr := ":80"
	if len(os.Args) == 2 {
		addr = os.Args[1]
	}

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {

		tgt := *r.URL
		tgt.Scheme = "https"

		var err error

		if tgt.Host, _, err = net.SplitHostPort(r.Host); err != nil {
			tgt.Host = r.Host
		}

		http.Redirect(w, r, tgt.String(), http.StatusTemporaryRedirect)
	})

	err := http.ListenAndServe(addr, nil)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error: %v\n", err)
		os.Exit(1)
	}
}
