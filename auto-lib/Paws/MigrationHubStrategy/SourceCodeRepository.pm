# Generated by default/object.tt
package Paws::MigrationHubStrategy::SourceCodeRepository;
  use Moose;
  has Branch => (is => 'ro', isa => 'Str', request_name => 'branch', traits => ['NameInRequest']);
  has ProjectName => (is => 'ro', isa => 'Str', request_name => 'projectName', traits => ['NameInRequest']);
  has Repository => (is => 'ro', isa => 'Str', request_name => 'repository', traits => ['NameInRequest']);
  has VersionControlType => (is => 'ro', isa => 'Str', request_name => 'versionControlType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::SourceCodeRepository

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHubStrategy::SourceCodeRepository object:

  $service_obj->Method(Att1 => { Branch => $value, ..., VersionControlType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHubStrategy::SourceCodeRepository object:

  $result = $service_obj->Method(...);
  $result->Att1->Branch

=head1 DESCRIPTION

Object containing source code information that is linked to an
application component.

=head1 ATTRIBUTES


=head2 Branch => Str

The branch of the source code.


=head2 ProjectName => Str

The name of the project.


=head2 Repository => Str

The repository name for the source code.


=head2 VersionControlType => Str

The type of repository to use for the source code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

