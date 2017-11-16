#!/bin/bash
set -xe

sudo scripts/build.py linux-generic-amd64
cp -R /home/wkhtmltopdf_compile/wkhtmltopdf/static-build /opt/wkhtmltopdf_build
