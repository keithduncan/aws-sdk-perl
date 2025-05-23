# Generated by default/object.tt
package Paws::CloudTrail::Destination;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::Destination object:

  $service_obj->Method(Att1 => { Location => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Contains information about the destination receiving events.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Location => Str

For channels used for a CloudTrail Lake integration, the location is
the ARN of an event data store that receives events from a channel. For
service-linked channels, the location is the name of the Amazon Web
Services service.


=head2 B<REQUIRED> Type => Str

The type of destination for events arriving from a channel. For
channels used for a CloudTrail Lake integration, the value is
C<EVENT_DATA_STORE>. For service-linked channels, the value is
C<AWS_SERVICE>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

