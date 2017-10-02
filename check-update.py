#!/usr/bin/env python

import hashlib
import json
import re
import requests
import subprocess
import sys

tarbalURL = "https://github.com/ARMmbed/mbed-cli/archive/"
urlRegex = r'url "%s(?P<releaseNo>\d+.\d+.\d+).tar.gz"' % tarbalURL
shaRegex = r'sha256 "(?P<sha256>[a-zA-Z0-9]+)"'

if __name__ == '__main__':
    # Check if there is a newer release

    with open('mbed-cli.rb') as fp:
        fileTxt = fp.read()

    currentRelease = ''
    currentHash    = ''

    # Get the current info
    for line in fileTxt.split('\n'):
        m = re.search(urlRegex, line)
        if m:
            currentRelease = m.groupdict()['releaseNo']
        m = re.search(shaRegex, line)
        if m:
            currentHash = m.groupdict()['sha256']

    # Get the latest info
    r = requests.get("https://api.github.com/repos/armmbed/mbed-cli/releases/latest")
    latestJson = json.loads(r.content)
    latestVersion = latestJson['tag_name']

    # Fail if no new releasee
    if latestVersion == currentRelease:
        print "No new release"
        sys.exit(-1)

    subprocess.call("wget %s%s.tar.gz" % (tarbalURL, latestVersion), shell=True)
    with open('%s.tar.gz' % latestVersion, 'rb') as fp:
        latestHash = hashlib.sha256(fp.read()).hexdigest()

    # Update the file
    fileTxt = re.sub(currentRelease, latestVersion, fileTxt)
    fileTxt = re.sub(currentHash, latestHash, fileTxt)
    with open('mbed-cli.rb', 'w') as fp:
        fp.write(fileTxt)
