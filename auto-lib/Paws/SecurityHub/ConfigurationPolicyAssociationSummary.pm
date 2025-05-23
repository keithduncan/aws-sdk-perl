# Generated by default/object.tt
package Paws::SecurityHub::ConfigurationPolicyAssociationSummary;
  use Moose;
  has AssociationStatus => (is => 'ro', isa => 'Str');
  has AssociationStatusMessage => (is => 'ro', isa => 'Str');
  has AssociationType => (is => 'ro', isa => 'Str');
  has ConfigurationPolicyId => (is => 'ro', isa => 'Str');
  has TargetId => (is => 'ro', isa => 'Str');
  has TargetType => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ConfigurationPolicyAssociationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::ConfigurationPolicyAssociationSummary object:

  $service_obj->Method(Att1 => { AssociationStatus => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::ConfigurationPolicyAssociationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationStatus

=head1 DESCRIPTION

An object that contains the details of a configuration policy
association thatE<rsquo>s returned in a
C<ListConfigurationPolicyAssociations> request.

=head1 ATTRIBUTES


=head2 AssociationStatus => Str

The current status of the association between the specified target and
the configuration.


=head2 AssociationStatusMessage => Str

The explanation for a C<FAILED> value for C<AssociationStatus>.


=head2 AssociationType => Str

Indicates whether the association between the specified target and the
configuration was directly applied by the Security Hub delegated
administrator or inherited from a parent.


=head2 ConfigurationPolicyId => Str

The universally unique identifier (UUID) of the configuration policy.


=head2 TargetId => Str

The identifier of the target account, organizational unit, or the root.


=head2 TargetType => Str

Specifies whether the target is an Amazon Web Services account,
organizational unit, or the root.


=head2 UpdatedAt => Str

The date and time, in UTC and ISO 8601 format, that the configuration
policy association was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

