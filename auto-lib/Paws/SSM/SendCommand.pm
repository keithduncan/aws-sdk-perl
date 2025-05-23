
package Paws::SSM::SendCommand;
  use Moose;
  has AlarmConfiguration => (is => 'ro', isa => 'Paws::SSM::AlarmConfiguration');
  has CloudWatchOutputConfig => (is => 'ro', isa => 'Paws::SSM::CloudWatchOutputConfig');
  has Comment => (is => 'ro', isa => 'Str');
  has DocumentHash => (is => 'ro', isa => 'Str');
  has DocumentHashType => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has NotificationConfig => (is => 'ro', isa => 'Paws::SSM::NotificationConfig');
  has OutputS3BucketName => (is => 'ro', isa => 'Str');
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has OutputS3Region => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has TimeoutSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendCommand');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::SendCommandResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::SendCommand - Arguments for method SendCommand on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendCommand on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method SendCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendCommand.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $SendCommandResult = $ssm->SendCommand(
      DocumentName       => 'MyDocumentARN',
      AlarmConfiguration => {
        Alarms => [
          {
            Name => 'MyAlarmName',    # min: 1, max: 255

          },
          ...
        ],    # min: 1, max: 1
        IgnorePollAlarmFailure => 1,    # OPTIONAL
      },    # OPTIONAL
      CloudWatchOutputConfig => {
        CloudWatchLogGroupName =>
          'MyCloudWatchLogGroupName',    # min: 1, max: 512; OPTIONAL
        CloudWatchOutputEnabled => 1,    # OPTIONAL
      },    # OPTIONAL
      Comment            => 'MyComment',                # OPTIONAL
      DocumentHash       => 'MyDocumentHash',           # OPTIONAL
      DocumentHashType   => 'Sha256',                   # OPTIONAL
      DocumentVersion    => 'MyDocumentVersion',        # OPTIONAL
      InstanceIds        => [ 'MyInstanceId', ... ],    # OPTIONAL
      MaxConcurrency     => 'MyMaxConcurrency',         # OPTIONAL
      MaxErrors          => 'MyMaxErrors',              # OPTIONAL
      NotificationConfig => {
        NotificationArn    => 'MyNotificationArn',      # OPTIONAL
        NotificationEvents => [
          'All',
          ...    # values: All, InProgress, Success, TimedOut, Cancelled, Failed
        ],    # OPTIONAL
        NotificationType => 'Command',   # values: Command, Invocation; OPTIONAL
      },    # OPTIONAL
      OutputS3BucketName => 'MyS3BucketName',    # OPTIONAL
      OutputS3KeyPrefix  => 'MyS3KeyPrefix',     # OPTIONAL
      OutputS3Region     => 'MyS3Region',        # OPTIONAL
      Parameters => { 'MyParameterName' => [ 'MyParameterValue', ... ], }
      ,                                          # OPTIONAL
      ServiceRoleArn => 'MyServiceRole',         # OPTIONAL
      Targets        => [
        {
          Key    => 'MyTargetKey',               # min: 1, max: 163; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TimeoutSeconds => 1,    # OPTIONAL
    );

    # Results:
    my $Command = $SendCommandResult->Command;

    # Returns a L<Paws::SSM::SendCommandResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/SendCommand>

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::SSM::AlarmConfiguration>

The CloudWatch alarm you want to apply to your command.



=head2 CloudWatchOutputConfig => L<Paws::SSM::CloudWatchOutputConfig>

Enables Amazon Web Services Systems Manager to send Run Command output
to Amazon CloudWatch Logs. Run Command is a tool in Amazon Web Services
Systems Manager.



=head2 Comment => Str

User-specified information about the command, such as a brief
description of what the command should do.



=head2 DocumentHash => Str

The Sha256 or Sha1 hash created by the system when the document was
created.

Sha1 hashes have been deprecated.



=head2 DocumentHashType => Str

Sha256 or Sha1.

Sha1 hashes have been deprecated.

Valid values are: C<"Sha256">, C<"Sha1">

=head2 B<REQUIRED> DocumentName => Str

The name of the Amazon Web Services Systems Manager document (SSM
document) to run. This can be a public document or a custom document.
To run a shared document belonging to another account, specify the
document Amazon Resource Name (ARN). For more information about how to
use shared documents, see Sharing SSM documents
(https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html)
in the I<Amazon Web Services Systems Manager User Guide>.

If you specify a document name or ARN that hasn't been shared with your
account, you receive an C<InvalidDocument> error.



=head2 DocumentVersion => Str

The SSM document version to use in the request. You can specify
$DEFAULT, $LATEST, or a specific version number. If you run commands by
using the Command Line Interface (Amazon Web Services CLI), then you
must escape the first two options by using a backslash. If you specify
a version number, then you don't need to use the backslash. For
example:

--document-version "\$DEFAULT"

--document-version "\$LATEST"

--document-version "3"



=head2 InstanceIds => ArrayRef[Str|Undef]

The IDs of the managed nodes where the command should run. Specifying
managed node IDs is most useful when you are targeting a limited number
of managed nodes, though you can specify up to 50 IDs.

To target a larger number of managed nodes, or if you prefer not to
list individual node IDs, we recommend using the C<Targets> option
instead. Using C<Targets>, which accepts tag key-value pairs to
identify the managed nodes to send commands to, you can a send command
to tens, hundreds, or thousands of nodes at once.

For more information about how to use targets, see Run commands at
scale
(https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html)
in the I<Amazon Web Services Systems Manager User Guide>.



=head2 MaxConcurrency => Str

(Optional) The maximum number of managed nodes that are allowed to run
the command at the same time. You can specify a number such as 10 or a
percentage such as 10%. The default value is C<50>. For more
information about how to use C<MaxConcurrency>, see Using concurrency
controls
(https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity)
in the I<Amazon Web Services Systems Manager User Guide>.



=head2 MaxErrors => Str

The maximum number of errors allowed without the command failing. When
the command fails one more time beyond the value of C<MaxErrors>, the
systems stops sending the command to additional targets. You can
specify a number like 10 or a percentage like 10%. The default value is
C<0>. For more information about how to use C<MaxErrors>, see Using
error controls
(https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors)
in the I<Amazon Web Services Systems Manager User Guide>.



=head2 NotificationConfig => L<Paws::SSM::NotificationConfig>

Configurations for sending notifications.



=head2 OutputS3BucketName => Str

The name of the S3 bucket where command execution responses should be
stored.



=head2 OutputS3KeyPrefix => Str

The directory structure within the S3 bucket where the responses should
be stored.



=head2 OutputS3Region => Str

(Deprecated) You can no longer specify this parameter. The system
ignores it. Instead, Systems Manager automatically determines the
Amazon Web Services Region of the S3 bucket.



=head2 Parameters => L<Paws::SSM::Parameters>

The required and optional parameters specified in the document being
run.



=head2 ServiceRoleArn => Str

The ARN of the Identity and Access Management (IAM) service role to use
to publish Amazon Simple Notification Service (Amazon SNS)
notifications for Run Command commands.

This role must provide the C<sns:Publish> permission for your
notification topic. For information about creating and using this
service role, see Monitoring Systems Manager status changes using
Amazon SNS notifications
(https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html)
in the I<Amazon Web Services Systems Manager User Guide>.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

An array of search criteria that targets managed nodes using a
C<Key,Value> combination that you specify. Specifying targets is most
useful when you want to send a command to a large number of managed
nodes at once. Using C<Targets>, which accepts tag key-value pairs to
identify managed nodes, you can send a command to tens, hundreds, or
thousands of nodes at once.

To send a command to a smaller number of managed nodes, you can use the
C<InstanceIds> option instead.

For more information about how to use targets, see Run commands at
scale
(https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html)
in the I<Amazon Web Services Systems Manager User Guide>.



=head2 TimeoutSeconds => Int

If this time is reached and the command hasn't already started running,
it won't run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendCommand in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

