# Generated by default/object.tt
package Paws::BCMPricingCalculator::BillInterval;
  use Moose;
  has End => (is => 'ro', isa => 'Str', request_name => 'end', traits => ['NameInRequest']);
  has Start => (is => 'ro', isa => 'Str', request_name => 'start', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BillInterval

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BCMPricingCalculator::BillInterval object:

  $service_obj->Method(Att1 => { End => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BCMPricingCalculator::BillInterval object:

  $result = $service_obj->Method(...);
  $result->Att1->End

=head1 DESCRIPTION

Represents a time interval for a bill or estimate.

=head1 ATTRIBUTES


=head2 End => Str

The end date and time of the interval.


=head2 Start => Str

The start date and time of the interval.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

