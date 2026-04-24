export COMOTO_PROJECT_ROOT="/workspaces"

# ---------------------
# Run setup.sh, at least once `sh /workspaces/dev-hub/setup.sh`
if [ ! -f ~/.setup_has_run ]
then
  echo "⌛ Running setup.sh"
  sh /workspaces/dev-hub/setup.sh
  touch ~/.setup_has_run
fi

# ---------------------
# bash_functions.sh
echo "👌 Sourcing bash_functions.sh"
source /workspaces/monorepo/zlaverse/support/bash_functions.sh # allows us to call things like `cg-load-test-schema`

# ---------------------
# Move to directory most used (for me, that is monorepo)
cd /workspaces/monorepo/
