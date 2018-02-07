if [ -f ~/.bashrc ]; then . ~/.bashrc; fi


export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# https://github.com/rust-lang-nursery/rustfmt/issues/1707
export LD_LIBRARY_PATH="$(rustc --print sysroot)/lib:$LD_LIBRARY_PATH"

alias ecessh="ssh -Y samiskin@ecelinux4.uwaterloo.ca"
alias csssh="ssh -Y samiskin@linux.student.cs.uwaterloo.ca"
