# Generated by default/object.tt
package Paws::WorkSpacesThinClient::Environment;
  use Moose;
  has ActivationCode => (is => 'ro', isa => 'Str', request_name => 'activationCode', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DesiredSoftwareSetId => (is => 'ro', isa => 'Str', request_name => 'desiredSoftwareSetId', traits => ['NameInRequest']);
  has DesktopArn => (is => 'ro', isa => 'Str', request_name => 'desktopArn', traits => ['NameInRequest']);
  has DesktopEndpoint => (is => 'ro', isa => 'Str', request_name => 'desktopEndpoint', traits => ['NameInRequest']);
  has DesktopType => (is => 'ro', isa => 'Str', request_name => 'desktopType', traits => ['NameInRequest']);
  has DeviceCreationTags => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::DeviceCreationTagsMap', request_name => 'deviceCreationTags', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has KmsKeyArn => (is => 'ro', isa => 'Str', request_name => 'kmsKeyArn', traits => ['NameInRequest']);
  has MaintenanceWindow => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::MaintenanceWindow', request_name => 'maintenanceWindow', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has PendingSoftwareSetId => (is => 'ro', isa => 'Str', request_name => 'pendingSoftwareSetId', traits => ['NameInRequest']);
  has PendingSoftwareSetVersion => (is => 'ro', isa => 'Str', request_name => 'pendingSoftwareSetVersion', traits => ['NameInRequest']);
  has RegisteredDevicesCount => (is => 'ro', isa => 'Int', request_name => 'registeredDevicesCount', traits => ['NameInRequest']);
  has SoftwareSetComplianceStatus => (is => 'ro', isa => 'Str', request_name => 'softwareSetComplianceStatus', traits => ['NameInRequest']);
  has SoftwareSetUpdateMode => (is => 'ro', isa => 'Str', request_name => 'softwareSetUpdateMode', traits => ['NameInRequest']);
  has SoftwareSetUpdateSchedule => (is => 'ro', isa => 'Str', request_name => 'softwareSetUpdateSchedule', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::TagsMap', request_name => 'tags', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::Environment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpacesThinClient::Environment object:

  $service_obj->Method(Att1 => { ActivationCode => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpacesThinClient::Environment object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivationCode

=head1 DESCRIPTION

Describes an environment.

=head1 ATTRIBUTES


=head2 ActivationCode => Str

The activation code to register a device to the environment.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the environment.


=head2 CreatedAt => Str

The timestamp of when the environment was created.


=head2 DesiredSoftwareSetId => Str

The ID of the software set to apply.


=head2 DesktopArn => Str

The Amazon Resource Name (ARN) of the desktop to stream from Amazon
WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.


=head2 DesktopEndpoint => Str

The URL for the identity provider login (only for environments that use
AppStream 2.0).


=head2 DesktopType => Str

The type of streaming desktop for the environment.


=head2 DeviceCreationTags => L<Paws::WorkSpacesThinClient::DeviceCreationTagsMap>

The tag keys and optional values for the newly created devices for this
environment.


=head2 Id => Str

The ID of the environment.


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the Key Management Service key used
to encrypt the environment.


=head2 MaintenanceWindow => L<Paws::WorkSpacesThinClient::MaintenanceWindow>

A specification for a time window to apply software updates.


=head2 Name => Str

The name of the environment.


=head2 PendingSoftwareSetId => Str

The ID of the software set that is pending to be installed.


=head2 PendingSoftwareSetVersion => Str

The version of the software set that is pending to be installed.


=head2 RegisteredDevicesCount => Int

The number of devices registered to the environment.


=head2 SoftwareSetComplianceStatus => Str

Describes if the software currently installed on all devices in the
environment is a supported version.


=head2 SoftwareSetUpdateMode => Str

An option to define which software updates to apply.


=head2 SoftwareSetUpdateSchedule => Str

An option to define if software updates should be applied within a
maintenance window.


=head2 Tags => L<Paws::WorkSpacesThinClient::TagsMap>

The tag keys and optional values for the resource.


=head2 UpdatedAt => Str

The timestamp of when the device was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpacesThinClient>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

