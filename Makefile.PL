#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install 1.02;
use Module::Install::Catalyst; # Complain loudly if you don't have
                               # Catalyst::Devel installed or haven't said
                               # 'make dist' to create a standalone tarball.

name 'PresentingPerl-Web';
all_from 'lib/PresentingPerl/Web.pm';

requires 'Catalyst::Runtime' => '5.90007';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Action::RenderView';
requires 'Moose';
requires 'namespace::autoclean';
requires 'Config::General'; # This should reflect the config file format you've chosen
                 # See Catalyst::Plugin::ConfigLoader for supported formats

requires 'Catalyst::View::HTML::Zoom';
requires 'Catalyst::Model::DBIC::Schema';
requires 'MooseX::NonMoose';
# 0.11 is very faily on dev.pp.org
#requires 'Catalyst::Plugin::StackTrace';

# Authentication
requires 'Authen::Passphrase::SaltedDigest';
requires 'DBIx::Class::InflateColumn::Authen::Passphrase';
requires 'CatalystX::SimpleLogin';
requires 'Catalyst::Authentication::Store::DBIx::Class';
requires 'Catalyst::Plugin::Authorization::Roles';
requires 'Perl6::Junction';

requires 'DBIx::Class::TimeStamp';
requires 'Template::Tiny';


test_requires 'Test::More' => '0.88';
catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
