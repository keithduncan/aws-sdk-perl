# Generated by default/object.tt
package Paws::VerifiedPermissions::EntitiesDefinition;
  use Moose;
  has CedarJson => (is => 'ro', isa => 'Str', request_name => 'cedarJson', traits => ['NameInRequest']);
  has EntityList => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::EntityItem]', request_name => 'entityList', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::EntitiesDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VerifiedPermissions::EntitiesDefinition object:

  $service_obj->Method(Att1 => { CedarJson => $value, ..., EntityList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VerifiedPermissions::EntitiesDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->CedarJson

=head1 DESCRIPTION

Contains the list of entities to be considered during an authorization
request. This includes all principals, resources, and actions required
to successfully evaluate the request.

This data type is used as a field in the response parameter for the
IsAuthorized
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorized.html)
and IsAuthorizedWithToken
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html)
operations.

=head1 ATTRIBUTES


=head2 CedarJson => Str

A Cedar JSON string representation of the entities needed to
successfully evaluate an authorization request.

Example: C<{"cedarJson":
"[{\"uid\":{\"type\":\"Photo\",\"id\":\"VacationPhoto94.jpg\"},\"attrs\":{\"accessLevel\":\"public\"},\"parents\":[]}]"}>


=head2 EntityList => ArrayRef[L<Paws::VerifiedPermissions::EntityItem>]

An array of entities that are needed to successfully evaluate an
authorization request. Each entity in this array must include an
identifier for the entity, the attributes of the entity, and a list of
any parent entities.

If you include multiple entities with the same C<identifier>, only the
last one is processed in the request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

