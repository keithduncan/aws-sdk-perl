# Generated by default/object.tt
package Paws::SecurityHub::AwsBackupBackupPlanDetails;
  use Moose;
  has BackupPlan => (is => 'ro', isa => 'Paws::SecurityHub::AwsBackupBackupPlanBackupPlanDetails');
  has BackupPlanArn => (is => 'ro', isa => 'Str');
  has BackupPlanId => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsBackupBackupPlanDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsBackupBackupPlanDetails object:

  $service_obj->Method(Att1 => { BackupPlan => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsBackupBackupPlanDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupPlan

=head1 DESCRIPTION

Provides details about an Backup backup plan and an array of
C<BackupRule> objects, each of which specifies a backup rule.

=head1 ATTRIBUTES


=head2 BackupPlan => L<Paws::SecurityHub::AwsBackupBackupPlanBackupPlanDetails>

Uniquely identifies the backup plan to be associated with the selection
of resources.


=head2 BackupPlanArn => Str

An Amazon Resource Name (ARN) that uniquely identifies the backup plan.


=head2 BackupPlanId => Str

A unique ID for the backup plan.


=head2 VersionId => Str

Unique, randomly generated, Unicode, UTF-8 encoded strings. Version IDs
cannot be edited.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

