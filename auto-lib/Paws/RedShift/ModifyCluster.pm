
package Paws::RedShift::ModifyCluster;
  use Moose;
  has AllowVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailabilityZoneRelocation => (is => 'ro', isa => 'Bool');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has EnhancedVpcRouting => (is => 'ro', isa => 'Bool');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has IpAddressType => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MaintenanceTrackName => (is => 'ro', isa => 'Str');
  has ManageMasterPassword => (is => 'ro', isa => 'Bool');
  has ManualSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has MasterPasswordSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has NewClusterIdentifier => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyCluster - Arguments for method ModifyCluster on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCluster on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCluster.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ModifyClusterResult = $redshift->ModifyCluster(
      ClusterIdentifier                => 'MyString',
      AllowVersionUpgrade              => 1,             # OPTIONAL
      AutomatedSnapshotRetentionPeriod => 1,             # OPTIONAL
      AvailabilityZone                 => 'MyString',    # OPTIONAL
      AvailabilityZoneRelocation       => 1,             # OPTIONAL
      ClusterParameterGroupName        => 'MyString',    # OPTIONAL
      ClusterSecurityGroups            => [
        'MyString', ...                                  # max: 2147483647
      ],    # OPTIONAL
      ClusterType                    => 'MyString',             # OPTIONAL
      ClusterVersion                 => 'MyString',             # OPTIONAL
      ElasticIp                      => 'MyString',             # OPTIONAL
      Encrypted                      => 1,                      # OPTIONAL
      EnhancedVpcRouting             => 1,                      # OPTIONAL
      HsmClientCertificateIdentifier => 'MyString',             # OPTIONAL
      HsmConfigurationIdentifier     => 'MyString',             # OPTIONAL
      IpAddressType                  => 'MyString',             # OPTIONAL
      KmsKeyId                       => 'MyString',             # OPTIONAL
      MaintenanceTrackName           => 'MyString',             # OPTIONAL
      ManageMasterPassword           => 1,                      # OPTIONAL
      ManualSnapshotRetentionPeriod  => 1,                      # OPTIONAL
      MasterPasswordSecretKmsKeyId   => 'MyString',             # OPTIONAL
      MasterUserPassword             => 'MySensitiveString',    # OPTIONAL
      MultiAZ                        => 1,                      # OPTIONAL
      NewClusterIdentifier           => 'MyString',             # OPTIONAL
      NodeType                       => 'MyString',             # OPTIONAL
      NumberOfNodes                  => 1,                      # OPTIONAL
      Port                           => 1,                      # OPTIONAL
      PreferredMaintenanceWindow     => 'MyString',             # OPTIONAL
      PubliclyAccessible             => 1,                      # OPTIONAL
      VpcSecurityGroupIds            => [
        'MyString', ...    # max: 2147483647
      ],    # OPTIONAL
    );

    # Results:
    my $Cluster = $ModifyClusterResult->Cluster;

    # Returns a L<Paws::RedShift::ModifyClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyCluster>

=head1 ATTRIBUTES


=head2 AllowVersionUpgrade => Bool

If C<true>, major version upgrades will be applied automatically to the
cluster during the maintenance window.

Default: C<false>



=head2 AutomatedSnapshotRetentionPeriod => Int

The number of days that automated snapshots are retained. If the value
is 0, automated snapshots are disabled. Even if automated snapshots are
disabled, you can still create manual snapshots when you want with
CreateClusterSnapshot.

If you decrease the automated snapshot retention period from its
current value, existing automated snapshots that fall outside of the
new retention period will be immediately deleted.

You can't disable automated snapshots for RA3 node types. Set the
automated retention period from 1-35 days.

Default: Uses existing setting.

Constraints: Must be a value from 0 to 35.



=head2 AvailabilityZone => Str

The option to initiate relocation for an Amazon Redshift cluster to the
target Availability Zone.



=head2 AvailabilityZoneRelocation => Bool

