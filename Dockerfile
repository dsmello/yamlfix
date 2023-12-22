# Use an official Python runtime as a parent image
FROM python:3.12-alpine as build

# Add Makefile
RUN apk add --no-cache make

# Install pdm - https://github.com/pdm-project/pdm
RUN pip install pdm

# Copy the current directory contents into the container at /opt/yamlfix
COPY . /opt/yamlfix

# Set the working directory in the container to /opt/yamlfix
WORKDIR /opt/yamlfix

# build
RUN make build-package

FROM python:3.12-alpine

# Copy the current directory contents into the container at /opt/yamlfix/dist
COPY --from=build /opt/yamlfix/dist /opt/yamlfix/dist

# Install yamlfix
RUN pip install /opt/yamlfix/dist/yamlfix-*.whl

# Set the working directory in the container to /yamlfix
WORKDIR /yamlfix

# Run yamlfix when the container launches
ENTRYPOINT ["yamlfix"]

CMD ["--help"]