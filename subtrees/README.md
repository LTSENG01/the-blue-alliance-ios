The Blue Alliance for iOS Subtrees
==========================
Subtrees allow us to include source code from other projects within our own. This allows us to more easily pull and merge changes from the original project.

To add a subtree:
-----------------
`git subtree add --prefix subtrees/<folder name> <URL> <branch> --squash`

Example: `git subtree add --prefix subtrees/the-blue-alliance-react https://github.com/the-blue-alliance/the-blue-alliance-react.git master --squash`

To update a subtree:
--------------------
`git subtree pull --prefix subtrees/<folder name> <URL> <branch> --squash`

Example: `git subtree pull --prefix subtrees/the-blue-alliance-react https://github.com/the-blue-alliance/the-blue-alliance-react.git master --squash`

More information about subtrees:
--------------------------------
- https://help.github.com/articles/working-with-subtree-merge
- http://git-scm.com/book/en/Git-Tools-Subtree-Merging
- http://blogs.atlassian.com/2013/05/alternatives-to-git-submodule-git-subtree/
