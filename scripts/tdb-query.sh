#!/bin/sh
# some INSERTs
tdbupdate --loc=target/tdb --update=construct/something.rq


# and after that cleanup
tdbupdate --loc=target/tdb --update=construct/delete-something.rq
