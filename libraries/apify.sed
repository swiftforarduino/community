#! /usr/bin/sed -nEf
# Make documentation for use in the S4A Documentation window.

# single line signature form
/^(public )?func.+[(].*[)].*{$/{
  s/[{]//
	a\
  \

	p
}

# multi line signature form
/^(public )?func.+[(]$/,/^.*{$/{
  /[{]/{
    s/[{]//
    a\
    \

  }
 p
}

# typealias lines
/^(public )?typealias/{
	a\
  \

	p
}

# top level comment lines
/^\/\//p

# ignore/hide top level block comments for the snippets
# they begin like this... /* Snippets:
/^\/\* *[sS]nippets *:/,/\*\//d

# top level block comments
# multi line form with non empty first line
/^\/\*.*[^\/]$/,/\*\//p
# multi line form with empty first line
/^\/\*$/,/\*\//p
# single line block comment
/^\/\*.*\*\/$/p