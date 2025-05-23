# Generated by default/object.tt
package Paws::ResourceExplorer2::SupportedResourceType;
  use Moose;
  has ResourceType => (is => 'ro', isa => 'Str');
  has Service => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::SupportedResourceType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceExplorer2::SupportedResourceType object:

  $service_obj->Method(Att1 => { ResourceType => $value, ..., Service => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceExplorer2::SupportedResourceType object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceType

=head1 DESCRIPTION

A structure that describes a resource type supported by Amazon Web
Services Resource Explorer.

=head1 ATTRIBUTES


=head2 ResourceType => Str

The unique identifier of the resource type.


=head2 Service => Str

The Amazon Web Services service that is associated with the resource
type. This is the primary service that lets you create and interact
with resources of this type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

