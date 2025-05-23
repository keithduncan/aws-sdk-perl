# Generated by default/object.tt
package Paws::Proton::RepositorySyncEvent;
  use Moose;
  has Event => (is => 'ro', isa => 'Str', request_name => 'event', traits => ['NameInRequest'], required => 1);
  has ExternalId => (is => 'ro', isa => 'Str', request_name => 'externalId', traits => ['NameInRequest']);
  has Time => (is => 'ro', isa => 'Str', request_name => 'time', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::RepositorySyncEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Proton::RepositorySyncEvent object:

  $service_obj->Method(Att1 => { Event => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Proton::RepositorySyncEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Event

=head1 DESCRIPTION

Repository sync event detail data for a sync attempt.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Event => Str

Event detail for a repository sync attempt.


=head2 ExternalId => Str

The external ID of the sync event.


=head2 B<REQUIRED> Time => Str

The time that the sync event occurred.


=head2 B<REQUIRED> Type => Str

The type of event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

