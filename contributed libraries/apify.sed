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

# top level block comments
/^\/\*.*[^\/]$/,/\*\//p
/^\/\*$/,/\*\//p
/^\/\*.*\*\/$/p