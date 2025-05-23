# Generated by default/object.tt
package Paws::CodeCatalyst::ListSourceRepositoryBranchesItem;
  use Moose;
  has HeadCommitId => (is => 'ro', isa => 'Str', request_name => 'headCommitId', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Ref => (is => 'ro', isa => 'Str', request_name => 'ref', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::ListSourceRepositoryBranchesItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCatalyst::ListSourceRepositoryBranchesItem object:

  $service_obj->Method(Att1 => { HeadCommitId => $value, ..., Ref => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCatalyst::ListSourceRepositoryBranchesItem object:

  $result = $service_obj->Method(...);
  $result->Att1->HeadCommitId

=head1 DESCRIPTION

Information about a branch of a source repository returned in a list of
branches.

=head1 ATTRIBUTES


=head2 HeadCommitId => Str

The commit ID of the tip of the branch at the time of the request, also
known as the head commit.


=head2 LastUpdatedTime => Str

The time the branch was last updated, in coordinated universal time
(UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6).


=head2 Name => Str

The name of the branch.


=head2 Ref => Str

The Git reference name of the branch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

