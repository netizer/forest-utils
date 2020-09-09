# Utilities for Forest language

This repository is used for scripts that help in development of Forest programming language. The meaning of that changes quite often currently. For example I run the tests for all forest-related projects in here. I also keep here tests that are environment-related (they depend on environment variables and require forest command to be installed in the system).

For more info about Forest, check out https://github.com/netizer/forest-rb

If you'd like to participate in the development of Forest programming language, the easiest way to do that is to follow this list:

1. Create a directory for all forest-related projects, e.g. "forest".
2. Clone the following repositories there: `forest-utils` (this repo), `forest-rb`, `core-lib-forest`, `lamb-rb`, `groundcover-rb`.
3. Install `forest` as a system command, for example by running: `ln -s ~/4st/forest-rb/bin/forest.rb /usr/local/bin/forest`
4. Make `core-lib-forest` available under `forestcorelib` in your HOME directory, for example by running the following: `ln -s ~/dev/priv/lamb/code/gems/core-lib-forest ~/forestcorelib`
5. You can now go to `forest-utils`, and run `./all.sh`, which will
- update `stats_report.txt` (which is useful because at this stage of Forest evolution it would be nice to move as much logic as possible from Ruby to Forest)
- run tests in all repositories
- check if there's anything to commit in any of them
6. To check that all works you can run: `forest ../lamb-rb/fixtures/config.lamb --env "POOL=6;DATABASE_URL="http://data";DATABASE_PASSWORD=password"`. You should see a nice hash printed out.
