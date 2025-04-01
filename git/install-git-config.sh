#!/bin/bash

# 定義來源目錄（請根據實際情況修改）
SOURCE_DIR="$HOME/config/git"

# 目標目錄（home 目錄）
TARGET_DIR="$HOME"

# 檢查來源目錄是否存在
if [ ! -d "$SOURCE_DIR" ]; then
    echo "錯誤：來源目錄 $SOURCE_DIR 不存在，請先準備好配置文件並放入該目錄。"
    exit 1
fi

# 要處理的檔案列表
CONFIG_FILES=(".gitconfig" ".gitconfig-github" ".gitconfig-bitbucket")

# 移動檔案並建立軟連結
for file in "${CONFIG_FILES[@]}"; do
    SOURCE_PATH="$SOURCE_DIR/$file"
    TARGET_PATH="$TARGET_DIR/$file"

    # 檢查來源檔案是否存在
    if [ -f "$SOURCE_PATH" ]; then
        # 移動檔案到 home 目錄（如果需要保留原始檔案，則可跳過這步）
        mv "$SOURCE_PATH" "$TARGET_PATH"
        echo "已移動 $file 到 $TARGET_DIR"

        # 建立軟連結回來源目錄
        ln -sf "$TARGET_PATH" "$SOURCE_PATH"
        echo "已建立軟連結：$SOURCE_PATH -> $TARGET_PATH"
    else
        echo "警告：$SOURCE_PATH 不存在，跳過該檔案。"
    fi
done

# 驗證軟連結
echo "驗證軟連結狀態："
ls -l "$TARGET_DIR/.gitconfig" "$TARGET_DIR/.gitconfig-github" "$TARGET_DIR/.gitconfig-bitbucket"

echo "安裝完成！"