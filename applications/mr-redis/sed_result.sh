#!/bin/bash
sed -n '/Running/p; /Configuration file/p' sched.ERR > tasks.log
