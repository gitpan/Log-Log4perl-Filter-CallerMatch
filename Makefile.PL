
use strict;
use warnings;

 BEGIN { require 5.006; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Log::Log4perl::Filter::CallerMatch',
                       'DISTNAME' => 'Log-Log4perl-Filter-CallerMatch',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Patrick Donelan <pat@patspam.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Filter Log4perl messages based on call frames',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100830',
                       'PREREQ_PM' => {
                                        'Log::Log4perl::Config' => '0',
                                        'Carp' => '0',
                                        'Test::More' => '0',
                                        'Log::Log4perl::Filter' => '0',
                                        'File::Find' => '0',
                                        'File::Temp' => '0',
                                        'Log::Log4perl' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



