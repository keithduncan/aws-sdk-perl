# Generated by default/object.tt
package Paws::AccessAnalyzer::AnalysisRule;
  use Moose;
  has Exclusions => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::AnalysisRuleCriteria]', request_name => 'exclusions', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::AnalysisRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::AnalysisRule object:

  $service_obj->Method(Att1 => { Exclusions => $value, ..., Exclusions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::AnalysisRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Exclusions

=head1 DESCRIPTION

Contains information about analysis rules for the analyzer. Analysis
rules determine which entities will generate findings based on the
criteria you define when you create the rule.

=head1 ATTRIBUTES


=head2 Exclusions => ArrayRef[L<Paws::AccessAnalyzer::AnalysisRuleCriteria>]

A list of rules for the analyzer containing criteria to exclude from
analysis. Entities that meet the rule criteria will not generate
findings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

