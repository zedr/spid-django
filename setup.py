#!/usr/bin/env python

from distutils.core import setup

from setuptools import find_packages

setup(
    name='spid-django',
    version='0.0.1',
    description='SPID package for django application',
    long_description="""""",
    author='developersitalia',
    author_email='rosini@agid.gov.it',
    url='https://github.com/italia/spid-django',
    install_requires=[],
    packages=find_packages('src'),
    package_dir={"": "src"},
    include_package_data=True,
    license="BSD",
    zip_safe=False,
    keywords='spid-django',
    classifiers=[
        'Development Status :: 1 - Alpha',
        'Framework :: Django',
        'Framework :: Django :: 1.8',
        'Framework :: Django :: 1.9',
        'Framework :: Django :: 1.10',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: BSD License',
        'Natural Language :: English',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.3',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
    ]
)
