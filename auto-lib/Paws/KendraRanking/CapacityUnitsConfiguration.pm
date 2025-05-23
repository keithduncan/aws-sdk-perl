# Generated by default/object.tt
package Paws::KendraRanking::CapacityUnitsConfiguration;
  use Moose;
  has RescoreCapacityUnits => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::CapacityUnitsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KendraRanking::CapacityUnitsConfiguration object:

  $service_obj->Method(Att1 => { RescoreCapacityUnits => $value, ..., RescoreCapacityUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KendraRanking::CapacityUnitsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->RescoreCapacityUnits

=head1 DESCRIPTION

Sets additional capacity units configured for your rescore execution
plan. A rescore execution plan is an Amazon Kendra Intelligent Ranking
resource used for provisioning the C<Rescore> API. You can add and
remove capacity units to fit your usage requirements.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RescoreCapacityUnits => Int

The amount of extra capacity for your rescore execution plan.

A single extra capacity unit for a rescore execution plan provides 0.01
rescore requests per second. You can add up to 1000 extra capacity
units.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KendraRanking>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

