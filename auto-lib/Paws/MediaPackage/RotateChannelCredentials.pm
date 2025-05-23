
package Paws::MediaPackage::RotateChannelCredentials;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RotateChannelCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{id}/credentials');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::RotateChannelCredentialsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::RotateChannelCredentials - Arguments for method RotateChannelCredentials on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RotateChannelCredentials on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method RotateChannelCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RotateChannelCredentials.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $RotateChannelCredentialsResponse =
      $mediapackage->RotateChannelCredentials(
      Id => 'My__string',

      );

    # Results:
    my $Arn              = $RotateChannelCredentialsResponse->Arn;
    my $CreatedAt        = $RotateChannelCredentialsResponse->CreatedAt;
    my $Description      = $RotateChannelCredentialsResponse->Description;
    my $EgressAccessLogs = $RotateChannelCredentialsResponse->EgressAccessLogs;
    my $HlsIngest        = $RotateChannelCredentialsResponse->HlsIngest;
    my $Id               = $RotateChannelCredentialsResponse->Id;
    my $IngressAccessLogs =
      $RotateChannelCredentialsResponse->IngressAccessLogs;
    my $Tags = $RotateChannelCredentialsResponse->Tags;

    # Returns a L<Paws::MediaPackage::RotateChannelCredentialsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/RotateChannelCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the channel to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RotateChannelCredentials in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

