
package Paws::ApiGateway::UpdateDomainName;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domain_name', required => 1);
  has DomainNameId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domainNameId');
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainnames/{domain_name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DomainName');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateDomainName - Arguments for method UpdateDomainName on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainName on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainName.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DomainName = $apigateway->UpdateDomainName(
      DomainName      => 'MyString',
      DomainNameId    => 'MyString',    # OPTIONAL
      PatchOperations => [
        {
          From => 'MyString',
          Op   =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          Path  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CertificateArn           = $DomainName->CertificateArn;
    my $CertificateName          = $DomainName->CertificateName;
    my $CertificateUploadDate    = $DomainName->CertificateUploadDate;
    my $DistributionDomainName   = $DomainName->DistributionDomainName;
    my $DistributionHostedZoneId = $DomainName->DistributionHostedZoneId;
    my $DomainName               = $DomainName->DomainName;
    my $DomainNameArn            = $DomainName->DomainNameArn;
    my $DomainNameId             = $DomainName->DomainNameId;
    my $DomainNameStatus         = $DomainName->DomainNameStatus;
    my $DomainNameStatusMessage  = $DomainName->DomainNameStatusMessage;
    my $EndpointConfiguration    = $DomainName->EndpointConfiguration;
    my $ManagementPolicy         = $DomainName->ManagementPolicy;
    my $MutualTlsAuthentication  = $DomainName->MutualTlsAuthentication;
    my $OwnershipVerificationCertificateArn =
      $DomainName->OwnershipVerificationCertificateArn;
    my $Policy                  = $DomainName->Policy;
    my $RegionalCertificateArn  = $DomainName->RegionalCertificateArn;
    my $RegionalCertificateName = $DomainName->RegionalCertificateName;
    my $RegionalDomainName      = $DomainName->RegionalDomainName;
    my $RegionalHostedZoneId    = $DomainName->RegionalHostedZoneId;
    my $SecurityPolicy          = $DomainName->SecurityPolicy;
    my $Tags                    = $DomainName->Tags;

    # Returns a L<Paws::ApiGateway::DomainName> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateDomainName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the DomainName resource to be changed.



=head2 DomainNameId => Str

The identifier for the domain name resource. Supported only for private
custom domain names.



=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

For more information about supported patch operations, see Patch
Operations
(https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainName in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

