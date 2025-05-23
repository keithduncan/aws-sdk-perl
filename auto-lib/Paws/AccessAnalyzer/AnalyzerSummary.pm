# Generated by default/object.tt
package Paws::AccessAnalyzer::AnalyzerSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::AccessAnalyzer::AnalyzerConfiguration', request_name => 'configuration', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has LastResourceAnalyzed => (is => 'ro', isa => 'Str', request_name => 'lastResourceAnalyzed', traits => ['NameInRequest']);
  has LastResourceAnalyzedAt => (is => 'ro', isa => 'Str', request_name => 'lastResourceAnalyzedAt', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has StatusReason => (is => 'ro', isa => 'Paws::AccessAnalyzer::StatusReason', request_name => 'statusReason', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::AccessAnalyzer::TagsMap', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::AnalyzerSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::AnalyzerSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::AnalyzerSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about the analyzer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the analyzer.


=head2 Configuration => L<Paws::AccessAnalyzer::AnalyzerConfiguration>

Specifies whether the analyzer is an external access or unused access
analyzer.


=head2 B<REQUIRED> CreatedAt => Str

A timestamp for the time at which the analyzer was created.


=head2 LastResourceAnalyzed => Str

The resource that was most recently analyzed by the analyzer.


=head2 LastResourceAnalyzedAt => Str

The time at which the most recently analyzed resource was analyzed.


=head2 B<REQUIRED> Name => Str

The name of the analyzer.


=head2 B<REQUIRED> Status => Str

The status of the analyzer. An C<Active> analyzer successfully monitors
supported resources and generates new findings. The analyzer is
C<Disabled> when a user action, such as removing trusted access for
Identity and Access Management Access Analyzer from Organizations,
causes the analyzer to stop generating new findings. The status is
C<Creating> when the analyzer creation is in progress and C<Failed>
when the analyzer creation has failed.


=head2 StatusReason => L<Paws::AccessAnalyzer::StatusReason>

The C<statusReason> provides more details about the current status of
the analyzer. For example, if the creation for the analyzer fails, a
C<Failed> status is returned. For an analyzer with organization as the
type, this failure can be due to an issue with creating the
service-linked roles required in the member accounts of the Amazon Web
Services organization.


=head2 Tags => L<Paws::AccessAnalyzer::TagsMap>

The tags added to the analyzer.


=head2 B<REQUIRED> Type => Str

The type of analyzer, which corresponds to the zone of trust chosen for
the analyzer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

