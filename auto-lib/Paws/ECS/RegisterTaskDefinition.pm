
package Paws::ECS::RegisterTaskDefinition;
  use Moose;
  has ContainerDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ContainerDefinition]', traits => ['NameInRequest'], request_name => 'containerDefinitions' , required => 1);
  has Cpu => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cpu' );
  has EnableFaultInjection => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableFaultInjection' );
  has EphemeralStorage => (is => 'ro', isa => 'Paws::ECS::EphemeralStorage', traits => ['NameInRequest'], request_name => 'ephemeralStorage' );
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRoleArn' );
  has Family => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'family' , required => 1);
  has InferenceAccelerators => (is => 'ro', isa => 'ArrayRef[Paws::ECS::InferenceAccelerator]', traits => ['NameInRequest'], request_name => 'inferenceAccelerators' );
  has IpcMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipcMode' );
  has Memory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'memory' );
  has NetworkMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkMode' );
  has PidMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pidMode' );
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::TaskDefinitionPlacementConstraint]', traits => ['NameInRequest'], request_name => 'placementConstraints' );
  has ProxyConfiguration => (is => 'ro', isa => 'Paws::ECS::ProxyConfiguration', traits => ['NameInRequest'], request_name => 'proxyConfiguration' );
  has RequiresCompatibilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'requiresCompatibilities' );
  has RuntimePlatform => (is => 'ro', isa => 'Paws::ECS::RuntimePlatform', traits => ['NameInRequest'], request_name => 'runtimePlatform' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskRoleArn' );
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Volume]', traits => ['NameInRequest'], request_name => 'volumes' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterTaskDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::RegisterTaskDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterTaskDefinition - Arguments for method RegisterTaskDefinition on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterTaskDefinition on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method RegisterTaskDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterTaskDefinition.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To register a task definition
    # This example registers a task definition to the specified family.
    my $RegisterTaskDefinitionResponse = $ecs->RegisterTaskDefinition(
      'ContainerDefinitions' => [

        {
          'Command'   => [ 'sleep', 360 ],
          'Cpu'       => 10,
          'Essential' => 1,
          'Image'     => 'busybox',
          'Memory'    => 10,
          'Name'      => 'sleep'
        }
      ],
      'Family'      => 'sleep360',
      'TaskRoleArn' => '',
      'Volumes'     => [

      ]
    );

    # Results:
    my $taskDefinition = $RegisterTaskDefinitionResponse->taskDefinition;

    # Returns a L<Paws::ECS::RegisterTaskDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/RegisterTaskDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerDefinitions => ArrayRef[L<Paws::ECS::ContainerDefinition>]

A list of container definitions in JSON format that describe the
different containers that make up your task.



=head2 Cpu => Str

The number of CPU units used by the task. It can be expressed as an
integer using CPU units (for example, C<1024>) or as a string using
vCPUs (for example, C<1 vCPU> or C<1 vcpu>) in a task definition.
String values are converted to an integer indicating the CPU units when
the task definition is registered.

Task-level CPU and memory parameters are ignored for Windows
containers. We recommend specifying container-level resources for
Windows containers.

If you're using the EC2 launch type or external launch type, this field
is optional. Supported values are between C<128> CPU units (C<0.125>
vCPUs) and C<196608> CPU units (C<192> vCPUs). If you do not specify a
value, the parameter is ignored.

This field is required for Fargate. For information about the valid
values, see Task size
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 EnableFaultInjection => Bool

Enables fault injection when you register your task definition and
allows for fault injection requests to be accepted from the task's
containers. The default value is C<false>.



=head2 EphemeralStorage => L<Paws::ECS::EphemeralStorage>

The amount of ephemeral storage to allocate for the task. This
parameter is used to expand the total amount of ephemeral storage
available, beyond the default amount, for tasks hosted on Fargate. For
more information, see Using data volumes in tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html)
in the I<Amazon ECS Developer Guide>.

