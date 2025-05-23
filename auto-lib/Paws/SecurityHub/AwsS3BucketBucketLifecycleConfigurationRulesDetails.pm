# Generated by default/object.tt
package Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesDetails;
  use Moose;
  has AbortIncompleteMultipartUpload => (is => 'ro', isa => 'Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has ExpirationInDays => (is => 'ro', isa => 'Int');
  has ExpiredObjectDeleteMarker => (is => 'ro', isa => 'Bool');
  has Filter => (is => 'ro', isa => 'Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails');
  has ID => (is => 'ro', isa => 'Str');
  has NoncurrentVersionExpirationInDays => (is => 'ro', isa => 'Int');
  has NoncurrentVersionTransitions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails]');
  has Prefix => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Transitions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesDetails object:

  $service_obj->Method(Att1 => { AbortIncompleteMultipartUpload => $value, ..., Transitions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AbortIncompleteMultipartUpload

=head1 DESCRIPTION

Configuration for a lifecycle rule.

=head1 ATTRIBUTES


=head2 AbortIncompleteMultipartUpload => L<Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails>

How Amazon S3 responds when a multipart upload is incomplete.
Specifically, provides a number of days before Amazon S3 cancels the
entire upload.


=head2 ExpirationDate => Str

The date when objects are moved or deleted.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 ExpirationInDays => Int

The length in days of the lifetime for objects that are subject to the
rule.


=head2 ExpiredObjectDeleteMarker => Bool

Whether Amazon S3 removes a delete marker that has no noncurrent
versions. If set to C<true>, the delete marker is expired. If set to
C<false>, the policy takes no action.

If you provide C<ExpiredObjectDeleteMarker>, you cannot provide
C<ExpirationInDays> or C<ExpirationDate>.


=head2 Filter => L<Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails>

Identifies the objects that a rule applies to.


=head2 ID => Str

The unique identifier of the rule.


=head2 NoncurrentVersionExpirationInDays => Int

The number of days that an object is noncurrent before Amazon S3 can
perform the associated action.


=head2 NoncurrentVersionTransitions => ArrayRef[L<Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails>]

Transition rules that describe when noncurrent objects transition to a
specified storage class.


=head2 Prefix => Str

A prefix that identifies one or more objects that the rule applies to.


=head2 Status => Str

The current status of the rule. Indicates whether the rule is currently
being applied.


=head2 Transitions => ArrayRef[L<Paws::SecurityHub::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails>]

Transition rules that indicate when objects transition to a specified
storage class.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

