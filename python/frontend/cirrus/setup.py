# -*- coding: utf-8 -*-
try:
    from setuptools import setup, find_packages
except ImportError:
    from distutils.core import setup, find_packages


setup(
    name='cirrus',
    version='0.1dev',
    description='Python library for Cirrus',
    author="João Carreira",
    author_email='joao.berkeley.edu',
    url='https://github.com/jcarreira/cirrus',
    packages=find_packages(exclude=('tests', 'docs')),
    license=open('LICENSE'),
    long_description=open('README.md').read(),
    install_requires=[
      'boto3==1.9.9',
      'botocore==1.12.9',
      'dash==0.22.0',
      'dash-core-components==0.26.0',
      'dash-html-components==0.11.0',
      'psutil==5.2.2',
      'plotly==3.1.0',
      'ipython==5.3.0'
    ]
)
