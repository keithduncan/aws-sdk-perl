
package Paws::MediaPackage::DescribeOriginEndpoint;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOriginEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/origin_endpoints/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::DescribeOriginEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::DescribeOriginEndpoint - Arguments for method DescribeOriginEndpoint on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOriginEndpoint on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method DescribeOriginEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOriginEndpoint.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $DescribeOriginEndpointResponse = $mediapackage->DescribeOriginEndpoint(
      Id => 'My__string',

    );

    # Results:
    my $Arn           = $DescribeOriginEndpointResponse->Arn;
    my $Authorization = $DescribeOriginEndpointResponse->Authorization;
    my $ChannelId     = $DescribeOriginEndpointResponse->ChannelId;
    my $CmafPackage   = $DescribeOriginEndpointResponse->CmafPackage;
    my $CreatedAt     = $DescribeOriginEndpointResponse->CreatedAt;
    my $DashPackage   = $DescribeOriginEndpointResponse->DashPackage;
    my $Description   = $DescribeOriginEndpointResponse->Description;
    my $HlsPackage    = $DescribeOriginEndpointResponse->HlsPackage;
    my $Id            = $DescribeOriginEndpointResponse->Id;
    my $ManifestName  = $DescribeOriginEndpointResponse->ManifestName;
    my $MssPackage    = $DescribeOriginEndpointResponse->MssPackage;
    my $Origination   = $DescribeOriginEndpointResponse->Origination;
    my $StartoverWindowSeconds =
      $DescribeOriginEndpointResponse->StartoverWindowSeconds;
    my $Tags             = $DescribeOriginEndpointResponse->Tags;
    my $TimeDelaySeconds = $DescribeOriginEndpointResponse->TimeDelaySeconds;
    my $Url              = $DescribeOriginEndpointResponse->Url;
    my $Whitelist        = $DescribeOriginEndpointResponse->Whitelist;

    # Returns a L<Paws::MediaPackage::DescribeOriginEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/DescribeOriginEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the OriginEndpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOriginEndpoint in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

