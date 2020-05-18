#!/bin/bash 

tar -czvf chef-recipes.tar.gz chef_demo/*
aws s3 cp chef-recipes.tar.gz s3://csre-demo-opsw-001
