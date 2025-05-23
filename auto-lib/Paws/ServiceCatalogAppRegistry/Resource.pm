# Generated by default/object.tt
package Paws::ServiceCatalogAppRegistry::Resource;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has AssociationTime => (is => 'ro', isa => 'Str', request_name => 'associationTime', traits => ['NameInRequest']);
  has Integrations => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::ResourceIntegrations', request_name => 'integrations', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalogAppRegistry::Resource object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalogAppRegistry::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The information about the resource.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon resource name (ARN) of the resource.


=head2 AssociationTime => Str

The time the resource was associated with the application.


=head2 Integrations => L<Paws::ServiceCatalogAppRegistry::ResourceIntegrations>

The service integration information about the resource.


=head2 Name => Str

The name of the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

