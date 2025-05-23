
package Paws::CodeDeploy::CreateDeploymentGroup;
  use Moose;
  has AlarmConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AlarmConfiguration', traits => ['NameInRequest'], request_name => 'alarmConfiguration' );
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AutoRollbackConfiguration', traits => ['NameInRequest'], request_name => 'autoRollbackConfiguration' );
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'autoScalingGroups' );
  has BlueGreenDeploymentConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::BlueGreenDeploymentConfiguration', traits => ['NameInRequest'], request_name => 'blueGreenDeploymentConfiguration' );
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' );
  has DeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupName' , required => 1);
  has DeploymentStyle => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentStyle', traits => ['NameInRequest'], request_name => 'deploymentStyle' );
  has Ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]', traits => ['NameInRequest'], request_name => 'ec2TagFilters' );
  has Ec2TagSet => (is => 'ro', isa => 'Paws::CodeDeploy::EC2TagSet', traits => ['NameInRequest'], request_name => 'ec2TagSet' );
  has EcsServices => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::ECSService]', traits => ['NameInRequest'], request_name => 'ecsServices' );
  has LoadBalancerInfo => (is => 'ro', isa => 'Paws::CodeDeploy::LoadBalancerInfo', traits => ['NameInRequest'], request_name => 'loadBalancerInfo' );
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TagFilter]', traits => ['NameInRequest'], request_name => 'onPremisesInstanceTagFilters' );
  has OnPremisesTagSet => (is => 'ro', isa => 'Paws::CodeDeploy::OnPremisesTagSet', traits => ['NameInRequest'], request_name => 'onPremisesTagSet' );
  has OutdatedInstancesStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outdatedInstancesStrategy' );
  has ServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TerminationHookEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'terminationHookEnabled' );
  has TriggerConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TriggerConfig]', traits => ['NameInRequest'], request_name => 'triggerConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentGroup - Arguments for method CreateDeploymentGroup on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeploymentGroup on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method CreateDeploymentGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeploymentGroup.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $CreateDeploymentGroupOutput = $codedeploy->CreateDeploymentGroup(
      ApplicationName     => 'MyApplicationName',
      DeploymentGroupName => 'MyDeploymentGroupName',
      ServiceRoleArn      => 'MyRole',
      AlarmConfiguration  => {
        Alarms => [
          {
            Name => 'MyAlarmName',    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Enabled                => 1,    # OPTIONAL
        IgnorePollAlarmFailure => 1,    # OPTIONAL
      },    # OPTIONAL
      AutoRollbackConfiguration => {
        Enabled => 1,    # OPTIONAL
        Events  => [
          'DEPLOYMENT_FAILURE',
          ... # values: DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
        ],    # OPTIONAL
      },    # OPTIONAL
      AutoScalingGroups => [ 'MyAutoScalingGroupName', ... ],    # OPTIONAL
      BlueGreenDeploymentConfiguration => {
        DeploymentReadyOption => {
          ActionOnTimeout => 'CONTINUE_DEPLOYMENT'
          ,    # values: CONTINUE_DEPLOYMENT, STOP_DEPLOYMENT; OPTIONAL
          WaitTimeInMinutes => 1,    # OPTIONAL
        },    # OPTIONAL
        GreenFleetProvisioningOption => {
          Action => 'DISCOVER_EXISTING'
          ,    # values: DISCOVER_EXISTING, COPY_AUTO_SCALING_GROUP; OPTIONAL
        },    # OPTIONAL
        TerminateBlueInstancesOnDeploymentSuccess => {
          Action => 'TERMINATE',    # values: TERMINATE, KEEP_ALIVE; OPTIONAL
          TerminationWaitTimeInMinutes => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DeploymentConfigName => 'MyDeploymentConfigName',    # OPTIONAL
      DeploymentStyle      => {
        DeploymentOption => 'WITH_TRAFFIC_CONTROL'
        ,    # values: WITH_TRAFFIC_CONTROL, WITHOUT_TRAFFIC_CONTROL; OPTIONAL
        DeploymentType => 'IN_PLACE',   # values: IN_PLACE, BLUE_GREEN; OPTIONAL
      },    # OPTIONAL
      Ec2TagFilters => [
        {
          Key  => 'MyKey',    # OPTIONAL
          Type =>
            'KEY_ONLY',  # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
          Value => 'MyValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Ec2TagSet => {
        Ec2TagSetList => [
          [
            {
              Key  => 'MyKey',       # OPTIONAL
              Type => 'KEY_ONLY'
              ,    # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
              Value => 'MyValue',    # OPTIONAL
            },
            ...
          ],
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      EcsServices => [
        {
          ClusterName => 'MyECSClusterName',    # OPTIONAL
          ServiceName => 'MyECSServiceName',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      LoadBalancerInfo => {
        ElbInfoList => [
          {
            Name => 'MyELBName',    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        TargetGroupInfoList => [
          {
            Name => 'MyTargetGroupName',    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        TargetGroupPairInfoList => [
          {
            ProdTrafficRoute => {
              ListenerArns => [ 'MyListenerArn', ... ],    # OPTIONAL
            },    # OPTIONAL
            TargetGroups => [
              {
                Name => 'MyTargetGroupName',    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            TestTrafficRoute => {
              ListenerArns => [ 'MyListenerArn', ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      OnPremisesInstanceTagFilters => [
        {
          Key  => 'MyKey',    # OPTIONAL
          Type =>
            'KEY_ONLY',  # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
          Value => 'MyValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      OnPremisesTagSet => {
        OnPremisesTagSetList => [
          [
            {
              Key  => 'MyKey',       # OPTIONAL
              Type => 'KEY_ONLY'
              ,    # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
              Value => 'MyValue',    # OPTIONAL
            },
            ...
          ],
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      OutdatedInstancesStrategy => 'UPDATE',    # OPTIONAL
      Tags                      => [
        {
          Key   => 'MyKey',      # OPTIONAL
          Value => 'MyValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TerminationHookEnabled => 1,    # OPTIONAL
      TriggerConfigurations  => [
        {
          TriggerEvents => [
            'DeploymentStart',
            ... # values: DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, DeploymentRollback, DeploymentReady, InstanceStart, InstanceSuccess, InstanceFailure, InstanceReady
          ],    # OPTIONAL
          TriggerName      => 'MyTriggerName',         # OPTIONAL
          TriggerTargetArn => 'MyTriggerTargetArn',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DeploymentGroupId = $CreateDeploymentGroupOutput->DeploymentGroupId;

    # Returns a L<Paws::CodeDeploy::CreateDeploymentGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/CreateDeploymentGroup>

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::CodeDeploy::AlarmConfiguration>

Information to add about Amazon CloudWatch alarms when the deployment
group is created.



=head2 B<REQUIRED> ApplicationName => Str

The name of an CodeDeploy application associated with the user or
Amazon Web Services account.



=head2 AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>

Configuration information for an automatic rollback that is added when
a deployment group is created.



=head2 AutoScalingGroups => ArrayRef[Str|Undef]

A list of associated Amazon EC2 Auto Scaling groups.



=head2 BlueGreenDeploymentConfiguration => L<Paws::CodeDeploy::BlueGreenDeploymentConfiguration>

Information about blue/green deployment options for a deployment group.



=head2 DeploymentConfigName => Str

If specified, the deployment configuration name can be either one of
the predefined configurations provided with CodeDeploy or a custom
deployment configuration that you create by calling the create
deployment configuration operation.

C<CodeDeployDefault.OneAtATime> is the default deployment
configuration. It is used if a configuration isn't specified for the
deployment or deployment group.

For more information about the predefined deployment configurations in
CodeDeploy, see Working with Deployment Configurations in CodeDeploy
(https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html)
in the I<CodeDeploy User Guide>.



=head2 B<REQUIRED> DeploymentGroupName => Str

The name of a new deployment group for the specified application.



=head2 DeploymentStyle => L<Paws::CodeDeploy::DeploymentStyle>

Information about the type of deployment, in-place or blue/green, that
you want to run and whether to route deployment traffic behind a load
balancer.



=head2 Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]

The Amazon EC2 tags on which to filter. The deployment group includes
Amazon EC2 instances with any of the specified tags. Cannot be used in
the same call as ec2TagSet.



=head2 Ec2TagSet => L<Paws::CodeDeploy::EC2TagSet>

Information about groups of tags applied to Amazon EC2 instances. The
deployment group includes only Amazon EC2 instances identified by all
the tag groups. Cannot be used in the same call as C<ec2TagFilters>.



=head2 EcsServices => ArrayRef[L<Paws::CodeDeploy::ECSService>]

The target Amazon ECS services in the deployment group. This applies
only to deployment groups that use the Amazon ECS compute platform. A
target Amazon ECS service is specified as an Amazon ECS cluster and
service name pair using the format
C<E<lt>clusternameE<gt>:E<lt>servicenameE<gt>>.



=head2 LoadBalancerInfo => L<Paws::CodeDeploy::LoadBalancerInfo>

Information about the load balancer used in a deployment.



=head2 OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]

The on-premises instance tags on which to filter. The deployment group
includes on-premises instances with any of the specified tags. Cannot
be used in the same call as C<OnPremisesTagSet>.



=head2 OnPremisesTagSet => L<Paws::CodeDeploy::OnPremisesTagSet>

Information about groups of tags applied to on-premises instances. The
deployment group includes only on-premises instances identified by all
of the tag groups. Cannot be used in the same call as
C<onPremisesInstanceTagFilters>.



=head2 OutdatedInstancesStrategy => Str

Indicates what happens when new Amazon EC2 instances are launched
mid-deployment and do not receive the deployed application revision.

If this option is set to C<UPDATE> or is unspecified, CodeDeploy
initiates one or more 'auto-update outdated instances' deployments to
apply the deployed application revision to the new Amazon EC2
instances.

If this option is set to C<IGNORE>, CodeDeploy does not initiate a
deployment to update the new Amazon EC2 instances. This may result in
instances having different revisions.

Valid values are: C<"UPDATE">, C<"IGNORE">

=head2 B<REQUIRED> ServiceRoleArn => Str

A service role Amazon Resource Name (ARN) that allows CodeDeploy to act
on the user's behalf when interacting with Amazon Web Services
services.



=head2 Tags => ArrayRef[L<Paws::CodeDeploy::Tag>]

The metadata that you apply to CodeDeploy deployment groups to help you
organize and categorize them. Each tag consists of a key and an
optional value, both of which you define.



=head2 TerminationHookEnabled => Bool

This parameter only applies if you are using CodeDeploy with Amazon EC2
Auto Scaling. For more information, see Integrating CodeDeploy with
Amazon EC2 Auto Scaling
(https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html)
in the I<CodeDeploy User Guide>.

Set C<terminationHookEnabled> to C<true> to have CodeDeploy install a
termination hook into your Auto Scaling group when you create a
deployment group. When this hook is installed, CodeDeploy will perform
termination deployments.

For information about termination deployments, see Enabling termination
deployments during Auto Scaling scale-in events
(https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-auto-scaling.html#integrations-aws-auto-scaling-behaviors-hook-enable)
in the I<CodeDeploy User Guide>.

For more information about Auto Scaling scale-in events, see the Scale
in
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-lifecycle.html#as-lifecycle-scale-in)
topic in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 TriggerConfigurations => ArrayRef[L<Paws::CodeDeploy::TriggerConfig>]

Information about triggers to create when the deployment group is
created. For examples, see Create a Trigger for an CodeDeploy Event
(https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html)
in the I<CodeDeploy User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeploymentGroup in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

