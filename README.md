# chromium-ng-test
Docker image with @angular/cli, chromium headless browser for testing purpose. You can use it as a base for CI task (like Jenkins Docker pipeline) to invoke tests by karma runner (https://karma-runner.github.io).

## Quick reference
* Project source repository: (https://github.com/tchorwat/chromium-ng-test)
* In case of any bugs raise a ticket through GitHub (https://github.com/tchorwat/chromium-ng-test/issues) issues page, please.
* Supported architectures: `amd64`

## Usage

To invoke test `ng test` on your sources located in your current directory run:
```
docker run -t --rm -v $(pwd):data/src/ tchorwat/chromium-ng-test
```
This will also install your `package.json` dependencies with `npm ci`.

You can also invoke any other commands, by example:

```
docker run -it --rm tchorwat/chromium-ng-test bash
```

To use specific chromium version provide it as a image tag with chromium version:
```
docker run -t --rm tchorwat/chromium-ng-test:83 chromium --version
```

## License
This Docker image is built on node Docker images https://hub.docker.com/_/node. View [license information for Node.js](https://github.com/nodejs/node/blob/master/LICENSE) or [license information for the Node.js Docker project](. on )https://github.com/nodejs/docker-node/blob/master/LICENSE).

View [Chromiunm browser license](https://metadata.ftp-master.debian.org/changelogs//main/c/chromium/chromium_83.0.4103.116-1~deb10u3_copyright).

View [@angular/cli license](https://github.com/angular/angular-cli/blob/master/LICENSE).

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

View [**chromium-ng-test** project MIT license](https://raw.githubusercontent.com/tchorwat/chromium-ng-test/master/LICENSE)
