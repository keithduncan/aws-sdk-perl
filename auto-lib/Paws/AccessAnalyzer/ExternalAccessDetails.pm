# Generated by default/object.tt
package Paws::AccessAnalyzer::ExternalAccessDetails;
  use Moose;
  has Action => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'action', traits => ['NameInRequest']);
  has Condition => (is => 'ro', isa => 'Paws::AccessAnalyzer::ConditionKeyMap', request_name => 'condition', traits => ['NameInRequest'], required => 1);
  has IsPublic => (is => 'ro', isa => 'Bool', request_name => 'isPublic', traits => ['NameInRequest']);
  has Principal => (is => 'ro', isa => 'Paws::AccessAnalyzer::PrincipalMap', request_name => 'principal', traits => ['NameInRequest']);
  has ResourceControlPolicyRestriction => (is => 'ro', isa => 'Str', request_name => 'resourceControlPolicyRestriction', traits => ['NameInRequest']);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::FindingSource]', request_name => 'sources', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ExternalAccessDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::ExternalAccessDetails object:

  $service_obj->Method(Att1 => { Action => $value, ..., Sources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::ExternalAccessDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Contains information about an external access finding.

=head1 ATTRIBUTES


=head2 Action => ArrayRef[Str|Undef]

The action in the analyzed policy statement that an external principal
has permission to use.


=head2 B<REQUIRED> Condition => L<Paws::AccessAnalyzer::ConditionKeyMap>

The condition in the analyzed policy statement that resulted in an
external access finding.


=head2 IsPublic => Bool

Specifies whether the external access finding is public.


=head2 Principal => L<Paws::AccessAnalyzer::PrincipalMap>

The external principal that has access to a resource within the zone of
trust.


=head2 ResourceControlPolicyRestriction => Str

The type of restriction applied to the finding by the resource owner
with an Organizations resource control policy (RCP).


=head2 Sources => ArrayRef[L<Paws::AccessAnalyzer::FindingSource>]

The sources of the external access finding. This indicates how the
access that generated the finding is granted. It is populated for
Amazon S3 bucket findings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

