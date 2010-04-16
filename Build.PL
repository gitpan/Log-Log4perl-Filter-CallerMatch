
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'Filter Log4perl messages based on call frames',
                       'script_files' => [],
                       'license' => 'perl',
                       'build_requires' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Module::Build' => '0.3601',
                                             'Log::Log4perl' => '0'
                                           },
                       'dist_name' => 'Log-Log4perl-Filter-CallerMatch',
                       'dist_author' => [
                                          'Patrick Donelan <pat@patspam.com>'
                                        ],
                       'module_name' => 'Log::Log4perl::Filter::CallerMatch',
                       'requires' => {
                                       'Log::Log4perl::Filter' => '0',
                                       'perl' => '5.006',
                                       'Log::Log4perl::Config' => '0',
                                       'Carp' => '0'
                                     },
                       'recommends' => {},
                       'configure_requires' => {
                                                 'ExtUtils::MakeMaker' => '6.31',
                                                 'Module::Build' => '0.3601'
                                               },
                       'dist_version' => '1.101060'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
