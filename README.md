# React Native Level Up News Letter

**Scaffold for News Letter Creation and Backup**

## Overview

Each news letter should contain:
  - A very specific topic on React Native or related libraries/services.
  - Good SEO friendly title.
  - GIF giving an overview of the topic.
  - Minimal copy explaining the topic

The plan is to queue a bunch of these up at once then release one a week.

We want the news letters to be short and sweet. They should highlight one feature or concept. The code and copy should be as mininimal as possible to keep the news-letter casual and fun.

I stole the structure from Umar Hansa's NL which I absolutely love https://umaar.com/dev-tips/

## This Repo

The basic idea here is we make branches for each specific top and edit this
React Native project however we need to to create the GIF and test the code for
that topic.

```bash
git checkout -b specific-topic
git add .
git commit -m "Initial commit 👶"
git push origin specific-topic
```

## Also!

You must edit this README.md in your branch with the copy for the given News Letter. This
allows us to archive all the content for any given news letter into nice
little branches off of this main project :) Could also be very useful in the
future if we have a nice base to fork from and expand on older news-letters
wether that be for a more advanced follow-up news-letter or to spin one off
into a blog post or something.

## Resources

**To get topic ideas from**

  - [Awesome React Native](https://github.com/jondot/awesome-react-native)
  - [RN Changelog](https://github.com/facebook/react-native/releases)
