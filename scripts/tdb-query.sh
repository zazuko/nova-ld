#!/bin/sh
# some INSERTs
tdbupdate --loc=target/tdb --update=sparql/hop.rq
tdbupdate --loc=target/tdb --update=sparql/rate.rq
tdbupdate --loc=target/tdb --query=sparql/verwaltung-betreiber.rq

# and after that cleanup
#tdbupdate --loc=target/tdb --update=construct/delete-something.rq
