#!/bin/sh
#

docker buildx build \
	--build-context "dbml=../dbml" \
	--build-context "nomnoml=../nomnoml" \
	--build-context "wavedrom=../wavedrom" \
	--build-context "bytefield=../bytefield" \
	--build-context "vega=../vega" \
	--build-context "tikz=../tikz" \
	--platform linux/amd64,linux/arm64 -t tganter/kroki:test \
	--push \
	--file ./ops/docker/jdk11-jammy/Dockerfile \
	.
