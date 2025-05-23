# Generated by default/object.tt
package Paws::Resiliencehub::PhysicalResource;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Paws::Resiliencehub::AdditionalInfoMap', request_name => 'additionalInfo', traits => ['NameInRequest']);
  has AppComponents => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::AppComponent]', request_name => 'appComponents', traits => ['NameInRequest']);
  has Excluded => (is => 'ro', isa => 'Bool', request_name => 'excluded', traits => ['NameInRequest']);
  has LogicalResourceId => (is => 'ro', isa => 'Paws::Resiliencehub::LogicalResourceId', request_name => 'logicalResourceId', traits => ['NameInRequest'], required => 1);
  has ParentResourceName => (is => 'ro', isa => 'Str', request_name => 'parentResourceName', traits => ['NameInRequest']);
  has PhysicalResourceId => (is => 'ro', isa => 'Paws::Resiliencehub::PhysicalResourceId', request_name => 'physicalResourceId', traits => ['NameInRequest'], required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', request_name => 'resourceName', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest'], required => 1);
  has SourceType => (is => 'ro', isa => 'Str', request_name => 'sourceType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::PhysicalResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Resiliencehub::PhysicalResource object:

  $service_obj->Method(Att1 => { AdditionalInfo => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Resiliencehub::PhysicalResource object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalInfo

=head1 DESCRIPTION

Defines a physical resource. A physical resource is a resource that
exists in your account. It can be identified using an Amazon Resource
Name (ARN) or an Resilience Hub-native identifier.

=head1 ATTRIBUTES


=head2 AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>

Additional configuration parameters for an Resilience Hub application.
If you want to implement C<additionalInfo> through the Resilience Hub
console rather than using an API call, see Configure the application
configuration parameters
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html).

Currently, this parameter accepts a key-value mapping (in a string
format) of only one failover region and one associated account.

Key: C<"failover-regions">

Value: C<"[{"region":"E<lt>REGIONE<gt>",
"accounts":[{"id":"E<lt>ACCOUNT_IDE<gt>"}]}]">


=head2 AppComponents => ArrayRef[L<Paws::Resiliencehub::AppComponent>]

The application components that belong to this resource.


=head2 Excluded => Bool

Indicates if a resource is included or excluded from the assessment.


=head2 B<REQUIRED> LogicalResourceId => L<Paws::Resiliencehub::LogicalResourceId>

Logical identifier of the resource.


=head2 ParentResourceName => Str

Name of the parent resource.


=head2 B<REQUIRED> PhysicalResourceId => L<Paws::Resiliencehub::PhysicalResourceId>

Identifier of the physical resource.


=head2 ResourceName => Str

The name of the resource.


=head2 B<REQUIRED> ResourceType => Str

Type of resource.


=head2 SourceType => Str

Type of input source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

