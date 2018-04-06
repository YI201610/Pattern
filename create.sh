#!/bin/sh


if [ $# -ne 1 ]; then
    echo "usage: ./create.sh <検証項目名>"
    exit
fi

# 注意: =と引数の間にスペースを入れないこと
export itemName=$1

mkdir ${itemName}
cd ${itemName}

touch README.md
{
    echo "#" ${itemName}
    echo "-"
} > README.md

echo "[✓] directory: ${itemName} created."

exit

