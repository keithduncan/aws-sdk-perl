# Generated by default/object.tt
package Paws::Backup::CopyAction;
  use Moose;
  has DestinationBackupVaultArn => (is => 'ro', isa => 'Str', required => 1);
  has Lifecycle => (is => 'ro', isa => 'Paws::Backup::Lifecycle');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CopyAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::CopyAction object:

  $service_obj->Method(Att1 => { DestinationBackupVaultArn => $value, ..., Lifecycle => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::CopyAction object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationBackupVaultArn

=head1 DESCRIPTION

The details of the copy operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationBackupVaultArn => Str

An Amazon Resource Name (ARN) that uniquely identifies the destination
backup vault for the copied backup. For example,
C<arn:aws:backup:us-east-1:123456789012:backup-vault:aBackupVault>.


=head2 Lifecycle => L<Paws::Backup::Lifecycle>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

