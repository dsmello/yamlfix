# yamlfix

[![Actions Status](https://github.com/lyz-code/yamlfix/workflows/Tests/badge.svg)](https://github.com/lyz-code/yamlfix/actions)
[![Actions Status](https://github.com/lyz-code/yamlfix/workflows/Build/badge.svg)](https://github.com/lyz-code/yamlfix/actions)
[![Coverage Status](https://coveralls.io/repos/github/lyz-code/yamlfix/badge.svg?branch=main)](https://coveralls.io/github/lyz-code/yamlfix?branch=main)

A simple opinionated yaml formatter that keeps your comments!

## Help

See [documentation](https://lyz-code.github.io/yamlfix) for more details.

## Installing

```bash
pip install yamlfix
```

## Contributing

For guidance on setting up a development environment, and how to make a
contribution to *yamlfix*, see
[Contributing to yamlfix](https://lyz-code.github.io/yamlfix/contributing).

## Donations

<noscript><a href="https://liberapay.com/Lyz/donate"><img alt="Donate using
Liberapay" src="https://liberapay.com/assets/widgets/donate.svg"></a></noscript>
or
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/T6T3GP0V8)

If you are using some of my open-source tools, have enjoyed them, and want to
say "thanks", this is a very strong way to do it.

If your product/company depends on these tools, you can sponsor me to ensure I
keep happily maintaining them.

If these tools are helping you save money, time, effort, or frustrations; or
they are helping you make money, be more productive, efficient, secure, enjoy a
bit more your work, or get your product ready faster, this is a great way to
show your appreciation. Thanks for that!

And by sponsoring me, you are helping make these tools, that already help you,
sustainable and healthy.

## Github Actions

To use this action, create a `.github/workflows/yamlfix.yml` file with the

```yaml
name: yamlfix
on: [push, pull_request]
jobs:
  yamlfix:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
    #   - uses: lyz-code/yamlfix@v1
      - uses: dsmello/yamlfix@v1.0.3
        with:
          args: --validate-only
```

If you didn't specify any arguments, the action will run with the default, and will return a error if the yaml is not valid or not formatted.


## License

GPLv3
