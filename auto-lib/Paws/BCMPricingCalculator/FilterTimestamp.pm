# Generated by default/object.tt
package Paws::BCMPricingCalculator::FilterTimestamp;
  use Moose;
  has AfterTimestamp => (is => 'ro', isa => 'Str', request_name => 'afterTimestamp', traits => ['NameInRequest']);
  has BeforeTimestamp => (is => 'ro', isa => 'Str', request_name => 'beforeTimestamp', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::FilterTimestamp

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BCMPricingCalculator::FilterTimestamp object:

  $service_obj->Method(Att1 => { AfterTimestamp => $value, ..., BeforeTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BCMPricingCalculator::FilterTimestamp object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterTimestamp

=head1 DESCRIPTION

Represents a time-based filter.

=head1 ATTRIBUTES


=head2 AfterTimestamp => Str

Include results after this timestamp.


=head2 BeforeTimestamp => Str

Include results before this timestamp.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

