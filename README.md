# Node-Webkit AMQP Example

This is based on the blog post written here: [Getting Cirrius: Node-Webkit-AMQP](http://www.gettingcirrius.com).

## Purpose

**What is this and why did you do it?**

Node-Webkit is a library that allows Node.js code to be executed natively in a Webkit browser, specifically Chromium.

**But why would I want to run Node.js code from a web browser?**

Because it's awesome! Duh!

Ok, because you're browser is limited, and for good reasons.  First, you don't always trust the host you are visiting, so there is no way in heck that you are going to want them executing code against sensitive parts of your computer (like the file system).  Second, browsers are built around the HTTP and HTML specifications.  This means they are limited to a specific set of protocols and capabilities.

Desktop applications don't have these limitations.  They run at the permission level of the user who started the application.  Desktop applications are also notoriously difficult to build.  GUI libraries are typically not very flexible and the languages used to interact with them are generally strongly-typed and object oriented.  More importantly, to design an excellent GUI application, you need to have a good working knowledge of Threading and other concurrency constructs.

Web applications, in my very humble opinion, are easier to develop.  Plus, the lion share of effort has been dedicated to advancing web applications, particularly the presentation side of things, than native applications (perhaps with the exception of mobile). 

Node-Webkit combines the richness of the browser and all of the great HTML5 components necessary to build an application, with the power of a native API, Node.js, to do lower-level things like interact with the file system, databases, etc.


## Install

1.  Install Node.js.
2.  Install Node-Webkit.
3.  Install and start RabbitMQ.
4.  Clone the repo:  `git clone http://github.com/berico-rclayton/Node-Webkit-AMQP`
5.  Enter the repo: `cd Node-Webkit-AMQP`
6.  Install Node Dependencies: `npm install`
7.  Build a Node-Webkit bundle: `zip -r app.nw *`
8.  Run.  On OSX, simply double click the `app.nw` bundle.

> Please visit the project/vendor website for steps 1-3 for installation instructions.

## Drink Beer (or Scotch)

No project is worth finishing unless you have a glass of beer or scotch to celebrate its completion.