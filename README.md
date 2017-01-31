# centos7-rflint
Dockerfile with Centos7, python 3.4, robotframework and robotframework-lint

To build Docker image from directory with Dockerfile:
- docker build -t [IMAGENAME] .

To run Docker container:
- run -it --rm -v path/to/test/files:/test [IMAGENAME]
