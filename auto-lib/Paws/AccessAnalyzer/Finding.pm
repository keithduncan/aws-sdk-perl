# Generated by default/object.tt
package Paws::AccessAnalyzer::Finding;
  use Moose;
  has Action => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'action', traits => ['NameInRequest']);
  has AnalyzedAt => (is => 'ro', isa => 'Str', request_name => 'analyzedAt', traits => ['NameInRequest'], required => 1);
  has Condition => (is => 'ro', isa => 'Paws::AccessAnalyzer::ConditionKeyMap', request_name => 'condition', traits => ['NameInRequest'], required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has Error => (is => 'ro', isa => 'Str', request_name => 'error', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has IsPublic => (is => 'ro', isa => 'Bool', request_name => 'isPublic', traits => ['NameInRequest']);
  has Principal => (is => 'ro', isa => 'Paws::AccessAnalyzer::PrincipalMap', request_name => 'principal', traits => ['NameInRequest']);
  has Resource => (is => 'ro', isa => 'Str', request_name => 'resource', traits => ['NameInRequest']);
  has ResourceControlPolicyRestriction => (is => 'ro', isa => 'Str', request_name => 'resourceControlPolicyRestriction', traits => ['NameInRequest']);
  has ResourceOwnerAccount => (is => 'ro', isa => 'Str', request_name => 'resourceOwnerAccount', traits => ['NameInRequest'], required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest'], required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::FindingSource]', request_name => 'sources', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::Finding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AccessAnalyzer::Finding object:

  $service_obj->Method(Att1 => { Action => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AccessAnalyzer::Finding object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Contains information about a finding.

=head1 ATTRIBUTES


=head2 Action => ArrayRef[Str|Undef]

The action in the analyzed policy statement that an external principal
has permission to use.


=head2 B<REQUIRED> AnalyzedAt => Str

The time at which the resource was analyzed.


=head2 B<REQUIRED> Condition => L<Paws::AccessAnalyzer::ConditionKeyMap>

The condition in the analyzed policy statement that resulted in a
finding.


=head2 B<REQUIRED> CreatedAt => Str

The time at which the finding was generated.


=head2 Error => Str

An error.


=head2 B<REQUIRED> Id => Str

The ID of the finding.


=head2 IsPublic => Bool

Indicates whether the policy that generated the finding allows public
access to the resource.


=head2 Principal => L<Paws::AccessAnalyzer::PrincipalMap>

The external principal that has access to a resource within the zone of
trust.


=head2 Resource => Str

The resource that an external principal has access to.


=head2 ResourceControlPolicyRestriction => Str

The type of restriction applied to the finding by the resource owner
with an Organizations resource control policy (RCP).


=head2 B<REQUIRED> ResourceOwnerAccount => Str

The Amazon Web Services account ID that owns the resource.


=head2 B<REQUIRED> ResourceType => Str

The type of the resource identified in the finding.


=head2 Sources => ArrayRef[L<Paws::AccessAnalyzer::FindingSource>]

The sources of the finding. This indicates how the access that
generated the finding is granted. It is populated for Amazon S3 bucket
findings.


=head2 B<REQUIRED> Status => Str

The current status of the finding.


=head2 B<REQUIRED> UpdatedAt => Str

The time at which the finding was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

