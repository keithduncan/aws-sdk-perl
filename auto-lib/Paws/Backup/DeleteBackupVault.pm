
package Paws::Backup::DeleteBackupVault;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBackupVault');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DeleteBackupVault - Arguments for method DeleteBackupVault on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBackupVault on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DeleteBackupVault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBackupVault.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    $backup->DeleteBackupVault(
      BackupVaultName => 'Mystring',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DeleteBackupVault>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Amazon Web Services Region where they are created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBackupVault in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

