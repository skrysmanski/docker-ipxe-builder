#!/bin/bash
set -e

cd /ipxe/src

make bin/undionly.kpxe EMBED=$ARTIFACTS_DIR/embed.ipxe

cp bin/undionly.kpxe $ARTIFACTS_DIR/

echo "Build result available at: $ARTIFACTS_DIR/undionly.kpxe"

