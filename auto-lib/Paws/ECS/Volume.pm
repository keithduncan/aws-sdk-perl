# Generated by default/object.tt
package Paws::ECS::Volume;
  use Moose;
  has ConfiguredAtLaunch => (is => 'ro', isa => 'Bool', request_name => 'configuredAtLaunch', traits => ['NameInRequest']);
  has DockerVolumeConfiguration => (is => 'ro', isa => 'Paws::ECS::DockerVolumeConfiguration', request_name => 'dockerVolumeConfiguration', traits => ['NameInRequest']);
  has EfsVolumeConfiguration => (is => 'ro', isa => 'Paws::ECS::EFSVolumeConfiguration', request_name => 'efsVolumeConfiguration', traits => ['NameInRequest']);
  has FsxWindowsFileServerVolumeConfiguration => (is => 'ro', isa => 'Paws::ECS::FSxWindowsFileServerVolumeConfiguration', request_name => 'fsxWindowsFileServerVolumeConfiguration', traits => ['NameInRequest']);
  has Host => (is => 'ro', isa => 'Paws::ECS::HostVolumeProperties', request_name => 'host', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Volume

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Volume object:

  $service_obj->Method(Att1 => { ConfiguredAtLaunch => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Volume object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfiguredAtLaunch

=head1 DESCRIPTION

The data volume configuration for tasks launched using this task
definition. Specifying a volume configuration in a task definition is
optional. The volume configuration may contain multiple volumes but
only one volume configured at launch is supported. Each volume defined
in the volume configuration may only specify a C<name> and one of
either C<configuredAtLaunch>, C<dockerVolumeConfiguration>,
C<efsVolumeConfiguration>, C<fsxWindowsFileServerVolumeConfiguration>,
or C<host>. If an empty volume configuration is specified, by default
Amazon ECS uses a host volume. For more information, see Using data
volumes in tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html).

=head1 ATTRIBUTES


=head2 ConfiguredAtLaunch => Bool

Indicates whether the volume should be configured at launch time. This
is used to create Amazon EBS volumes for standalone tasks or tasks
created as part of a service. Each task definition revision may only
have one volume configured at launch in the volume configuration.

To configure a volume at launch time, use this task definition revision
and specify a C<volumeConfigurations> object when calling the
C<CreateService>, C<UpdateService>, C<RunTask> or C<StartTask> APIs.


=head2 DockerVolumeConfiguration => L<Paws::ECS::DockerVolumeConfiguration>

This parameter is specified when you use Docker volumes.

Windows containers only support the use of the C<local> driver. To use
bind mounts, specify the C<host> parameter instead.

Docker volumes aren't supported by tasks run on Fargate.


=head2 EfsVolumeConfiguration => L<Paws::ECS::EFSVolumeConfiguration>

This parameter is specified when you use an Amazon Elastic File System
file system for task storage.


=head2 FsxWindowsFileServerVolumeConfiguration => L<Paws::ECS::FSxWindowsFileServerVolumeConfiguration>

This parameter is specified when you use Amazon FSx for Windows File
Server file system for task storage.


=head2 Host => L<Paws::ECS::HostVolumeProperties>

This parameter is specified when you use bind mount host volumes. The
contents of the C<host> parameter determine whether your bind mount
host volume persists on the host container instance and where it's
stored. If the C<host> parameter is empty, then the Docker daemon
assigns a host path for your data volume. However, the data isn't
guaranteed to persist after the containers that are associated with it
stop running.

Windows containers can mount whole directories on the same drive as
C<$env:ProgramData>. Windows containers can't mount directories on a
different drive, and mount point can't be across drives. For example,
you can mount C<C:\my\path:C:\my\path> and C<D:\:D:\>, but not
C<D:\my\path:C:\my\path> or C<D:\:C:\my\path>.


=head2 Name => Str

The name of the volume. Up to 255 letters (uppercase and lowercase),
numbers, underscores, and hyphens are allowed.

When using a volume configured at launch, the C<name> is required and
must also be specified as the volume name in the
C<ServiceVolumeConfiguration> or C<TaskVolumeConfiguration> parameter
when creating your service or standalone task.

For all other types of volumes, this name is referenced in the
C<sourceVolume> parameter of the C<mountPoints> object in the container
definition.

When a volume is using the C<efsVolumeConfiguration>, the name is
required.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

