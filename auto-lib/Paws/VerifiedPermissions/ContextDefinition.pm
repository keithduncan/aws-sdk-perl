# Generated by default/object.tt
package Paws::VerifiedPermissions::ContextDefinition;
  use Moose;
  has CedarJson => (is => 'ro', isa => 'Str', request_name => 'cedarJson', traits => ['NameInRequest']);
  has ContextMap => (is => 'ro', isa => 'Paws::VerifiedPermissions::ContextMap', request_name => 'contextMap', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::ContextDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VerifiedPermissions::ContextDefinition object:

  $service_obj->Method(Att1 => { CedarJson => $value, ..., ContextMap => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VerifiedPermissions::ContextDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->CedarJson

=head1 DESCRIPTION

Contains additional details about the context of the request. Verified
Permissions evaluates this information in an authorization request as
part of the C<when> and C<unless> clauses in a policy.

This data type is used as a request parameter for the IsAuthorized
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html),
BatchIsAuthorized
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorized.html),
and IsAuthorizedWithToken
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html)
operations.

If you're passing context as part of the request, exactly one instance
of C<context> must be passed. If you don't want to pass context, omit
the C<context> parameter from your request rather than sending
C<context {}>.

Example:
C<"context":{"contextMap":{"E<lt>KeyName1E<gt>":{"boolean":true},"E<lt>KeyName2E<gt>":{"long":1234}}}>

=head1 ATTRIBUTES


=head2 CedarJson => Str

A Cedar JSON string representation of the context needed to
successfully evaluate an authorization request.

Example: C<{"cedarJson":"{\"E<lt>KeyName1E<gt>\": true,
\"E<lt>KeyName2E<gt>\": 1234}" }>


=head2 ContextMap => L<Paws::VerifiedPermissions::ContextMap>

An list of attributes that are needed to successfully evaluate an
authorization request. Each attribute in this array must include a map
of a data type and its value.

Example:
C<"contextMap":{"E<lt>KeyName1E<gt>":{"boolean":true},"E<lt>KeyName2E<gt>":{"long":1234}}>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

