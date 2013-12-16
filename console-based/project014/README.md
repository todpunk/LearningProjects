Project
=======

"Heredoc string manipulation"

Tell the user a string they should use as an ending token.  Something like "EOF" or longer.  Take input on a line-by-line basis (only the current line need be editable).  When the token is used at the beginning of the line, drop that line from the input and consider it done.  Output the entire input replacing every first letter of each word with a capital letter.

Thoughts
--------

Was capitalizing the letters simple?  What do you think is happening to the letters in memory?  How do you know which is capitalized or not?
What happens to letters that are already capitals?  Does it stay a capital?  Can you make it lower case instead?  How does this change your program?