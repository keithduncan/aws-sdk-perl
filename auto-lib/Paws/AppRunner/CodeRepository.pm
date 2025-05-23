# Generated by default/object.tt
package Paws::AppRunner::CodeRepository;
  use Moose;
  has CodeConfiguration => (is => 'ro', isa => 'Paws::AppRunner::CodeConfiguration');
  has RepositoryUrl => (is => 'ro', isa => 'Str', required => 1);
  has SourceCodeVersion => (is => 'ro', isa => 'Paws::AppRunner::SourceCodeVersion', required => 1);
  has SourceDirectory => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::CodeRepository

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppRunner::CodeRepository object:

  $service_obj->Method(Att1 => { CodeConfiguration => $value, ..., SourceDirectory => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppRunner::CodeRepository object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeConfiguration

=head1 DESCRIPTION

Describes a source code repository.

=head1 ATTRIBUTES


=head2 CodeConfiguration => L<Paws::AppRunner::CodeConfiguration>

Configuration for building and running the service from a source code
repository.

C<CodeConfiguration> is required only for C<CreateService> request.


=head2 B<REQUIRED> RepositoryUrl => Str

The location of the repository that contains the source code.


=head2 B<REQUIRED> SourceCodeVersion => L<Paws::AppRunner::SourceCodeVersion>

The version that should be used within the source code repository.


=head2 SourceDirectory => Str

The path of the directory that stores source code and configuration
files. The build and start commands also execute from here. The path is
absolute from root and, if not specified, defaults to the repository
root.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

