# homebrew-tap

Homebrew tap for tools maintained by [lanjoni](https://github.com/lanjoni).

## Usage

Install a formula directly:

```sh
brew install lanjoni/tap/dm
```

Or add the tap first:

```sh
brew tap lanjoni/tap
brew install dm
```

## Formulae

| Formula | Description |
| --- | --- |
| `dm` | Dotfiles manager that syncs a mirrored `$HOME` directory. |

## Maintaining

Formula files live in `Formula/`.

For `dm`, update `Formula/dm.rb` when a new release tag is published in
[`lanjoni/dm`](https://github.com/lanjoni/dm).
