
package Paws::EC2::CopySnapshot;
  use Moose;
  has CompletionDurationMinutes => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has DestinationOutpostArn => (is => 'ro', isa => 'Str');
  has DestinationRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationRegion' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'encrypted' );
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has PresignedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'presignedUrl' );
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);
  has SourceSnapshotId => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopySnapshot - Arguments for method CopySnapshot on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopySnapshot on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CopySnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopySnapshot.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
 # To copy a snapshot
 # This example copies a snapshot with the snapshot ID of
 # ``snap-066877671789bd71b`` from the ``us-west-2`` region to the ``us-east-1``
 # region and adds a short description to identify the snapshot.
    my $CopySnapshotResult = $ec2->CopySnapshot(
      'Description'       => 'This is my copied snapshot.',
      'DestinationRegion' => 'us-east-1',
      'SourceRegion'      => 'us-west-2',
      'SourceSnapshotId'  => 'snap-066877671789bd71b'
    );

    # Results:
    my $SnapshotId = $CopySnapshotResult->SnapshotId;

    # Returns a L<Paws::EC2::CopySnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CopySnapshot>

=head1 ATTRIBUTES


=head2 CompletionDurationMinutes => Int

Specify a completion duration, in 15 minute increments, to initiate a
time-based snapshot copy. Time-based snapshot copy operations complete
within the specified duration. For more information, see Time-based
copies
(https://docs.aws.amazon.com/ebs/latest/userguide/time-based-copies.html).

If you do not specify a value, the snapshot copy operation is completed
on a best-effort basis.



=head2 Description => Str

A description for the EBS snapshot.



=head2 DestinationOutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost to which to copy the
snapshot. Only specify this parameter when copying a snapshot from an
Amazon Web Services Region to an Outpost. The snapshot must be in the
Region for the destination Outpost. You cannot copy a snapshot from an
Outpost to a Region, from one Outpost to another, or within the same
Outpost.

For more information, see Copy snapshots from an Amazon Web Services
Region to an Outpost
(https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html#copy-snapshots)
in the I<Amazon EBS User Guide>.



=head2 DestinationRegion => Str

The destination Region to use in the C<PresignedUrl> parameter of a
snapshot copy operation. This parameter is only valid for specifying
the destination Region in a C<PresignedUrl> parameter, where it is
required.

The snapshot copy is sent to the regional endpoint that you sent the
HTTP request to (for example, C<ec2.us-east-1.amazonaws.com>). With the
CLI, this is specified using the C<--region> parameter or the default
Region in your Amazon Web Services configuration file.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Encrypted => Bool

To encrypt a copy of an unencrypted snapshot if encryption by default
is not enabled, enable encryption using this parameter. Otherwise, omit
this parameter. Encrypted snapshots are encrypted, even if you omit
this parameter and encryption by default is not enabled. You cannot set
this parameter to false. For more information, see Amazon EBS
encryption
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html)
in the I<Amazon EBS User Guide>.



=head2 KmsKeyId => Str

The identifier of the KMS key to use for Amazon EBS encryption. If this
parameter is not specified, your KMS key for Amazon EBS is used. If
C<KmsKeyId> is specified, the encrypted state must be C<true>.

You can specify the KMS key using any of the following:

=over

=item *

Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.

=item *

Key alias. For example, alias/ExampleAlias.

=item *

Key ARN. For example,
arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.

=item *

Alias ARN. For example,
arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.

=back

Amazon Web Services authenticates the KMS key asynchronously.
Therefore, if you specify an ID, alias, or ARN that is not valid, the
action can appear to complete, but eventually fails.



=head2 PresignedUrl => Str

When you copy an encrypted source snapshot using the Amazon EC2 Query
API, you must supply a pre-signed URL. This parameter is optional for
unencrypted snapshots. For more information, see Query requests
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html).

The C<PresignedUrl> should use the snapshot source endpoint, the
C<CopySnapshot> action, and include the C<SourceRegion>,
C<SourceSnapshotId>, and C<DestinationRegion> parameters. The
C<PresignedUrl> must be signed using Amazon Web Services Signature
Version 4. Because EBS snapshots are stored in Amazon S3, the signing
algorithm for this parameter uses the same logic that is described in
Authenticating Requests: Using Query Parameters (Amazon Web Services
Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
in the I<Amazon S3 API Reference>. An invalid or improperly signed
C<PresignedUrl> will cause the copy operation to fail asynchronously,
and the snapshot will move to an C<error> state.



=head2 B<REQUIRED> SourceRegion => Str

The ID of the Region that contains the snapshot to be copied.



=head2 B<REQUIRED> SourceSnapshotId => Str

The ID of the EBS snapshot to copy.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the new snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopySnapshot in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