The option to enable relocation for an Amazon Redshift cluster between
Availability Zones after the cluster modification is complete.



=head2 B<REQUIRED> ClusterIdentifier => Str

The unique identifier of the cluster to be modified.

Example: C<examplecluster>



=head2 ClusterParameterGroupName => Str

The name of the cluster parameter group to apply to this cluster. This
change is applied only after the cluster is rebooted. To reboot a
cluster use RebootCluster.

Default: Uses existing setting.

Constraints: The cluster parameter group must be in the same parameter
group family that matches the cluster version.



=head2 ClusterSecurityGroups => ArrayRef[Str|Undef]

A list of cluster security groups to be authorized on this cluster.
This change is asynchronously applied as soon as possible.

Security groups currently associated with the cluster, and not in the
list of groups to apply, will be revoked from the cluster.

Constraints:

=over

=item *

Must be 1 to 255 alphanumeric characters or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back




=head2 ClusterType => Str

The new cluster type.

When you submit your cluster resize request, your existing cluster goes
into a read-only mode. After Amazon Redshift provisions a new cluster
based on your resize requirements, there will be outage for a period
while the old cluster is deleted and your connection is switched to the
new cluster. You can use DescribeResize to track the progress of the
resize request.

Valid Values: C< multi-node | single-node>



=head2 ClusterVersion => Str

The new version number of the Amazon Redshift engine to upgrade to.

For major version upgrades, if a non-default cluster parameter group is
currently in use, a new cluster parameter group in the cluster
parameter group family for the new version must be specified. The new
cluster parameter group can be the default for that cluster parameter
group family. For more information about parameters and parameter
groups, go to Amazon Redshift Parameter Groups
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.

Example: C<1.0>



=head2 ElasticIp => Str

The Elastic IP (EIP) address for the cluster.

Constraints: The cluster must be provisioned in EC2-VPC and
publicly-accessible through an Internet gateway. For more information
about provisioning clusters in EC2-VPC, go to Supported Platforms to
Launch Your Cluster
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms)
in the Amazon Redshift Cluster Management Guide.



=head2 Encrypted => Bool

Indicates whether the cluster is encrypted. If the value is encrypted
(true) and you provide a value for the C<KmsKeyId> parameter, we
encrypt the cluster with the provided C<KmsKeyId>. If you don't provide
a C<KmsKeyId>, we encrypt with the default key.

If the value is not encrypted (false), then the cluster is decrypted.



=head2 EnhancedVpcRouting => Bool

An option that specifies whether to create the cluster with enhanced
VPC routing enabled. To create a cluster that uses enhanced VPC
routing, the cluster must be in a VPC. For more information, see
Enhanced VPC Routing
(https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html)
in the Amazon Redshift Cluster Management Guide.

If this option is C<true>, enhanced VPC routing is enabled.

Default: false



=head2 HsmClientCertificateIdentifier => Str

Specifies the name of the HSM client certificate the Amazon Redshift
cluster uses to retrieve the data encryption keys stored in an HSM.



=head2 HsmConfigurationIdentifier => Str

Specifies the name of the HSM configuration that contains the
information the Amazon Redshift cluster can use to retrieve and store
keys in an HSM.



=head2 IpAddressType => Str

The IP address types that the cluster supports. Possible values are
C<ipv4> and C<dualstack>.



=head2 KmsKeyId => Str

The Key Management Service (KMS) key ID of the encryption key that you
want to use to encrypt data in the cluster.



=head2 MaintenanceTrackName => Str

The name for the maintenance track that you want to assign for the
cluster. This name change is asynchronous. The new track name stays in
the C<PendingModifiedValues> for the cluster until the next maintenance
window. When the maintenance track changes, the cluster is switched to
the latest cluster release available for the maintenance track. At this
point, the maintenance track name is applied.



=head2 ManageMasterPassword => Bool

