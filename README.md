# DESCRIPTION

A hook script to verify that only syntactically valid ruby code is commited.
Called by git-commit with no arguments.  The hook should
exit with non-zero status after issuing an appropriate message if
it wants to stop the commit.

# INSTALLATION

Put this code into a file called "pre-commit" inside your .git/hooks
directory, and make sure it is executable ("chmod +x .git/hooks/pre-commit")

# REQUIREMENTS

Requires Ruby 1.8.6 or better

Tested only with Git 1.6.4-rc1, but should work with any Git 1.6.*
If you're running it with any other versions of Git, I'd love to hear
from your experiences (both successes and failures)

# LICENSE

Licensed under the MIT License. See LICENSE file for details.
