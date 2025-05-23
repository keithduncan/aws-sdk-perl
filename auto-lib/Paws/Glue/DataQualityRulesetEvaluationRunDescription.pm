# Generated by default/object.tt
package Paws::Glue::DataQualityRulesetEvaluationRunDescription;
  use Moose;
  has DataSource => (is => 'ro', isa => 'Paws::Glue::DataSource');
  has RunId => (is => 'ro', isa => 'Str');
  has StartedOn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DataQualityRulesetEvaluationRunDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::DataQualityRulesetEvaluationRunDescription object:

  $service_obj->Method(Att1 => { DataSource => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::DataQualityRulesetEvaluationRunDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSource

=head1 DESCRIPTION

Describes the result of a data quality ruleset evaluation run.

=head1 ATTRIBUTES


=head2 DataSource => L<Paws::Glue::DataSource>

The data source (an Glue table) associated with the run.


=head2 RunId => Str

The unique run identifier associated with this run.


=head2 StartedOn => Str

The date and time when the run started.


=head2 Status => Str

The status for this run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

