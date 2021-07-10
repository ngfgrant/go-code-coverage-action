# Go Code Coverage Docker Action

This action runs a code coverage check for a Golang project.

## Inputs

## `coverage-level`

**Required** The level of coverage required to pass. Default `0`.

## Outputs

## `coverage`

The code coverage achieved.

## Example usage

uses: ngfgrant/go-code-coverage-action@v1
with:
  coverage-level: 50
