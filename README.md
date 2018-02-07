# KMYACC Docker Container.

[![Docker pull](https://img.shields.io/docker/pulls/stenin/kmyacc.svg)](https://hub.docker.com/r/stenin/kmyacc/) [![Docker pull](https://img.shields.io/docker/stars/stenin/kmyacc.svg)](https://hub.docker.com/r/stenin/kmyacc/) [![Github issues](https://img.shields.io/github/issues/stenin-nikita/kmyacc.svg)](https://github.com/stenin-nikita/kmyacc/issues) [![License](https://img.shields.io/github/license/stenin-nikita/kmyacc.svg)](https://github.com/stenin-nikita/kmyacc/blob/master/LICENSE)

[Docker](https://www.docker.com/) container for creating parser generators based on kmyacc

## Installation / Usage

1. Install the stenin/kmyacc container:

```bash
docker pull stenin/kmyacc
```

2. Run kmyacc through container:

```bash
docker run -v $(pwd):/parser --rm stenin/kmyacc -p ClasName -m /parser/parser.template /parser/grammar.phpy
```

## License

The MIT License (MIT). Please see [License File](https://github.com/stenin-nikita/kmyacc/blob/master/LICENSE) for more information.