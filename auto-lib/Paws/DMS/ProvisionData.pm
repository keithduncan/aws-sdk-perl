# Generated by default/object.tt
package Paws::DMS::ProvisionData;
  use Moose;
  has DateNewProvisioningDataAvailable => (is => 'ro', isa => 'Str');
  has DateProvisioned => (is => 'ro', isa => 'Str');
  has IsNewProvisioningAvailable => (is => 'ro', isa => 'Bool');
  has ProvisionedCapacityUnits => (is => 'ro', isa => 'Int');
  has ProvisionState => (is => 'ro', isa => 'Str');
  has ReasonForNewProvisioningData => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ProvisionData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ProvisionData object:

  $service_obj->Method(Att1 => { DateNewProvisioningDataAvailable => $value, ..., ReasonForNewProvisioningData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ProvisionData object:

  $result = $service_obj->Method(...);
  $result->Att1->DateNewProvisioningDataAvailable

=head1 DESCRIPTION

Information about provisioning resources for an DMS serverless
replication.

=head1 ATTRIBUTES


=head2 DateNewProvisioningDataAvailable => Str

The timestamp when provisioning became available.


=head2 DateProvisioned => Str

The timestamp when DMS provisioned replication resources.


=head2 IsNewProvisioningAvailable => Bool

Whether the new provisioning is available to the replication.


=head2 ProvisionedCapacityUnits => Int

The number of capacity units the replication is using.


=head2 ProvisionState => Str

The current provisioning state


=head2 ReasonForNewProvisioningData => Str

A message describing the reason that DMS provisioned new resources for
the serverless replication.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

