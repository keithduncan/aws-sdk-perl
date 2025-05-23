
package Paws::IAM::GetOpenIDConnectProvider;
  use Moose;
  has OpenIDConnectProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOpenIDConnectProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetOpenIDConnectProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetOpenIDConnectProviderResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetOpenIDConnectProvider - Arguments for method GetOpenIDConnectProvider on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOpenIDConnectProvider on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetOpenIDConnectProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOpenIDConnectProvider.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GetOpenIDConnectProviderResponse = $iam->GetOpenIDConnectProvider(
      OpenIDConnectProviderArn => 'MyarnType',

    );

    # Results:
    my $ClientIDList   = $GetOpenIDConnectProviderResponse->ClientIDList;
    my $CreateDate     = $GetOpenIDConnectProviderResponse->CreateDate;
    my $Tags           = $GetOpenIDConnectProviderResponse->Tags;
    my $ThumbprintList = $GetOpenIDConnectProviderResponse->ThumbprintList;
    my $Url            = $GetOpenIDConnectProviderResponse->Url;

    # Returns a L<Paws::IAM::GetOpenIDConnectProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetOpenIDConnectProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OpenIDConnectProviderArn => Str

The Amazon Resource Name (ARN) of the OIDC provider resource object in
IAM to get information for. You can get a list of OIDC provider
resource ARNs by using the ListOpenIDConnectProviders operation.

For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOpenIDConnectProvider in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

