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
} > README.md

touch pubspec.yaml
{
    echo "name:" ${itemName}
} > pubspec.yaml

touch main.dart
{
    echo "main() {"
    echo "print('done.');"
    echo "}"
} > main.dart

touch run.sh
{
    echo "#!/bin/sh"
    echo "clear"
    echo "dart main.dart"
} > run.sh

chmod +x ./run.sh

mkdir lib

pub get

echo "[✓] directory: ${itemName} created."

exit

