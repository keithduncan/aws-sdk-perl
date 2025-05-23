# Generated by default/object.tt
package Paws::DevOpsGuru::RecommendationRelatedEventResource;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::RecommendationRelatedEventResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DevOpsGuru::RecommendationRelatedEventResource object:

  $service_obj->Method(Att1 => { Name => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DevOpsGuru::RecommendationRelatedEventResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about an Amazon Web Services resource that emitted and
event that is related to a recommendation in an insight.

=head1 ATTRIBUTES


=head2 Name => Str

The name of the resource that emitted the event. This corresponds to
the C<Name> field in an C<EventResource> object.


=head2 Type => Str

The type of the resource that emitted the event. This corresponds to
the C<Type> field in an C<EventResource> object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

