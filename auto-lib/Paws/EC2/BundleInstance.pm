
package Paws::EC2::BundleInstance;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Storage => (is => 'ro', isa => 'Paws::EC2::Storage', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BundleInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::BundleInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::BundleInstance - Arguments for method BundleInstance on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BundleInstance on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method BundleInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BundleInstance.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $BundleInstanceResult = $ec2->BundleInstance(
      InstanceId => 'MyInstanceId',
      Storage    => {
        S3 => {
          AWSAccessKeyId        => 'MyString',     # OPTIONAL
          Bucket                => 'MyString',     # OPTIONAL
          Prefix                => 'MyString',     # OPTIONAL
          UploadPolicy          => 'BlobBlob',     # OPTIONAL
          UploadPolicySignature =>
            'MyS3StorageUploadPolicySignature',    # OPTIONAL
        },    # OPTIONAL
      },
      DryRun => 1,    # OPTIONAL
    );

    # Results:
    my $BundleTask = $BundleInstanceResult->BundleTask;

    # Returns a L<Paws::EC2::BundleInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/BundleInstance>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance to bundle.

Default: None



=head2 B<REQUIRED> Storage => L<Paws::EC2::Storage>

The bucket in which to store the AMI. You can specify a bucket that you
already own or a new bucket that Amazon EC2 creates on your behalf. If
you specify a bucket that belongs to someone else, Amazon EC2 returns
an error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BundleInstance in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

