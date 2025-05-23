# Generated by default/object.tt
package Paws::Finspace::KxChangesetListEntry;
  use Moose;
  has ActiveFromTimestamp => (is => 'ro', isa => 'Str', request_name => 'activeFromTimestamp', traits => ['NameInRequest']);
  has ChangesetId => (is => 'ro', isa => 'Str', request_name => 'changesetId', traits => ['NameInRequest']);
  has CreatedTimestamp => (is => 'ro', isa => 'Str', request_name => 'createdTimestamp', traits => ['NameInRequest']);
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', request_name => 'lastModifiedTimestamp', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::KxChangesetListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Finspace::KxChangesetListEntry object:

  $service_obj->Method(Att1 => { ActiveFromTimestamp => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Finspace::KxChangesetListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveFromTimestamp

=head1 DESCRIPTION

Details of changeset.

=head1 ATTRIBUTES


=head2 ActiveFromTimestamp => Str

Beginning time from which the changeset is active. The value is
determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 ChangesetId => Str

A unique identifier for the changeset.


=head2 CreatedTimestamp => Str

The timestamp at which the changeset was created in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 LastModifiedTimestamp => Str

The timestamp at which the changeset was modified. The value is
determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 Status => Str

Status of the changeset.

=over

=item *

Pending E<ndash> Changeset creation is pending.

=item *

Processing E<ndash> Changeset creation is running.

=item *

Failed E<ndash> Changeset creation has failed.

=item *

Complete E<ndash> Changeset creation has succeeded.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

