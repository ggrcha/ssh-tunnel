#!/bin/bash

if [[ -z "${REMOTE_HOST}" ]]; then
	echo ERROR: REMOTE_HOST cannot be zero
	exit 1
fi

if [[ -z "${REMOTE_USER}" ]]; then
	echo ERROR: REMOTE_USER cannot be zero
	exit 1
fi

if [[ -z "${REMOTE_PORT}" ]]; then
        echo ERROR: REMOTE_PORT cannot be zero
        exit 1
fi

if [[ -z "${LOCAL_PORT}" ]]; then
        echo ERROR: LOCAL_PORT cannot be zero
        exit 1
fi

ssh -4 -v -NL "${LOCAL_PORT}":"${REMOTE_HOST}":"${REMOTE_PORT}" "${REMOTE_USER}"@"${REMOTE_HOST}"
