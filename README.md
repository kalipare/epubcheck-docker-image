# Docker Image for EPUBCheck

This repo contains an unofficial docker image for [EPUBCheck](https://github.com/w3c/epubcheck).

Images in this hub will always be updated to reflect the same version on the epubcheck official release.

## Latest stable version

[EPUBCheck 4.2.2](https://github.com/w3c/epubcheck/releases/tag/v4.2.2)

## Usage

```bash
docker pull novalagung/epubcheck
docker run -it --rm -v <directory>:/data novalagung/epubcheck --help
docker run -it --rm -v <directory>:/data novalagung/epubcheck <epub-file> [OPTIONS]
```

## Example

Example, the file is located on `/home/novalagung/file.epub`

```bash
docker run -it --rm -v /home/novalagung:/data novalagung/epubcheck file.epub --out -
docker run -it --rm -v /home/novalagung:/data novalagung/epubcheck file.epub --out /data/output
docker run -it --rm -v /home/novalagung:/data novalagung/epubcheck file.epub --mode opf --profile dict --json /data/output.json
```

## Maintainer

Noval Agung Prayogo
