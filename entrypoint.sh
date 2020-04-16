#!/bin/bash

java -jar /tmp/epubcheck-${EPUBCHECK_VERSION}/epubcheck.jar "${@:1}"
