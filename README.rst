An avahi-daemon container for Project Atomic Host
---------------------------------------------------------------------

This essentially provides a broadcast DNS responder inside a container
running on an Atomic Host.  It integrates with the ``atomic`` command
to make installation simple.

Transfer content of this repository (as tar instead of zip) to Atomic Host.

#.  extract repository and change working directory to there
#.  ``docker build -t avahi-daemon .``
#.  ``atomic install avahi-daemon``
#.  ``systemctl --system daemon-reload``
#.  ``systemctl start avahi-daemon``
#.  ``systemctl enable avahi-daemon``

Notes:

*  You'll need to run the build from a SPC containing git, or download and
   build from a tarball.

*  Modification of ``avahi-daemon.conf`` in the image may be necessary to
   fit your environment.
   - e.g. update `allow-interfaces` for the Atomic OS

* More info on the ``atomic`` command and Project Atomic can be found at
  https://github.com/projectatomic/atomic