If C<true>, Amazon Redshift uses Secrets Manager to manage this
cluster's admin credentials. You can't use C<MasterUserPassword> if
C<ManageMasterPassword> is true. If C<ManageMasterPassword> is false or
not set, Amazon Redshift uses C<MasterUserPassword> for the admin user
account's password.



=head2 ManualSnapshotRetentionPeriod => Int

The default for number of days that a newly created manual snapshot is
retained. If the value is -1, the manual snapshot is retained
indefinitely. This value doesn't retroactively change the retention
periods of existing manual snapshots.

The value must be either -1 or an integer between 1 and 3,653.

The default value is -1.



=head2 MasterPasswordSecretKmsKeyId => Str

The ID of the Key Management Service (KMS) key used to encrypt and
store the cluster's admin credentials secret. You can only use this
parameter if C<ManageMasterPassword> is true.



=head2 MasterUserPassword => Str

The new password for the cluster admin user. This change is
asynchronously applied as soon as possible. Between the time of the
request and the completion of the request, the C<MasterUserPassword>
element exists in the C<PendingModifiedValues> element of the operation
response.

You can't use C<MasterUserPassword> if C<ManageMasterPassword> is
C<true>.

Operations never return the password, so this operation provides a way
to regain access to the admin user account for a cluster if the
password is lost.

Default: Uses existing setting.

Constraints:

=over

=item *

Must be between 8 and 64 characters in length.

=item *

Must contain at least one uppercase letter.

=item *

Must contain at least one lowercase letter.

=item *

Must contain one number.

=item *

Can be any printable ASCII character (ASCII code 33-126) except C<'>
(single quote), C<"> (double quote), C<\>, C</>, or C<@>.

=back




=head2 MultiAZ => Bool

If true and the cluster is currently only deployed in a single
Availability Zone, the cluster will be modified to be deployed in two
Availability Zones.



=head2 NewClusterIdentifier => Str

The new identifier for the cluster.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens.

=item *

Alphabetic characters must be lowercase.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=item *

Must be unique for all clusters within an Amazon Web Services account.

=back

Example: C<examplecluster>



=head2 NodeType => Str

The new node type of the cluster. If you specify a new node type, you
must also specify the number of nodes parameter.

For more information about resizing clusters, go to Resizing Clusters
in Amazon Redshift
(https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html)
in the I<Amazon Redshift Cluster Management Guide>.

Valid Values: C<dc2.large> | C<dc2.8xlarge> | C<ra3.large> |
C<ra3.xlplus> | C<ra3.4xlarge> | C<ra3.16xlarge>



=head2 NumberOfNodes => Int

The new number of nodes of the cluster. If you specify a new number of
nodes, you must also specify the node type parameter.

For more information about resizing clusters, go to Resizing Clusters
in Amazon Redshift
(https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html)
in the I<Amazon Redshift Cluster Management Guide>.

Valid Values: Integer greater than C<0>.



=head2 Port => Int

The option to change the port of an Amazon Redshift cluster.

Valid Values:

=over

=item *

For clusters with ra3 nodes - Select a port within the ranges
C<5431-5455> or C<8191-8215>. (If you have an existing cluster with ra3
nodes, it isn't required that you change the port to these ranges.)

=item *

For clusters with dc2 nodes - Select a port within the range
C<1150-65535>.

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range (in UTC) during which system maintenance can
occur, if necessary. If system maintenance is necessary during the
window, it may result in an outage.

This maintenance window change is made immediately. If the new
maintenance window indicates the current time, there must be at least
120 minutes between the current time and end of the window in order to
ensure that pending changes are applied.

Default: Uses existing setting.

Format: ddd:hh24:mi-ddd:hh24:mi, for example C<wed:07:30-wed:08:00>.

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Must be at least 30 minutes.



=head2 PubliclyAccessible => Bool

If C<true>, the cluster can be accessed from a public network. Only
clusters in VPCs can be set to be publicly available.

Default: false



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of virtual private cloud (VPC) security groups to be associated
with the cluster. This change is asynchronously applied as soon as
possible.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCluster in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

