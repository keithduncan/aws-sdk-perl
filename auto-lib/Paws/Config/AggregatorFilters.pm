# Generated by default/object.tt
package Paws::Config::AggregatorFilters;
  use Moose;
  has ResourceType => (is => 'ro', isa => 'Paws::Config::AggregatorFilterResourceType');
  has ServicePrincipal => (is => 'ro', isa => 'Paws::Config::AggregatorFilterServicePrincipal');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AggregatorFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AggregatorFilters object:

  $service_obj->Method(Att1 => { ResourceType => $value, ..., ServicePrincipal => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AggregatorFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceType

=head1 DESCRIPTION

An object to filter the data you specify for an aggregator.

=head1 ATTRIBUTES


=head2 ResourceType => L<Paws::Config::AggregatorFilterResourceType>

An object to filter the configuration recorders based on the resource
types in scope for recording.


=head2 ServicePrincipal => L<Paws::Config::AggregatorFilterServicePrincipal>

An object to filter service-linked configuration recorders in an
aggregator based on the linked Amazon Web Services service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

