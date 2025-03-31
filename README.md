<!--
 * @Author: michael.hung hon0612@gmail.com
 * @Date: 2025-03-31 17:04:13
 * @LastEditors: michael.hung hon0612@gmail.com
 * @LastEditTime: 2025-03-31 17:19:36
 * @FilePath: /config/README.md
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
# Git 多帳號設定 (Mac 個人用)

這個設定適用於在 Mac 上管理多個 Git 帳號（例如個人用、GitHub 用、Bitbucket 用），並將配置文件安裝到個人 home 目錄 (`~`)，使用軟連結的方式。

## 檔案結構

以下是三個主要的 Git 配置文件：

- `.gitconfig`：個人用的主配置文件
- `.gitconfig-github`：GitHub 專用的配置文件
- `.gitconfig-bitbucket`：Bitbucket 專用的配置文件

這些檔案將被放置在您的 home 目錄，並透過軟連結方式管理。

## 安裝步驟

1. **準備配置文件**
   假設您已經準備好以下三個檔案：
   - `.gitconfig`
   - `.gitconfig-github`
   - `.gitconfig-bitbucket`
   將它們放在某個工作目錄中，例如 `~/git-configs/`。

2. **移動到 home 目錄**
   將這些檔案移動到您的 home 目錄 (`~`)：
   ```bash
   mv ~/config/.gitconfig ~
   mv ~/config/.gitconfig-github ~
   mv ~/config/.gitconfig-bitbucket ~
  ```
3. **建立軟連結**
   如果您希望在其他地方維護這些檔案並使用軟連結，可以執行以下命令：
   ```bash
   ln -sf ~/config/.gitconfig ~/.gitconfig
   ln -sf ~/config/.gitconfig-github ~/.gitconfig-github
   ln -sf ~/config/.gitconfig-bitbucket ~/.gitconfig-bitbucket
   ```
4. **驗證設定**
   檢查軟連結是否正確指向：
   ```
   ls -l ~/.gitconfig ~/.gitconfig-github ~/.gitconfig-bitbucket
   ```

## 參考資源
   更多細節可以參考以下連結：

   [Git 多帳號設定範例](https://gist.github.com/lazyeg/546ec99767de1f0e43d93b442508614d)