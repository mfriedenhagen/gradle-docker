# mfriedenhagen/gradle

A Java development image with Gradle installed. Gradle is run as user `user` and 
working directory is set to `build` to be suitable for [gitlab-ci][]

`/home/user/.gradle` is exposed as volume.

## License

This image packages [Gradle](https://github.com/gradle/gradle), which is licensed under the [Apache 2.0](http://www.apache.org/licenses/LICENSE-2.0) license.

[gitlab-ci]: https://about.gitlab.com/gitlab-ci/
