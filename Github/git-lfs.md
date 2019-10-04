# git-lfs 上传超过 50M 的单个文件到 github

以下为参考资料

>官方仓库地址：https://github.com/git-lfs/git-lfs  
https://git-lfs.github.com  


# 我的总结

win7 用户，在原有 git 环境下 只需敲两行代码就够了！

1. 安装（只在首次安装时需要，其余时间不用）

git bash 命令行下

```ShellSession
$ git lfs install
```

2. 在提交 add 操作前，先输入 “跟踪” 的大文件，例如文件名为 "*.psd"


```bash
$ git lfs track "*.psd"
```

总结： 原有的代码格式都不变，只需要在 超大小的文件提交之前加跟踪 ```git lfs track``` 命令即可。

作者：吴甜甜 github username: wutiantian



# Git Large File Storage

![CI status][1]

[1]: https://github.com/git-lfs/git-lfs/workflows/CI/badge.svg

[Git LFS](https://git-lfs.github.com) is a command line extension and
[specification](docs/spec.md) for managing large files with Git.



## From source

- Place the `git-lfs` binary on your system’s executable `$PATH` or equivalent.
- Git LFS requires global configuration changes once per-machine. This can be done by
running:

```ShellSession
$ git lfs install
```

## Example Usage

To begin using Git LFS within a Git repository that is not already configured
for Git LFS, you can indicate which files you would like Git LFS to manage.
This can be done by running the following _from within a Git repository_:

```bash
$ git lfs track "*.psd"
```

(Where `*.psd` is the pattern of filenames that you wish to track. You can read
more about this pattern syntax
[here](https://git-scm.com/docs/gitattributes)).

> *Note:* the quotation marks surrounding the pattern are important to
> prevent the glob pattern from being expanded by the shell.

After any invocation of `git-lfs-track(1)` or `git-lfs-untrack(1)`, you _must
commit changes to your `.gitattributes` file_. This can be done by running:

```bash
$ git add .gitattributes
$ git commit -m "track *.psd files using Git LFS"
```

You can now interact with your Git repository as usual, and Git LFS will take
care of managing your large files. For example, changing a file named `my.psd`
(tracked above via `*.psd`):

```bash
$ git add my.psd
$ git commit -m "add psd"
```

> _Tip:_ if you have large files already in your repository's history, `git lfs
> track` will _not_ track them retroactively. To migrate existing large files
> in your history to use Git LFS, use `git lfs migrate`. For example:
>
> ```
> $ git lfs migrate import --include="*.psd"
> ```
>
> For more information, read [`git-lfs-migrate(1)`](https://github.com/git-lfs/git-lfs/blob/master/docs/man/git-lfs-migrate.1.ronn).

You can confirm that Git LFS is managing your PSD file:

```bash
$ git lfs ls-files
3c2f7aedfb * my.psd
```

Once you've made your commits, push your files to the Git remote:

```bash
$ git push origin master
Uploading LFS objects: 100% (1/1), 810 B, 1.2 KB/s
# ...
To https://github.com/git-lfs/git-lfs-test
   67fcf6a..47b2002  master -> master
```

Note: Git LFS requires at least Git 1.8.2 on Linux or 1.8.5 on macOS.

## Limitations

Git LFS maintains a list of currently known limitations, which you can find and
edit [here](https://github.com/git-lfs/git-lfs/wiki/Limitations).

## Need Help?

You can get help on specific commands directly:

```bash
$ git lfs help <subcommand>
```

The [official documentation](docs) has command references and specifications for
the tool.

You can always [open an issue](https://github.com/git-lfs/git-lfs/issues), and
one of the Core Team members will respond to you. Please be sure to include:

1. The output of `git lfs env`, which displays helpful information about your
   Git repository useful in debugging.
2. Any failed commands re-run with `GIT_TRACE=1` in the environment, which
   displays additional information pertaining to why a command crashed.

