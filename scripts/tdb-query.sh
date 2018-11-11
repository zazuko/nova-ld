#!/bin/sh
# some INSERTs
tdbupdate --loc=target/tdb --update=sparql/hop.rq

# and after that cleanup
#tdbupdate --loc=target/tdb --update=construct/delete-something.rq
