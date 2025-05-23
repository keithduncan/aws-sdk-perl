
package Paws::WorkSpacesWeb::CreatePortal;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::WorkSpacesWeb::EncryptionContextMap', traits => ['NameInRequest'], request_name => 'additionalEncryptionContext');
  has AuthenticationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationType');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CustomerManagedKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerManagedKey');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType');
  has MaxConcurrentSessions => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxConcurrentSessions');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePortal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::CreatePortalResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreatePortal - Arguments for method CreatePortal on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePortal on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method CreatePortal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePortal.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $CreatePortalResponse = $workspaces -web->CreatePortal(
      AdditionalEncryptionContext => {
        'MyStringType' => 'MyStringType', # key: max: 131072, value: max: 131072
      },    # OPTIONAL
      AuthenticationType    => 'Standard',            # OPTIONAL
      ClientToken           => 'MyClientToken',       # OPTIONAL
      CustomerManagedKey    => 'MykeyArn',            # OPTIONAL
      DisplayName           => 'MyDisplayName',       # OPTIONAL
      InstanceType          => 'standard.regular',    # OPTIONAL
      MaxConcurrentSessions => 1,                     # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $PortalArn      = $CreatePortalResponse->PortalArn;
    my $PortalEndpoint = $CreatePortalResponse->PortalEndpoint;

    # Returns a L<Paws::WorkSpacesWeb::CreatePortalResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/CreatePortal>

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::WorkSpacesWeb::EncryptionContextMap>

The additional encryption context of the portal.



=head2 AuthenticationType => Str

The type of authentication integration points used when signing into
the web portal. Defaults to C<Standard>.

C<Standard> web portals are authenticated directly through your
identity provider. You need to call C<CreateIdentityProvider> to
integrate your identity provider with your web portal. User and group
access to your web portal is controlled through your identity provider.

C<IAM Identity Center> web portals are authenticated through IAM
Identity Center. Identity sources (including external identity provider
integration), plus user and group access to your web portal, can be
configured in the IAM Identity Center.

Valid values are: C<"Standard">, C<"IAM_Identity_Center">

=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully, subsequent retries with the same client
token returns the result from the original successful request.

If you do not specify a client token, one is automatically generated by
the Amazon Web Services SDK.



=head2 CustomerManagedKey => Str

The customer managed key of the web portal.



=head2 DisplayName => Str

The name of the web portal. This is not visible to users who log into
the web portal.



=head2 InstanceType => Str

The type and resources of the underlying instance.

Valid values are: C<"standard.regular">, C<"standard.large">, C<"standard.xlarge">

=head2 MaxConcurrentSessions => Int

The maximum number of concurrent sessions for the portal.



=head2 Tags => ArrayRef[L<Paws::WorkSpacesWeb::Tag>]

The tags to add to the web portal. A tag is a key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePortal in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

