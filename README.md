# DESCRIPTION

A hook script to verify that only syntactically valid ruby code is commited.

# INSTALLATION

Put this code into a file called "pre-commit" inside your .git/hooks
directory, and make sure it is executable ("chmod +x .git/hooks/pre-commit")

# REQUIREMENTS

Requires Ruby 1.8.6 or better, Git 1.7 or better

If Rubinius is installed and available via `rbx`, the hook will use it to test the Ruby files for warnings and errors.

# SIMILAR PROJECTS

* [Code Beautifier.tmbundle][beautify] by [Joel Chippindale (mocoso)](mocoso) does something similar for TextMate.

  [beautify]: http://github.com/mocoso/code-beautifier.tmbundle "Code Beautifier.tmbundle"
  [mocoso]: http://github.com/mocoso "Joel Chippindale"

# LICENSE

Licensed under the MIT License. See LICENSE file for details.

# AUTHORS

Written by Markus Prinz, with contributions by Jérémy Lecour
