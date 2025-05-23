
package Paws::S3Control::PutBucketVersioning;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);
  has MFA => (is => 'ro', isa => 'Str', header_name => 'x-amz-mfa', traits => ['ParamInHeader']);
  has VersioningConfiguration => (is => 'ro', isa => 'Paws::S3Control::VersioningConfiguration', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketVersioning');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/bucket/{name}/versioning');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutBucketVersioning - Arguments for method PutBucketVersioning on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketVersioning on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutBucketVersioning.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketVersioning.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->PutBucketVersioning(
      AccountId               => 'MyAccountId',
      Bucket                  => 'MyBucketName',
      VersioningConfiguration => {
        MFADelete => 'Enabled',    # values: Enabled, Disabled; OPTIONAL
        Status    => 'Enabled',    # values: Enabled, Suspended; OPTIONAL
      },
      MFA => 'MyMFA',              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutBucketVersioning>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the S3 on Outposts bucket.



=head2 B<REQUIRED> Bucket => Str

The S3 on Outposts bucket to set the versioning state for.



=head2 MFA => Str

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.



=head2 B<REQUIRED> VersioningConfiguration => L<Paws::S3Control::VersioningConfiguration>

The root-level tag for the C<VersioningConfiguration> parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketVersioning in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

