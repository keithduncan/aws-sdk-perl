# Generated by default/object.tt
package Paws::CleanRooms::ConfiguredTableAssociationAnalysisRulePolicyV1;
  use Moose;
  has Aggregation => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredTableAssociationAnalysisRuleAggregation', request_name => 'aggregation', traits => ['NameInRequest']);
  has Custom => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredTableAssociationAnalysisRuleCustom', request_name => 'custom', traits => ['NameInRequest']);
  has List => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredTableAssociationAnalysisRuleList', request_name => 'list', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ConfiguredTableAssociationAnalysisRulePolicyV1

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::ConfiguredTableAssociationAnalysisRulePolicyV1 object:

  $service_obj->Method(Att1 => { Aggregation => $value, ..., List => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::ConfiguredTableAssociationAnalysisRulePolicyV1 object:

  $result = $service_obj->Method(...);
  $result->Att1->Aggregation

=head1 DESCRIPTION

Controls on the query specifications that can be run on an associated
configured table.

=head1 ATTRIBUTES


=head2 Aggregation => L<Paws::CleanRooms::ConfiguredTableAssociationAnalysisRuleAggregation>

Analysis rule type that enables only aggregation queries on a
configured table.


=head2 Custom => L<Paws::CleanRooms::ConfiguredTableAssociationAnalysisRuleCustom>

Analysis rule type that enables the table owner to approve custom SQL
queries on their configured tables. It supports differential privacy.


=head2 List => L<Paws::CleanRooms::ConfiguredTableAssociationAnalysisRuleList>

Analysis rule type that enables only list queries on a configured
table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

