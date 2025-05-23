# Generated by default/object.tt
package Paws::VerifiedPermissions::CognitoUserPoolConfiguration;
  use Moose;
  has ClientIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'clientIds', traits => ['NameInRequest']);
  has GroupConfiguration => (is => 'ro', isa => 'Paws::VerifiedPermissions::CognitoGroupConfiguration', request_name => 'groupConfiguration', traits => ['NameInRequest']);
  has UserPoolArn => (is => 'ro', isa => 'Str', request_name => 'userPoolArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::CognitoUserPoolConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VerifiedPermissions::CognitoUserPoolConfiguration object:

  $service_obj->Method(Att1 => { ClientIds => $value, ..., UserPoolArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VerifiedPermissions::CognitoUserPoolConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientIds

=head1 DESCRIPTION

The configuration for an identity source that represents a connection
to an Amazon Cognito user pool used as an identity provider for
Verified Permissions.

This data type part of a Configuration
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_Configuration.html)
structure that is used as a parameter to CreateIdentitySource
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_CreateIdentitySource.html).

Example:C<"CognitoUserPoolConfiguration":{"UserPoolArn":"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5","ClientIds":
["a1b2c3d4e5f6g7h8i9j0kalbmc"],"groupConfiguration":
{"groupEntityType": "MyCorp::Group"}}>

=head1 ATTRIBUTES


=head2 ClientIds => ArrayRef[Str|Undef]

The unique application client IDs that are associated with the
specified Amazon Cognito user pool.

Example: C<"ClientIds": ["&ExampleCogClientId;"]>


=head2 GroupConfiguration => L<Paws::VerifiedPermissions::CognitoGroupConfiguration>

The type of entity that a policy store maps to groups from an Amazon
Cognito user pool identity source.


=head2 B<REQUIRED> UserPoolArn => Str

The Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the Amazon Cognito user pool that contains the identities to be
authorized.

Example: C<"UserPoolArn":
"arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_1a2b3c4d5">



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

