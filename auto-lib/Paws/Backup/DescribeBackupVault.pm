
package Paws::Backup::DescribeBackupVault;
  use Moose;
  has BackupVaultAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'backupVaultAccountId');
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBackupVault');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::DescribeBackupVaultOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeBackupVault - Arguments for method DescribeBackupVault on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBackupVault on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DescribeBackupVault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBackupVault.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $DescribeBackupVaultOutput = $backup->DescribeBackupVault(
      BackupVaultName      => 'Mystring',
      BackupVaultAccountId => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $BackupVaultArn   = $DescribeBackupVaultOutput->BackupVaultArn;
    my $BackupVaultName  = $DescribeBackupVaultOutput->BackupVaultName;
    my $CreationDate     = $DescribeBackupVaultOutput->CreationDate;
    my $CreatorRequestId = $DescribeBackupVaultOutput->CreatorRequestId;
    my $EncryptionKeyArn = $DescribeBackupVaultOutput->EncryptionKeyArn;
    my $LockDate         = $DescribeBackupVaultOutput->LockDate;
    my $Locked           = $DescribeBackupVaultOutput->Locked;
    my $MaxRetentionDays = $DescribeBackupVaultOutput->MaxRetentionDays;
    my $MinRetentionDays = $DescribeBackupVaultOutput->MinRetentionDays;
    my $NumberOfRecoveryPoints =
      $DescribeBackupVaultOutput->NumberOfRecoveryPoints;
    my $VaultState = $DescribeBackupVaultOutput->VaultState;
    my $VaultType  = $DescribeBackupVaultOutput->VaultType;

    # Returns a L<Paws::Backup::DescribeBackupVaultOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DescribeBackupVault>

=head1 ATTRIBUTES


=head2 BackupVaultAccountId => Str

The account ID of the specified backup vault.



=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Amazon Web Services Region where they are created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBackupVault in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

