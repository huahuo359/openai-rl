#!/bin/bash
# 删除 spinup 文件夹下所有 Python 文件中 "import tensorflow as tf" 的行

TARGET_DIR="./spinup"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Directory $TARGET_DIR does not exist!"
    exit 1
fi

# 遍历所有 .py 文件
find "$TARGET_DIR" -type f -name "*.py" | while read -r file; do
    # 删除完全匹配的行，并生成备份
    sed -i.bak '/^import tensorflow as tf$/d' "$file"
    echo "Processed: $file"
done

echo "Done! Backup files with .bak extension are kept in the same folder."