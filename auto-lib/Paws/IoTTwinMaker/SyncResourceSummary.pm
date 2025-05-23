# Generated by default/object.tt
package Paws::IoTTwinMaker::SyncResourceSummary;
  use Moose;
  has ExternalId => (is => 'ro', isa => 'Str', request_name => 'externalId', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::IoTTwinMaker::SyncResourceStatus', request_name => 'status', traits => ['NameInRequest']);
  has UpdateDateTime => (is => 'ro', isa => 'Str', request_name => 'updateDateTime', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::SyncResourceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTTwinMaker::SyncResourceSummary object:

  $service_obj->Method(Att1 => { ExternalId => $value, ..., UpdateDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTTwinMaker::SyncResourceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ExternalId

=head1 DESCRIPTION

The sync resource summary.

=head1 ATTRIBUTES


=head2 ExternalId => Str

The external ID.


=head2 ResourceId => Str

The resource ID.


=head2 ResourceType => Str

The resource type.


=head2 Status => L<Paws::IoTTwinMaker::SyncResourceStatus>

The sync resource summary status.


=head2 UpdateDateTime => Str

The update date and time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

