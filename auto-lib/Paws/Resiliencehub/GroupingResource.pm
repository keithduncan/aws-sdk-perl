# Generated by default/object.tt
package Paws::Resiliencehub::GroupingResource;
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Paws::Resiliencehub::LogicalResourceId', request_name => 'logicalResourceId', traits => ['NameInRequest'], required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Paws::Resiliencehub::PhysicalResourceId', request_name => 'physicalResourceId', traits => ['NameInRequest'], required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', request_name => 'resourceName', traits => ['NameInRequest'], required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest'], required => 1);
  has SourceAppComponentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'sourceAppComponentIds', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::GroupingResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Resiliencehub::GroupingResource object:

  $service_obj->Method(Att1 => { LogicalResourceId => $value, ..., SourceAppComponentIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Resiliencehub::GroupingResource object:

  $result = $service_obj->Method(...);
  $result->Att1->LogicalResourceId

=head1 DESCRIPTION

Indicates the resource that will be grouped in the recommended
Application Component (AppComponent).

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogicalResourceId => L<Paws::Resiliencehub::LogicalResourceId>

Indicates the logical identifier of the resource.


=head2 B<REQUIRED> PhysicalResourceId => L<Paws::Resiliencehub::PhysicalResourceId>

Indicates the physical identifier of the resource.


=head2 B<REQUIRED> ResourceName => Str

Indicates the resource name.


=head2 B<REQUIRED> ResourceType => Str

Indicates the resource type.


=head2 B<REQUIRED> SourceAppComponentIds => ArrayRef[Str|Undef]

Indicates the identifier of the source AppComponents in which the
resources were previously grouped into.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

