# Generated by default/object.tt
package Paws::FSX::WindowsFileSystemConfiguration;
  use Moose;
  has ActiveDirectoryId => (is => 'ro', isa => 'Str');
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Alias]');
  has AuditLogConfiguration => (is => 'ro', isa => 'Paws::FSX::WindowsAuditLogConfiguration');
  has AutomaticBackupRetentionDays => (is => 'ro', isa => 'Int');
  has CopyTagsToBackups => (is => 'ro', isa => 'Bool');
  has DailyAutomaticBackupStartTime => (is => 'ro', isa => 'Str');
  has DeploymentType => (is => 'ro', isa => 'Str');
  has DiskIopsConfiguration => (is => 'ro', isa => 'Paws::FSX::DiskIopsConfiguration');
  has MaintenanceOperationsInProgress => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PreferredFileServerIp => (is => 'ro', isa => 'Str');
  has PreferredSubnetId => (is => 'ro', isa => 'Str');
  has RemoteAdministrationEndpoint => (is => 'ro', isa => 'Str');
  has SelfManagedActiveDirectoryConfiguration => (is => 'ro', isa => 'Paws::FSX::SelfManagedActiveDirectoryAttributes');
  has ThroughputCapacity => (is => 'ro', isa => 'Int');
  has WeeklyMaintenanceStartTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::WindowsFileSystemConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::WindowsFileSystemConfiguration object:

  $service_obj->Method(Att1 => { ActiveDirectoryId => $value, ..., WeeklyMaintenanceStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::WindowsFileSystemConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveDirectoryId

=head1 DESCRIPTION

The configuration for this Microsoft Windows file system.

=head1 ATTRIBUTES


=head2 ActiveDirectoryId => Str

The ID for an existing Amazon Web Services Managed Microsoft Active
Directory instance that the file system is joined to.


=head2 Aliases => ArrayRef[L<Paws::FSX::Alias>]




=head2 AuditLogConfiguration => L<Paws::FSX::WindowsAuditLogConfiguration>

The configuration that Amazon FSx for Windows File Server uses to audit
and log user accesses of files, folders, and file shares on the Amazon
FSx for Windows File Server file system.


=head2 AutomaticBackupRetentionDays => Int

The number of days to retain automatic backups. Setting this to 0
disables automatic backups. You can retain automatic backups for a
maximum of 90 days.


=head2 CopyTagsToBackups => Bool

A boolean flag indicating whether tags on the file system should be
copied to backups. This value defaults to false. If it's set to true,
all tags on the file system are copied to all automatic backups and any
user-initiated backups where the user doesn't specify any tags. If this
value is true, and you specify one or more tags, only the specified
tags are copied to backups. If you specify one or more tags when
creating a user-initiated backup, no tags are copied from the file
system, regardless of this value.


=head2 DailyAutomaticBackupStartTime => Str

The preferred time to take daily automatic backups, in the UTC time
zone.


=head2 DeploymentType => Str

Specifies the file system deployment type, valid values are the
following:

=over

=item *

C<MULTI_AZ_1> - Specifies a high availability file system that is
configured for Multi-AZ redundancy to tolerate temporary Availability
Zone (AZ) unavailability, and supports SSD and HDD storage.

=item *

C<SINGLE_AZ_1> - (Default) Specifies a file system that is configured
for single AZ redundancy, only supports SSD storage.

=item *

C<SINGLE_AZ_2> - Latest generation Single AZ file system. Specifies a
file system that is configured for single AZ redundancy and supports
SSD and HDD storage.

=back

For more information, see Single-AZ and Multi-AZ File Systems
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html).


=head2 DiskIopsConfiguration => L<Paws::FSX::DiskIopsConfiguration>

The SSD IOPS (input/output operations per second) configuration for an
Amazon FSx for Windows file system. By default, Amazon FSx
automatically provisions 3 IOPS per GiB of storage capacity. You can
provision additional IOPS per GiB of storage, up to the maximum limit
associated with your chosen throughput capacity.


=head2 MaintenanceOperationsInProgress => ArrayRef[Str|Undef]

The list of maintenance operations in progress for this file system.


=head2 PreferredFileServerIp => Str

For C<MULTI_AZ_1> deployment types, the IP address of the primary, or
preferred, file server.

Use this IP address when mounting the file system on Linux SMB clients
or Windows SMB clients that are not joined to a Microsoft Active
Directory. Applicable for all Windows file system deployment types.
This IP address is temporarily unavailable when the file system is
undergoing maintenance. For Linux and Windows SMB clients that are
joined to an Active Directory, use the file system's DNSName instead.
For more information on mapping and mounting file shares, see Accessing
File Shares
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/accessing-file-shares.html).


=head2 PreferredSubnetId => Str

For C<MULTI_AZ_1> deployment types, it specifies the ID of the subnet
where the preferred file server is located. Must be one of the two
subnet IDs specified in C<SubnetIds> property. Amazon FSx serves
traffic from this subnet except in the event of a failover to the
secondary file server.

For C<SINGLE_AZ_1> and C<SINGLE_AZ_2> deployment types, this value is
the same as that for C<SubnetIDs>. For more information, see
Availability and durability: Single-AZ and Multi-AZ file systems
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html#single-multi-az-resources).


=head2 RemoteAdministrationEndpoint => Str

For C<MULTI_AZ_1> deployment types, use this endpoint when performing
administrative tasks on the file system using Amazon FSx Remote
PowerShell.

For C<SINGLE_AZ_1> and C<SINGLE_AZ_2> deployment types, this is the DNS
name of the file system.

This endpoint is temporarily unavailable when the file system is
undergoing maintenance.


=head2 SelfManagedActiveDirectoryConfiguration => L<Paws::FSX::SelfManagedActiveDirectoryAttributes>




=head2 ThroughputCapacity => Int

The throughput of the Amazon FSx file system, measured in megabytes per
second.


=head2 WeeklyMaintenanceStartTime => Str

The preferred start time to perform weekly maintenance, formatted
d:HH:MM in the UTC time zone. d is the weekday number, from 1 through
7, beginning with Monday and ending with Sunday.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

