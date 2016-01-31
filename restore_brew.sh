#!/bin/bash

failed_items=""
function install_package() {
echo EXECUTING: brew install $1 $2
brew install $1 $2
[ $? -ne 0 ] && $failed_items="$failed_items $1" # package failed to install.
}
brew tap caskroom/cask
brew tap codekitchen/dinghy
brew tap pivotal/tap
brew tap railwaycat/emacsmacport
install_package ack ''
install_package archey ''
install_package autoconf ''
install_package automake ''
install_package brew-cask ''
install_package cloc ''
install_package cmatrix ''
install_package coreutils ''
install_package cscope ''
install_package dnsmasq ''
install_package dos2unix ''
install_package fpp ''
install_package gdbm ''
install_package gmp ''
install_package htop-osx ''
install_package isl ''
install_package jq ''
install_package libmpc ''
install_package liquibase ''
install_package macvim '  --override-system-vim
  --override-system-vim
  --with-override-system-vim'
install_package maven ''
install_package md5sha1sum ''
install_package mpfr ''
install_package mysql ''
install_package node ''
install_package oniguruma ''
install_package openssl ''
install_package pkg-config ''
install_package postgresql ''
install_package python ''
install_package readline ''
install_package sloccount ''
install_package springxd ''
install_package sqlite ''
install_package tomcat ''
install_package tree ''
install_package unfs3 ''
install_package vim ''
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
