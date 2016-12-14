#!/bin/bash
netstat -an|grep -i listen|grep -vi ing|sort -u -k4
