
package Paws::IAM::SetSecurityTokenServicePreferences;
  use Moose;
  has GlobalEndpointTokenVersion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetSecurityTokenServicePreferences');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::SetSecurityTokenServicePreferences - Arguments for method SetSecurityTokenServicePreferences on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetSecurityTokenServicePreferences on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method SetSecurityTokenServicePreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetSecurityTokenServicePreferences.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
# To delete an access key for an IAM user
# The following command sets the STS global endpoint token to version 2. Version
# 2 tokens are valid in all Regions.
    $iam->SetSecurityTokenServicePreferences(
      'GlobalEndpointTokenVersion' => 'v2Token' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/SetSecurityTokenServicePreferences>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalEndpointTokenVersion => Str

The version of the global endpoint token. Version 1 tokens are valid
only in Amazon Web Services Regions that are available by default.
These tokens do not work in manually enabled Regions, such as Asia
Pacific (Hong Kong). Version 2 tokens are valid in all Regions.
However, version 2 tokens are longer and might affect systems where you
temporarily store tokens.

For information, see Activating and deactivating STS in an Amazon Web
Services Region
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the I<IAM User Guide>.

Valid values are: C<"v1Token">, C<"v2Token">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetSecurityTokenServicePreferences in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

