package Paws::EC2::AccessScopeAnalysisFinding;
  use Moose;
  has FindingComponents => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PathComponent]', request_name => 'findingComponentSet', traits => ['NameInRequest']);
  has FindingId => (is => 'ro', isa => 'Str', request_name => 'findingId', traits => ['NameInRequest']);
  has NetworkInsightsAccessScopeAnalysisId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAccessScopeAnalysisId', traits => ['NameInRequest']);
  has NetworkInsightsAccessScopeId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAccessScopeId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AccessScopeAnalysisFinding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AccessScopeAnalysisFinding object:

  $service_obj->Method(Att1 => { FindingComponents => $value, ..., NetworkInsightsAccessScopeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AccessScopeAnalysisFinding object:

  $result = $service_obj->Method(...);
  $result->Att1->FindingComponents

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 FindingComponents => ArrayRef[L<Paws::EC2::PathComponent>]

The finding components.


=head2 FindingId => Str

The ID of the finding.


=head2 NetworkInsightsAccessScopeAnalysisId => Str

The ID of the Network Access Scope analysis.


=head2 NetworkInsightsAccessScopeId => Str

The ID of the Network Access Scope.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