For tasks using the Fargate launch type, the task requires the
following platforms:

=over

=item *

Linux platform version C<1.4.0> or later.

=item *

Windows platform version C<1.0.0> or later.

=back




=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the task execution role that grants
the Amazon ECS container agent permission to make Amazon Web Services
API calls on your behalf. For informationabout the required IAM roles
for Amazon ECS, see IAM roles for Amazon ECS
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security-ecs-iam-role-overview.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 B<REQUIRED> Family => Str

You must specify a C<family> for a task definition. You can use it
track multiple versions of the same task definition. The C<family> is
used as a name for your task definition. Up to 255 letters (uppercase
and lowercase), numbers, underscores, and hyphens are allowed.



=head2 InferenceAccelerators => ArrayRef[L<Paws::ECS::InferenceAccelerator>]

The Elastic Inference accelerators to use for the containers in the
task.



=head2 IpcMode => Str

The IPC resource namespace to use for the containers in the task. The
valid values are C<host>, C<task>, or C<none>. If C<host> is specified,
then all containers within the tasks that specified the C<host> IPC
mode on the same container instance share the same IPC resources with
the host Amazon EC2 instance. If C<task> is specified, all containers
within the specified task share the same IPC resources. If C<none> is
specified, then IPC resources within the containers of a task are
private and not shared with other containers in a task or on the
container instance. If no value is specified, then the IPC resource
namespace sharing depends on the Docker daemon setting on the container
instance.

If the C<host> IPC mode is used, be aware that there is a heightened
risk of undesired IPC namespace expose.

If you are setting namespaced kernel parameters using C<systemControls>
for the containers in the task, the following will apply to your IPC
resource namespace. For more information, see System Controls
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=over

=item *

For tasks that use the C<host> IPC mode, IPC namespace related
C<systemControls> are not supported.

=item *

For tasks that use the C<task> IPC mode, IPC namespace related
C<systemControls> will apply to all containers within a task.

=back

This parameter is not supported for Windows containers or tasks run on
Fargate.

Valid values are: C<"host">, C<"task">, C<"none">

=head2 Memory => Str

The amount of memory (in MiB) used by the task. It can be expressed as
an integer using MiB (for example ,C<1024>) or as a string using GB
(for example, C<1GB> or C<1 GB>) in a task definition. String values
are converted to an integer indicating the MiB when the task definition
is registered.

Task-level CPU and memory parameters are ignored for Windows
containers. We recommend specifying container-level resources for
Windows containers.

If using the EC2 launch type, this field is optional.

If using the Fargate launch type, this field is required and you must
use one of the following values. This determines your range of
supported values for the C<cpu> parameter.

The CPU units cannot be less than 1 vCPU when you use Windows
containers on Fargate.

=over

=item *

512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available C<cpu> values: 256
(.25 vCPU)

=item *

1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available C<cpu>
values: 512 (.5 vCPU)

=item *

2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168
(7 GB), 8192 (8 GB) - Available C<cpu> values: 1024 (1 vCPU)

=item *

Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) -
Available C<cpu> values: 2048 (2 vCPU)

=item *

Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) -
Available C<cpu> values: 4096 (4 vCPU)

=item *

Between 16 GB and 60 GB in 4 GB increments - Available C<cpu> values:
8192 (8 vCPU)

This option requires Linux platform C<1.4.0> or later.

=item *

Between 32GB and 120 GB in 8 GB increments - Available C<cpu> values:
16384 (16 vCPU)

This option requires Linux platform C<1.4.0> or later.

=back




=head2 NetworkMode => Str

The Docker networking mode to use for the containers in the task. The
valid values are C<none>, C<bridge>, C<awsvpc>, and C<host>. If no
network mode is specified, the default is C<bridge>.

