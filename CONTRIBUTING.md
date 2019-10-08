# Maintaining readable CVS history

You need to commit your changes in a series of patches that are:
    
1. grouped by functionality - every commit should work and entire history 
	should be bisectable
2. solve one problem OR one enhancement
2. patches leading to the final commit and override each other should be 
	squashed
3. contain suitable (descriptive, useful) subject lines and commit logs 
	("update $FILENAME" is not a good commit subject)
4. avoid local merge commits

You also need to take those patching guidelines into consideration:
https://www.kernel.org/doc/html/v4.10/process/5.Posting.html#patch-preparation