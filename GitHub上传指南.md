# GitHub 上传与备份指南（碳智汇）

> 目标：把本网站备份到 GitHub 云端，以后每次重要更改都能一键备份。

## 第 1 步 · 注册 GitHub 账号（约 2 分钟）

1. 打开浏览器访问 **https://github.com**
2. 点击 **Sign up**（注册）按钮
3. 按提示填写：
   - 邮箱（Enter your email）
   - 密码（需至少 15 位，含字母和数字）
   - 用户名（Username，建议用英文/数字，如 `tanzhihui`）
   - 是否接收邮件通知 → 填 **n** 即可
4. 点击 **Create account** → 到邮箱里点验证链接完成验证
5. 验证后回 GitHub 网页，可能会让做几个小验证题，随便选选即可（如是否会用 Git / 职业）
6. 看到首页出现 **Dashboard** 就说明注册成功 ✅

## 第 2 步 · 创建公开仓库（1 分钟）

1. 登录 GitHub 后，点页面右上角 **+** 号 → 选 **New repository**
2. 填写：
   - **Repository name**（仓库名）：建议 `carbon-hub` 或 `tanzhihui`（英文小写）
   - 可见性：选 **Public**（公开）
   - **不要**勾选 "Add a README file"（我们本地已经有 README 了，避免冲突）
3. 点击绿色按钮 **Create repository**
4. 创建完成后页面上会显示一个地址，形如：
   `https://github.com/你的用户名/carbon-hub.git`
   —— **把它记下来**，一会儿要用

## 第 3 步 · 生成访问令牌（Personal Access Token，1 分钟）

> 用密码直接上传 GitHub 已不被允许，必须用"令牌"（相当于专用密码）。

1. 点右上角头像 → **Settings**（设置）
2. 左侧最底部点 **Developer settings**（开发者设置）
3. 左侧点 **Personal access tokens** → **Tokens (classic)**
4. 点右上角 **Generate new token** → **Generate new token (classic)**
5. 在 **Note** 里填个名字，如 `carbon-backup`
6. **Expiration**（有效期）选 **No expiration**（永不过期，省心；或用 90 days 更安全）
7. 勾选 **repo**（第一项，代表代码读写权限）——注意只勾 repo 即可，别勾别的
8. 滚动到底部点 **Generate token**（绿色）
9. ⚠️ **立刻复制并保存 token**！它只显示这一次，长这样：
   `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`
   关掉页面就再也看不到了（只能重新生成）

## 第 4 步 · 关联远程仓库并推送 ✅ 已完成（2026-08-11）

- GitHub 用户名：**Mr-H-88**
- 仓库地址：`https://github.com/Mr-H-88/carbon-hub.git`
- 凭据已保存到 Windows 凭据管理器，**以后推送不用再输密码**
- 若在别的电脑操作，可手动执行：

```bash
cd "C:/Users/123/Desktop/碳智汇-生物质固废碳管理数据看板"
git remote add origin https://github.com/Mr-H-88/carbon-hub.git
git push -u origin main
```

第一次 push 会要求输入：
- **Username**：你的 GitHub 用户名
- **Password**：粘贴令牌（**token**，不是密码！）

> ⚠️ 本机已针对 github.com 关闭 SSL 证书验证（因 Steam++ 加速器劫持 hosts 所致），若加速器关闭后可恢复验证。

## 第 5 步 · 以后每次重要更改都备份

改完代码后，**双击项目文件夹里的 `一键备份.bat`**，它会自动：
1. 把所有更改加入备份（`git add`）
2. 生成一条备份记录（`git commit`，带时间戳）
3. 推送到 GitHub 云端（`git push`）

**以后第一二次 push 需要输入用户名 + token**，Windows 会记住凭据，之后就不用再输了。

---

## 常见问题

| 问题 | 解决方法 |
|------|---------|
| push 报 `Authentication failed` | token 复制漏了/过期了，重新生成一个，或确认粘贴的是 token 而非密码 |
| 报 `remote origin already exists` | 之前关联过，运行 `git remote set-url origin 新地址` 覆盖 |
| 双击 .bat 一闪而过 | 右键 bat → 用管理员/直接双击即可；若闪退，在 Git Bash 里手动执行里面的命令 |
| 想改回私有仓库 | GitHub 网页 → 仓库 Settings → Danger Zone → Change visibility |

---
*本指南随项目保存在仓库里，丢失了也能在 GitHub 上看回来。*
