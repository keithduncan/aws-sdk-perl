# Generated by default/object.tt
package Paws::DMS::ReplicationPendingModifiedValues;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has NetworkType => (is => 'ro', isa => 'Str');
  has ReplicationInstanceClass => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationPendingModifiedValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationPendingModifiedValues object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., ReplicationInstanceClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationPendingModifiedValues object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

Provides information about the values of pending modifications to a
replication instance. This data type is an object of the
C<ReplicationInstance>
(https://docs.aws.amazon.com/dms/latest/APIReference/API_ReplicationInstance.html)
user-defined data type.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gigabytes) that is allocated for the
replication instance.


=head2 EngineVersion => Str

The engine version number of the replication instance.


=head2 MultiAZ => Bool

Specifies whether the replication instance is a Multi-AZ deployment.
You can't set the C<AvailabilityZone> parameter if the Multi-AZ
parameter is set to C<true>.


=head2 NetworkType => Str

The type of IP address protocol used by a replication instance, such as
IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing.
IPv6 only is not yet supported.


=head2 ReplicationInstanceClass => Str

The compute and memory capacity of the replication instance as defined
for the specified replication instance class.

For more information on the settings and capacities for the available
replication instance classes, see Selecting the right DMS replication
instance for your migration
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

