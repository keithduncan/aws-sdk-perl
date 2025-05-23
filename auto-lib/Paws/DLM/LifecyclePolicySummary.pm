# Generated by default/object.tt
package Paws::DLM::LifecyclePolicySummary;
  use Moose;
  has DefaultPolicy => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str');
  has PolicyType => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::DLM::TagMap');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::LifecyclePolicySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::LifecyclePolicySummary object:

  $service_obj->Method(Att1 => { DefaultPolicy => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::LifecyclePolicySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultPolicy

=head1 DESCRIPTION

Summary information about a lifecycle policy.

=head1 ATTRIBUTES


=head2 DefaultPolicy => Bool

B<[Default policies only]> The type of default policy. Values include:

=over

=item *

C<VOLUME> - Default policy for EBS snapshots

=item *

C<INSTANCE> - Default policy for EBS-backed AMIs

=back



=head2 Description => Str

The description of the lifecycle policy.


=head2 PolicyId => Str

The identifier of the lifecycle policy.


=head2 PolicyType => Str

The type of policy. C<EBS_SNAPSHOT_MANAGEMENT> indicates that the
policy manages the lifecycle of Amazon EBS snapshots.
C<IMAGE_MANAGEMENT> indicates that the policy manages the lifecycle of
EBS-backed AMIs. C<EVENT_BASED_POLICY> indicates that the policy
automates cross-account snapshot copies for snapshots that are shared
with your account.


=head2 State => Str

The activation state of the lifecycle policy.


=head2 Tags => L<Paws::DLM::TagMap>

The tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

