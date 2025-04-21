export RUST_BACKTRACE := "1"


default:
  @just --list


lint:
  cargo +nightly clippy  \
      --verbose          \
      -- -Aclippy::all   \
      -Aclippy::pedantic \
      -Aclippy::nursery


build:
  cargo build


fmt:
  cargo +nightly fmt


upgrade: fmt
    @cargo upgrade
    @cargo update


test:
  cargo test
