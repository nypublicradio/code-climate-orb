# Orb Template

CircleCI Orb for uploading coverage reports to [Code Climate](https://codeclimate.com).

## Notes

* `cc-test-reporter before-build` [doesn't actually do anything](https://github.com/codeclimate/test-reporter/issues/485).
    When switching a project to use this orb, don't worry about translating that step.
