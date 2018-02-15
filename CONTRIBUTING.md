## Developing and Contributing

### Version control

We use semantic versioning.

X.Y.Z

Major revision change (X) implies new functionality and non-backwards compatible changes
Minor revision change (Y) implies new functionality with backwards compatible changes
Patch revision change (Z) is for bug fixes, and internal algorithm changes

This implies that all gems with the same Major revision should work together.  However testing is always done on a
per gem basis with the latest current version of all gems.  This means that if you do a bundle update you should
have the latest tested version.  

#### Edge Development

During each major release development, stable sets of gems are pushed called X.0.0.lapN. For example to use the latest 2.0.0
release candidate you would specify `gem 'hyperloop' '~> 2.0.0.lap0'`  and this will get you the highest numbered lap.
During major release development the individual gems are updated together, with possibily breaking changes across gems, 
so its important that you do a bundle update to get the latest set with working with Edge.

On github you will find

+ master -> the latest released gem.  I.e. master is updated when the gem is released.
+ edge -> work in progress for *next* major release.  The edge branch should work but there may be caveats etc.
+ tags -> each release (including patches) will have a git tag associated.
+ other branches -> other branches may exist for the pleasure of the core team as they develop fixes and features

### Development and Testing

Please Contribute!  Issues welcome. PRs even more welcome.  We strive to add specs for all new features and bug fixes.
So please try to add a test spec with your change.

We use the `hyper-spec` gem for testing, which adds isomorphic helpers to rspec.  This allows a specs to exercise
both the client and server.  Have a look at some of the 700+ existing specs for ideas on how this works.

To get started clone the gem's repo, and switch to either the `master` (for minor and patch changes) 
or `edge` (for new breaking feature content) branch, run 

`rake spec:prepare`  **note no bundle exec... this will do a bundle update for you**  
then  
`bundle exec rake`

Once everything passes you are good to begin creating a new spec, and implement your changes.

Once you have everything passing again, submit your pull request.

Any questions? There are usually core team members around at https://gitter.im/ruby-hyperloop/chat
