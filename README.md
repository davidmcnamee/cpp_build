
# Build Systems

This repository showcases the differences between GNU Make (i.e. Makefile), and Bazel + Gazelle.

For the equivalent bazel implementation of this C++ project, go to [the bazel branch](https://github.com/davidmcnamee/cpp_build/tree/bazel).

For an equivalent bazel implementation *with Gazelle* (translated to Go), see [the gazelle branch](https://github.com/davidmcnamee/cpp_build/tree/gazelle).

## GNU Make

> Important Files: [Makefile](https://github.com/davidmcnamee/cpp_build/blob/main/Makefile)
> Run `make main && ./main` to run the program.

In the GNU Make version, build rules are defined as imperative scripts. For example, to build a `.o` file, you must run `g++ -std=c++14 -Wall -c myfile.cc -o myfile.o`. This can be a lot to remember, so developers would start using GNU Make "macros" to simplify it all. But with all these macros, Makefiles started to get really complex. (Ironic, isn't it?)

As well, Makefiles are single-threaded by default. That means only one file can be built at a time. This is a problem for large projects, where you want to build as many files as possible in parallel.

## Bazel

> Important Files: [strings/BUILD.bazel](https://github.com/davidmcnamee/cpp_build/blob/bazel/strings/BUILD.bazel), [BUILD.bazel](https://github.com/davidmcnamee/cpp_build/blob/bazel/BUILD.bazel), [WORKSPACE](https://github.com/davidmcnamee/cpp_build/blob/bazel/WORKSPACE)
> Run `bazel run //:app` to run the program.

In Bazel, build rules are defined by someone else, and we just import them into our project. Then we use those build rules to define build *targets*.

Under the hood, bazel paralellizes builds by default. It also caches build artifacts: so if you build the same target twice, it will only build it once. This makes it an order of magnitude faster than GNU Make for large projects.

## Gazelle

> Important Files: [BUILD.bazel](https://github.com/davidmcnamee/cpp_build/blob/gazelle/BUILD.bazel), [WORKSPACE](https://github.com/davidmcnamee/cpp_build/blob/gazelle/WORKSPACE).

> When you run `bazel run //:gazelle`, it will generate code in [strings/BUILD.bazel](https://github.com/davidmcnamee/cpp_build/blob/gazelle/strings/BUILD.bazel) and [BUILD.bazel](https://github.com/davidmcnamee/cpp_build/blob/gazelle/BUILD.bazel).
> From there, you can run `bazel run //:cpp_build` to run the program.

> Note: Gazelle doesn't currently support C++, so I had to translate the project to Go. You may notice several differences, but it is functionally equivalent.

There's still a problem that neither tool has addressed: every time we change a file, we have to manually update the BUILD.bazel/Makefile configurations. This is time-consuming, and it's error-prone.

Gazelle solves this problem by automatically generating BUILD.bazel files for us. It does this by parsing the source code, and automatically determining the dependencies. This means we can focus on writing code, and not on writing build rules.

However, similar to how Bazel build rules work, someone else has to make the Gazelle plugin for each language so that you can use it. Currently, [only a handful of programming languages are supported by Gazelle](https://github.com/bazelbuild/bazel-gazelle#supported-languages). So if you want to use Gazelle for a C++ or Rust project, you have to write your own plugin.

