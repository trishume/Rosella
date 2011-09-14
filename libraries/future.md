---
layout: rosella
title: Future Libraries
---

## Overview

Rosella is a large collection of libraries. At any given time there will be
some libraries in the collection considered "stable" and "usable", and other
libraries in the collection which are still in the planning or development
stages.

This webpage is going to list some of the libraries which are in planning
and development stages. As these libraries grow and mature, they will become
stable and will be listed elsewhere in the documentation.

If *you* are interested in either using or helping to bring them to maturity,
let me know. I'm always interested in new ideas, feedback, and contributions.

## How To Become Stable

To be listed as a stable library, a Rosella library must have:

1. Ample in-code documentation and comments
2. A webpage describing the capabilities and usages of the library
3. Significant test coverage

The library should also be well-designed, have a good and maintainable
architecture, be extendable and configurable, and follow all coding standards.

## Development Libraries

These libraries exist, but are either incomplete, not tested, not documented,
have bad interfaces, suffer from bad or incomplete design, or are otherwise
not mature enough to be considered a stable part of Rosella.

### Contract

A library for performing runtime checks and assertions. The Contract library
implements functionality to verify that certain values hold in certain
ranges, that objects implement required interfaces, and that functions are
both being called correctly and returning correct values. At runtime, the
Contract library can be "turned off", and will not perform any costly checks.

### Decorate

Based on the Proxy library, the Decorate library provides a mechanism for
creating cheap Decorators. A Decorator is an object which adds new
attributes and methods to an object of an existing class, without violating
encapsulation.

### Prototype

The Prototype library implements the Prototype pattern. A Prototype is an
object which is cloned to create new objects, as opposed to a normal system of
object creation where objects are allocated fresh and separate initialized.
The Prototype library allows you to register both a prototype object and an
initializer method for each type, then ask for objects of that type by name.

### Lazy

The Lazy library implements lazy objects. Lazy objects are proxies which take
a target type but which only instantiate the targe object on demand. This is
useful for when you need to have and pass an object "instance", but creating
the object is too expensive to do eagerly.

### Template

The Template library performs text-formatting and text-templating. It will
have a default syntax familiar, but not identical, to other well-known text
templating packages. In addition, it will provide a powerful customization
interace to change both syntax and semanics of text templating for particular
purposes.

### Benchmark

The Benchmark library will contain tools and utilities for benchmarking and
measuring the performance of code.

### Utilities

Not a library, several standalone utility programs are being developed as
part of the Rosella package. These utility programs will use Rosella libraries
to perform several important and time-saving tasks.

## Planned Libraries

These are libaries which exist only on paper (or, more likely, only in my
head). These are just rough plans for things I might like to work on, but
haven't actually written any code for.

### MVC

This library will provide a number of helper utilities to support systems
using an MVC architecture.

### Multicast

This library will provide higher-order routines for combining functions
together in logical ways to be executed as a single unit.