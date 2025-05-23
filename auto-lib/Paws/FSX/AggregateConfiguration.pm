# Generated by default/object.tt
package Paws::FSX::AggregateConfiguration;
  use Moose;
  has Aggregates => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TotalConstituents => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::AggregateConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::AggregateConfiguration object:

  $service_obj->Method(Att1 => { Aggregates => $value, ..., TotalConstituents => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::AggregateConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Aggregates

=head1 DESCRIPTION

Used to specify configuration options for a volumeE<rsquo>s storage
aggregate or aggregates.

=head1 ATTRIBUTES


=head2 Aggregates => ArrayRef[Str|Undef]

The list of aggregates that this volume resides on. Aggregates are
storage pools which make up your primary storage tier. Each
high-availability (HA) pair has one aggregate. The names of the
aggregates map to the names of the aggregates in the ONTAP CLI and REST
API. For FlexVols, there will always be a single entry.

Amazon FSx responds with an HTTP status code 400 (Bad Request) for the
following conditions:

=over

=item *

The strings in the value of C<Aggregates> are not are not formatted as
C<aggrX>, where X is a number between 1 and 12.

=item *

The value of C<Aggregates> contains aggregates that are not present.

=item *

One or more of the aggregates supplied are too close to the volume
limit to support adding more volumes.

=back



=head2 TotalConstituents => Int

The total number of constituents this FlexGroup volume has. Not
applicable for FlexVols.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

