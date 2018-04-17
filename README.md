# microverse-app

### Getting started

This GitHub project serves also as a Helm Repository under:

```
https://koding.github.com/microverse-app
```

In order to use it, point your helm at this repository with the following command:

```
helm repo add microverse-app https://koding.github.com/microverse-app
```

The simplest way to use this chart is to add it to your `requirements.yaml` file like the following:

```
  dependencies:
    - name: microverse-app
      version: ^0.0.1
      repository: https://koding.github.io/microverse-app
```

### Development

For each change please also send a complementary PR with updated charts, so the users can see the update.

```
$ git checkout -b update-chart
$ ./update.sh
Successfully packaged chart and saved it to: /Users/rjeczalik/src/github.com/koding/microverse-app/microverse-app-0.0.6.tgz
$ git commit -a -m"microverse-app: update chart"
$ git push origin update-chart
```
