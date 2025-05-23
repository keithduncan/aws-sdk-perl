# Generated by default/object.tt
package Paws::WorkSpacesThinClient::Device;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has CurrentSoftwareSetId => (is => 'ro', isa => 'Str', request_name => 'currentSoftwareSetId', traits => ['NameInRequest']);
  has CurrentSoftwareSetVersion => (is => 'ro', isa => 'Str', request_name => 'currentSoftwareSetVersion', traits => ['NameInRequest']);
  has DesiredSoftwareSetId => (is => 'ro', isa => 'Str', request_name => 'desiredSoftwareSetId', traits => ['NameInRequest']);
  has EnvironmentId => (is => 'ro', isa => 'Str', request_name => 'environmentId', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has KmsKeyArn => (is => 'ro', isa => 'Str', request_name => 'kmsKeyArn', traits => ['NameInRequest']);
  has LastConnectedAt => (is => 'ro', isa => 'Str', request_name => 'lastConnectedAt', traits => ['NameInRequest']);
  has LastPostureAt => (is => 'ro', isa => 'Str', request_name => 'lastPostureAt', traits => ['NameInRequest']);
  has Model => (is => 'ro', isa => 'Str', request_name => 'model', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has PendingSoftwareSetId => (is => 'ro', isa => 'Str', request_name => 'pendingSoftwareSetId', traits => ['NameInRequest']);
  has PendingSoftwareSetVersion => (is => 'ro', isa => 'Str', request_name => 'pendingSoftwareSetVersion', traits => ['NameInRequest']);
  has SerialNumber => (is => 'ro', isa => 'Str', request_name => 'serialNumber', traits => ['NameInRequest']);
  has SoftwareSetComplianceStatus => (is => 'ro', isa => 'Str', request_name => 'softwareSetComplianceStatus', traits => ['NameInRequest']);
  has SoftwareSetUpdateSchedule => (is => 'ro', isa => 'Str', request_name => 'softwareSetUpdateSchedule', traits => ['NameInRequest']);
  has SoftwareSetUpdateStatus => (is => 'ro', isa => 'Str', request_name => 'softwareSetUpdateStatus', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::TagsMap', request_name => 'tags', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::Device

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpacesThinClient::Device object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpacesThinClient::Device object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a thin client device.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the device.


=head2 CreatedAt => Str

The timestamp of when the device was created.


=head2 CurrentSoftwareSetId => Str

The ID of the software set currently installed on the device.


=head2 CurrentSoftwareSetVersion => Str

The version of the software set currently installed on the device.


=head2 DesiredSoftwareSetId => Str

The ID of the software set which the device has been set to.


=head2 EnvironmentId => Str

The ID of the environment the device is associated with.


=head2 Id => Str

The ID of the device.


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the Key Management Service key used
to encrypt the device.


=head2 LastConnectedAt => Str

The timestamp of the most recent session on the device.


=head2 LastPostureAt => Str

The timestamp of the most recent check-in of the device.


=head2 Model => Str

The model number of the device.


=head2 Name => Str

The name of the device.


=head2 PendingSoftwareSetId => Str

The ID of the software set that is pending to be installed on the
device.


=head2 PendingSoftwareSetVersion => Str

The version of the software set that is pending to be installed on the
device.


=head2 SerialNumber => Str

The hardware serial number of the device.


=head2 SoftwareSetComplianceStatus => Str

Describes if the software currently installed on the device is a
supported version.


=head2 SoftwareSetUpdateSchedule => Str

An option to define if software updates should be applied within a
maintenance window.


=head2 SoftwareSetUpdateStatus => Str

Describes if the device has a supported version of software installed.


=head2 Status => Str

The status of the device.


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

