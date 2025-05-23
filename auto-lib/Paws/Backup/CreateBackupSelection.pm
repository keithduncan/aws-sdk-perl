
package Paws::Backup::CreateBackupSelection;
  use Moose;
  has BackupPlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupPlanId', required => 1);
  has BackupSelection => (is => 'ro', isa => 'Paws::Backup::BackupSelection', required => 1);
  has CreatorRequestId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBackupSelection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup/plans/{backupPlanId}/selections/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::CreateBackupSelectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateBackupSelection - Arguments for method CreateBackupSelection on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackupSelection on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method CreateBackupSelection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackupSelection.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $CreateBackupSelectionOutput = $backup->CreateBackupSelection(
      BackupPlanId    => 'Mystring',
      BackupSelection => {
        IamRoleArn    => 'MyIAMRoleArn',
        SelectionName => 'MyBackupSelectionName',
        Conditions    => {
          StringEquals => [
            {
              ConditionKey   => 'MyConditionKey',      # OPTIONAL
              ConditionValue => 'MyConditionValue',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          StringLike => [
            {
              ConditionKey   => 'MyConditionKey',      # OPTIONAL
              ConditionValue => 'MyConditionValue',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          StringNotEquals => [
            {
              ConditionKey   => 'MyConditionKey',      # OPTIONAL
              ConditionValue => 'MyConditionValue',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          StringNotLike => [
            {
              ConditionKey   => 'MyConditionKey',      # OPTIONAL
              ConditionValue => 'MyConditionValue',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        ListOfTags => [
          {
            ConditionKey   => 'MyConditionKey',      # OPTIONAL
            ConditionType  => 'STRINGEQUALS',        # values: STRINGEQUALS
            ConditionValue => 'MyConditionValue',    # OPTIONAL

          },
          ...
        ],    # OPTIONAL
        NotResources => [ 'MyARN', ... ],    # OPTIONAL
        Resources    => [ 'MyARN', ... ],    # OPTIONAL
      },
      CreatorRequestId => 'Mystring',        # OPTIONAL
    );

    # Results:
    my $BackupPlanId = $CreateBackupSelectionOutput->BackupPlanId;
    my $CreationDate = $CreateBackupSelectionOutput->CreationDate;
    my $SelectionId  = $CreateBackupSelectionOutput->SelectionId;

    # Returns a L<Paws::Backup::CreateBackupSelectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/CreateBackupSelection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupPlanId => Str

The ID of the backup plan.



=head2 B<REQUIRED> BackupSelection => L<Paws::Backup::BackupSelection>

The body of a request to assign a set of resources to a backup plan.



=head2 CreatorRequestId => Str

A unique string that identifies the request and allows failed requests
to be retried without the risk of running the operation twice. This
parameter is optional.

If used, this parameter must contain 1 to 50 alphanumeric or '-_.'
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackupSelection in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

