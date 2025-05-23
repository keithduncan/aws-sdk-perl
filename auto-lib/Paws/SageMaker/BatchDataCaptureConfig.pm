# Generated by default/object.tt
package Paws::SageMaker::BatchDataCaptureConfig;
  use Moose;
  has DestinationS3Uri => (is => 'ro', isa => 'Str', required => 1);
  has GenerateInferenceId => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::BatchDataCaptureConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::BatchDataCaptureConfig object:

  $service_obj->Method(Att1 => { DestinationS3Uri => $value, ..., KmsKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::BatchDataCaptureConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationS3Uri

=head1 DESCRIPTION

Configuration to control how SageMaker captures inference data for
batch transform jobs.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationS3Uri => Str

The Amazon S3 location being used to capture the data.


=head2 GenerateInferenceId => Bool

Flag that indicates whether to append inference id to the output.


=head2 KmsKeyId => Str

The Amazon Resource Name (ARN) of a Amazon Web Services Key Management
Service key that SageMaker uses to encrypt data on the storage volume
attached to the ML compute instance that hosts the batch transform job.

The KmsKeyId can be any of the following formats:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias name ARN:
C<arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