For Amazon ECS tasks on Fargate, the C<awsvpc> network mode is
required. For Amazon ECS tasks on Amazon EC2 Linux instances, any
network mode can be used. For Amazon ECS tasks on Amazon EC2 Windows
instances, C<E<lt>defaultE<gt>> or C<awsvpc> can be used. If the
network mode is set to C<none>, you cannot specify port mappings in
your container definitions, and the tasks containers do not have
external connectivity. The C<host> and C<awsvpc> network modes offer
the highest networking performance for containers because they use the
EC2 network stack instead of the virtualized network stack provided by
the C<bridge> mode.

With the C<host> and C<awsvpc> network modes, exposed container ports
are mapped directly to the corresponding host port (for the C<host>
network mode) or the attached elastic network interface port (for the
C<awsvpc> network mode), so you cannot take advantage of dynamic host
port mappings.

When using the C<host> network mode, you should not run containers
using the root user (UID 0). It is considered best practice to use a
non-root user.

If the network mode is C<awsvpc>, the task is allocated an elastic
network interface, and you must specify a NetworkConfiguration
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html)
value when you create a service or run a task with the task definition.
For more information, see Task Networking
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.

If the network mode is C<host>, you cannot run multiple instantiations
of the same task on a single container instance when port mappings are
used.

Valid values are: C<"bridge">, C<"host">, C<"awsvpc">, C<"none">

=head2 PidMode => Str

The process namespace to use for the containers in the task. The valid
values are C<host> or C<task>. On Fargate for Linux containers, the
only valid value is C<task>. For example, monitoring sidecars might
need C<pidMode> to access information about other containers running in
the same task.

If C<host> is specified, all containers within the tasks that specified
the C<host> PID mode on the same container instance share the same
process namespace with the host Amazon EC2 instance.

If C<task> is specified, all containers within the specified task share
the same process namespace.

If no value is specified, the default is a private namespace for each
container.

If the C<host> PID mode is used, there's a heightened risk of undesired
process namespace exposure.

This parameter is not supported for Windows containers.

This parameter is only supported for tasks that are hosted on Fargate
if the tasks are using platform version C<1.4.0> or later (Linux). This
isn't supported for Windows containers on Fargate.

Valid values are: C<"host">, C<"task">

=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::TaskDefinitionPlacementConstraint>]

An array of placement constraint objects to use for the task. You can
specify a maximum of 10 constraints for each task. This limit includes
constraints in the task definition and those specified at runtime.



=head2 ProxyConfiguration => L<Paws::ECS::ProxyConfiguration>

The configuration details for the App Mesh proxy.

For tasks hosted on Amazon EC2 instances, the container instances
require at least version C<1.26.0> of the container agent and at least
version C<1.26.0-1> of the C<ecs-init> package to use a proxy
configuration. If your container instances are launched from the Amazon
ECS-optimized AMI version C<20190301> or later, then they contain the
required versions of the container agent and C<ecs-init>. For more
information, see Amazon ECS-optimized AMI versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-ami-versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 RequiresCompatibilities => ArrayRef[Str|Undef]

The task launch type that Amazon ECS validates the task definition
against. A client exception is returned if the task definition doesn't
validate against the compatibilities specified. If no value is
specified, the parameter is omitted from the response.



=head2 RuntimePlatform => L<Paws::ECS::RuntimePlatform>

The operating system that your tasks definitions run on. A platform
family is specified only for tasks using the Fargate launch type.



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the task definition to help you
categorize and organize them. Each tag consists of a key and an
optional value. You define both of them.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys or values with
this prefix. Tags with this prefix do not count against your tags per
resource limit.

=back




=head2 TaskRoleArn => Str

The short name or full Amazon Resource Name (ARN) of the IAM role that
containers in this task can assume. All containers in this task are
granted the permissions that are specified in this role. For more
information, see IAM Roles for Tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 Volumes => ArrayRef[L<Paws::ECS::Volume>]

A list of volume definitions in JSON format that containers in your
task might use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterTaskDefinition in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

