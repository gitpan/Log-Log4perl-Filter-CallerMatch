
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'Filter Log4perl messages based on call frames',
                       'script_files' => [],
                       'license' => 'perl',
                       'build_requires' => {},
                       'dist_name' => 'Log-Log4perl-Filter-CallerMatch',
                       'dist_author' => [
                                          'Patrick Donelan <pat@patspam.com>'
                                        ],
                       'module_name' => 'Log::Log4perl::Filter::CallerMatch',
                       'requires' => {
                                       'Log::Log4perl::Config' => '0',
                                       'Carp' => '0',
                                       'Test::More' => '0',
                                       'perl' => '5.006',
                                       'Log::Log4perl::Filter' => '0',
                                       'File::Find' => '0',
                                       'File::Temp' => '0',
                                       'Log::Log4perl' => '0'
                                     },
                       'configure_requires' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'dist_version' => '1.100830'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
