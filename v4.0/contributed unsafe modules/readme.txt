Background
****

This is where to contribute the source code for 'unsafe' modules to be
integrated into S4A projects using the 'community library' feature.

Intention
***

This source code is often in the form of C or C++ intended for compilation by
GCC/G++. S4A itself does not compile this code, the toolchain only compiles
Swift code.

Instructions
***

To contribute an unsafe module you must submit compiled code as a
static (cross compiled) library to be linked into the user's final binary.

Also you must provide a suitable module.modulemap file and headers to provide a
clang style system module for Swift to resolve symbols, to make your functions
visible to Swift.

Finally, you must provide a stub swift file, beginning with unsafeXXX where
XXX is the module name. This is an indicator to S4A to import the relevant
module. The stub file should in best practice, have swift functions to expose
the underlying C/C++ API in a clean form and must import the module.

The module must be in unsafe_modules/XXX and have the static library
named libXXX.a. All of this shenanigans seems rigid but should give enough
flexibility to reuse legacy C/C++ code at least temporarily until a full port
can be done.

In general you may find it easier to copy one of the existing 'unsafe modules'
and tweak the parts that matter to you.

There is a Makefile that should allow you to build and install from source.
Install is into the community libraries folder and includes updating the new
catalog file (the old catalog file is left there for backwards compatibility
with older versions of S4A that do not recognize unsafe modules).


Intentions/Use/Philosophy
***

In an ideal world, this mechanism would not be necessary. We think that the best
way to write component libraries for Swift for Arduino... is in Swift!

We encourage any developer who wants to contribute a library/component here to
think if it might be easier and better in the long run to make the effort to
port the code to the Swift for Arduino dialect instead. Swift is fast, safe and
efficient. There are very few use cases (except for hand tuned assembly) where
we believe that C or C++ are genuinely, meaningfully better suited. The safety
sacrificed by not using Swift throughout the application code and libraries if
possible, is significant.

Good use cases for this system:
- an uncommon peripheral or manufacturers specialised integrated component has
a significant body of existing c/c++ code, perhaps contributed by the
manufacturer
- rewriting the code in Swift becomes excessively clumsy and hacky, negating the
benefits of Swift's terse and powerful syntax and its safety by design idioms
- hard coded assembly routines are required to produce certain time critical
perfomance or access esoteric features



Bad use cases [with sugggested course of action instead]:
- Application code copied from example projects and forced into library format
[port the application code to swift and write an S4A project]

- Core functionality of the microcontroller that the S4A team haven't yet
implemented, for example some types of interrupt driven UART handling... in
this case, contact the S4A team to make them aware of the shortcoming and they
will fix it
[contact S4A]

- Poorly understood sample code/libraries copied from "code dump" websites like
stack overflow, where the developer contributing it doesn't really understand
fully how the code works but just wants to get a certain result
[chat to us and other enthusiasts on Slack or over email to describe your
issue, we will find a way to get you going]


Final Comment
***

I left this out of S4A (Swift for Arduino) until version 2.8 for a reason. I
wanted to try and make things work as far as possible in native Swift. I still
have that goal. In the longer run, especially with the v2 compiler when that
lands, there will be less and less reasons to use this other than 'quick hack'
and 'legacy code support', neither of which are exactly visions for a shining
future. :) Please try to use only the minimum unsafe code in your libraries
and put as much as practical into the Swift shim code at least. And consider
whether a port to Swift might actually be not that hard, might give a better
user interface and might actually be more fun to write too! :)

Carl
