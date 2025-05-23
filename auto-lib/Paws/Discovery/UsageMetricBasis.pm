# Generated by default/object.tt
package Paws::Discovery::UsageMetricBasis;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has PercentageAdjust => (is => 'ro', isa => 'Num', request_name => 'percentageAdjust', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::UsageMetricBasis

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::UsageMetricBasis object:

  $service_obj->Method(Att1 => { Name => $value, ..., PercentageAdjust => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::UsageMetricBasis object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Specifies the performance metrics to use for the server that is used
for recommendations.

=head1 ATTRIBUTES


=head2 Name => Str

A utilization metric that is used by the recommendations.


=head2 PercentageAdjust => Num

Specifies the percentage of the specified utilization metric that is
used by the recommendations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

