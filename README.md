# motorOriel
EPICS motor drivers for the following Oriel controllers: Encoder Mike Controller, Model 18011

[![Build Status](https://github.com/epics-motor/motorOriel/actions/workflows/ci-scripts-build.yml/badge.svg)](https://github.com/epics-motor/motorOriel/actions/workflows/ci-scripts-build.yml)
<!--[![Build Status](https://travis-ci.org/epics-motor/motorOriel.png)](https://travis-ci.org/epics-motor/motorOriel)-->

motorOriel is a submodule of [motor](https://github.com/epics-modules/motor).  When motorOriel is built in the ``motor/modules`` directory, no manual configuration is needed.

motorOriel can also be built outside of motor by copying it's ``EXAMPLE_RELEASE.local`` file to ``RELEASE.local`` and defining the paths to ``MOTOR`` and itself.

motorOriel contains an example IOC that is built if ``CONFIG_SITE.local`` sets ``BUILD_IOCS = YES``.  The example IOC can be built outside of driver module.
