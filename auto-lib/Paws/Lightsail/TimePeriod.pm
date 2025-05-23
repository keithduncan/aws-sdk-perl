# Generated by default/object.tt
package Paws::Lightsail::TimePeriod;
  use Moose;
  has End => (is => 'ro', isa => 'Str', request_name => 'end', traits => ['NameInRequest']);
  has Start => (is => 'ro', isa => 'Str', request_name => 'start', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::TimePeriod

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::TimePeriod object:

  $service_obj->Method(Att1 => { End => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::TimePeriod object:

  $result = $service_obj->Method(...);
  $result->Att1->End

=head1 DESCRIPTION

Sets the start date and end date for retrieving a cost estimate. The
start date is inclusive, but the end date is exclusive. For example, if
C<start> is C<2017-01-01> and C<end> is C<2017-05-01>, then the cost
and usage data is retrieved from C<2017-01-01> up to and including
C<2017-04-30> but not including C<2017-05-01>.

=head1 ATTRIBUTES


=head2 End => Str

The end of the time period. The end date is exclusive. For example, if
C<end> is C<2017-05-01>, Lightsail for Research retrieves cost and
usage data from the start date up to, but not including, C<2017-05-01>.


=head2 Start => Str

The beginning of the time period. The start date is inclusive. For
example, if C<start> is C<2017-01-01>, Lightsail for Research retrieves
cost and usage data starting at C<2017-01-01> up to the end date. The
start date must be equal to or no later than the current date to avoid
a validation error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

