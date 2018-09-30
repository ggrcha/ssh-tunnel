#!/bin/bash

if [[ -z "${REMOTE_HOST}" ]]; then
	echo ERROR: REMOTE_HOST cannot be zero
	exit 1
fi

if [[ -z "${REMOTE_USER}" ]]; then
	echo ERROR: REMOTE_USER cannot be zero
	exit 1
fi

ssh -4 -v -NL 23771:"${REMOTE_HOST}":2377 "${REMOTE_USER}"@"${REMOTE_HOST}"
