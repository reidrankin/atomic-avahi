atomic-avahi
==
An avahi-daemon container for Project Atomic Host

This essentially provides a broadcast DNS responder inside a container
running on an Atomic Host.  It integrates with the `atomic` command
to make installation simple.

Build from Dockerfile
==
Transfer content of this repository (as tar instead of zip) to Atomic Host.

1. change working directory to the extraction
2. `docker build -t avahi-daemon .`


Get image from dockerhub
==
On Atomic Host:

    # docker pull docker.io/koyeung/atomic-avahi
    # docker tag docker.io/koyeung/atomic-avahi avahi-daemon


Setup and Run
==
    # atomic install avahi-daemon
    # systemctl --system daemon-reload
    # systemctl enable avahi-daemon
    # systemctl start avahi-daemon


Notes:

* You'll need to run the build from a SPC containing git, or download and
   build from a tarball.
* Modification of `avahi-daemon.conf` in the image may be necessary to
  fit your environment.
  - e.g. update `allow-interfaces` for the Atomic Host network interfaces
* More info on the `atomic` command and Project Atomic can be found at
  <https://github.com/projectatomic/atomic>
