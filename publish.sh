#!/usr/bin/env bash
pandoc --from=markdown --to=rst README.md -o README.rst
python3.4 setup.py register -r pypitest
python3.4 setup.py sdist upload -r pypitest
python3.4 setup.py register -r pypi
python3.4 setup.py sdist upload -r pypi