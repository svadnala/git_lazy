## Lazy person's guide to avoid typing... long git commands again and again

### Ignore this if you're not lazy! for others continue being lazy :smirk:


```code/git_lazy # source git_lazy/git_lazy.sh```

Few examples:
##### Push changes from current branch to upstream/remote origin

```code/git_lazy # gpuo```

#### Pull latest changes from remote into local
```code/git_lazy # gplo```

#### Git show changes of HEAD/ Last commit
```code/git_lazy # gshlc```

#### Show commit message of HEAD

```code/git_lazy # glcmsg```

#### Diffs

```
# shows diff between current branch and develop branch
code/git_lazy # gdiffdev

# vanilla diff
code/git_lazy # gf
```

#### Checkouts

```
# checkout to branch_x
code/git_lazy # gck branch_x
# checkout from current branch into new_branch
gckbr new_branch
```
#### Commit with JIRA number

```
# extracts jira from feature branch ({f|feature}/ABC-1234-blah-blah)
code/git_lazy # gcom "this is a commit"

commit message : [ABC-1234] this is a commit
```
