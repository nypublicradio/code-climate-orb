# Orb Template

[![Orb version](https://badges.circleci.com/orbs/nypr/code-climate.svg)](https://circleci.com/developer/orbs/orb/nypr/code-climate)
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/nypublicradio/code-climate-orb/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/nypublicradio/code-climate-orb/tree/main)
![License](https://img.shields.io/github/license/nypublicradio/code-climate-orb)

CircleCI orb for uploading coverage reports to [Code Climate](https://codeclimate.com).
Published to CircleCI's public orb registry at [`nypr/code-climate`](https://circleci.com/developer/orbs/orb/nypr/code-climate).

## Resources

* [Code Climate's official documentation](https://docs.codeclimate.com/)

## Notes

* `cc-test-reporter before-build` [doesn't actually do anything](https://github.com/codeclimate/test-reporter/issues/485).
    When switching a project to use this orb, don't worry about translating that step.
