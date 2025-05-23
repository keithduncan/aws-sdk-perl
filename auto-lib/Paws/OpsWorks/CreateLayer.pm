
package Paws::OpsWorks::CreateLayer;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Bool');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Bool');
  has CloudWatchLogsConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::CloudWatchLogsConfiguration');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Paws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableAutoHealing => (is => 'ro', isa => 'Bool');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has LifecycleEventConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::LifecycleEventConfiguration');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Packages => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Shortname => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has UseEbsOptimizedInstances => (is => 'ro', isa => 'Bool');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::VolumeConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLayer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::CreateLayerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateLayer - Arguments for method CreateLayer on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLayer on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method CreateLayer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLayer.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $CreateLayerResult = $opsworks->CreateLayer(
      Name       => 'MyString',
      Shortname  => 'MyString',
      StackId    => 'MyString',
      Type       => 'aws-flow-ruby',
      Attributes => {
        'EcsClusterArn' => 'MyString'
        , # key: values: EcsClusterArn, EnableHaproxyStats, HaproxyStatsUrl, HaproxyStatsUser, HaproxyStatsPassword, HaproxyHealthCheckUrl, HaproxyHealthCheckMethod, MysqlRootPassword, MysqlRootPasswordUbiquitous, GangliaUrl, GangliaUser, GangliaPassword, MemcachedMemory, NodejsVersion, RubyVersion, RubygemsVersion, ManageBundler, BundlerVersion, RailsStack, PassengerVersion, Jvm, JvmVersion, JvmOptions, JavaAppServer, JavaAppServerVersion
      },    # OPTIONAL
      AutoAssignElasticIps        => 1,    # OPTIONAL
      AutoAssignPublicIps         => 1,    # OPTIONAL
      CloudWatchLogsConfiguration => {
        Enabled    => 1,
        LogStreams => [
          {
            BatchCount     => 1,            # OPTIONAL
            BatchSize      => 1,            # OPTIONAL
            BufferDuration => 1,            # OPTIONAL
            DatetimeFormat => 'MyString',
            Encoding       => 'ascii'
            , # values: ascii, big5, big5hkscs, cp037, cp424, cp437, cp500, cp720, cp737, cp775, cp850, cp852, cp855, cp856, cp857, cp858, cp860, cp861, cp862, cp863, cp864, cp865, cp866, cp869, cp874, cp875, cp932, cp949, cp950, cp1006, cp1026, cp1140, cp1250, cp1251, cp1252, cp1253, cp1254, cp1255, cp1256, cp1257, cp1258, euc_jp, euc_jis_2004, euc_jisx0213, euc_kr, gb2312, gbk, gb18030, hz, iso2022_jp, iso2022_jp_1, iso2022_jp_2, iso2022_jp_2004, iso2022_jp_3, iso2022_jp_ext, iso2022_kr, latin_1, iso8859_2, iso8859_3, iso8859_4, iso8859_5, iso8859_6, iso8859_7, iso8859_8, iso8859_9, iso8859_10, iso8859_13, iso8859_14, iso8859_15, iso8859_16, johab, koi8_r, koi8_u, mac_cyrillic, mac_greek, mac_iceland, mac_latin2, mac_roman, mac_turkish, ptcp154, shift_jis, shift_jis_2004, shift_jisx0213, utf_32, utf_32_be, utf_32_le, utf_16, utf_16_be, utf_16_le, utf_7, utf_8, utf_8_sig; OPTIONAL
            File                 => 'MyString',
            FileFingerprintLines => 'MyString',
            InitialPosition      =>
              'start_of_file',    # values: start_of_file, end_of_file; OPTIONAL
            LogGroupName          => 'MyString',
            MultiLineStartPattern => 'MyString',
            TimeZone              => 'LOCAL',     # values: LOCAL, UTC; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      CustomInstanceProfileArn => 'MyString',    # OPTIONAL
      CustomJson               => 'MyString',    # OPTIONAL
      CustomRecipes            => {
        Configure => [ 'MyString', ... ],        # OPTIONAL
        Deploy    => [ 'MyString', ... ],        # OPTIONAL
        Setup     => [ 'MyString', ... ],        # OPTIONAL
        Shutdown  => [ 'MyString', ... ],        # OPTIONAL
        Undeploy  => [ 'MyString', ... ],        # OPTIONAL
      },    # OPTIONAL
      CustomSecurityGroupIds      => [ 'MyString', ... ],    # OPTIONAL
      EnableAutoHealing           => 1,                      # OPTIONAL
      InstallUpdatesOnBoot        => 1,                      # OPTIONAL
      LifecycleEventConfiguration => {
        Shutdown => {
          DelayUntilElbConnectionsDrained => 1,
          ExecutionTimeout                => 1,              # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Packages                 => [ 'MyString', ... ],    # OPTIONAL
      UseEbsOptimizedInstances => 1,                      # OPTIONAL
      VolumeConfigurations     => [
        {
          MountPoint    => 'MyString',
          NumberOfDisks => 1,            # OPTIONAL
          Size          => 1,            # OPTIONAL
          Encrypted     => 1,
          Iops          => 1,            # OPTIONAL
          RaidLevel     => 1,            # OPTIONAL
          VolumeType    => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LayerId = $CreateLayerResult->LayerId;

    # Returns a L<Paws::OpsWorks::CreateLayerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/CreateLayer>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::OpsWorks::LayerAttributes>

One or more user-defined key-value pairs to be added to the stack
attributes.

To create a cluster layer, set the C<EcsClusterArn> attribute to the
cluster's ARN.



=head2 AutoAssignElasticIps => Bool

Whether to automatically assign an Elastic IP address
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
to the layer's instances. For more information, see How to Edit a Layer
(https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).



=head2 AutoAssignPublicIps => Bool

For stacks that are running in a VPC, whether to automatically assign a
public IP address to the layer's instances. For more information, see
How to Edit a Layer
(https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html).



=head2 CloudWatchLogsConfiguration => L<Paws::OpsWorks::CloudWatchLogsConfiguration>

Specifies CloudWatch Logs configuration options for the layer. For more
information, see CloudWatchLogsLogStream.



=head2 CustomInstanceProfileArn => Str

The ARN of an IAM profile to be used for the layer's EC2 instances. For
more information about IAM ARNs, see Using Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).



=head2 CustomJson => Str

A JSON-formatted string containing custom stack configuration and
deployment attributes to be installed on the layer's instances. For
more information, see Using Custom JSON
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html).
This feature is supported as of version 1.7.42 of the CLI.



=head2 CustomRecipes => L<Paws::OpsWorks::Recipes>

A C<LayerCustomRecipes> object that specifies the layer custom recipes.



=head2 CustomSecurityGroupIds => ArrayRef[Str|Undef]

An array containing the layer custom security group IDs.



=head2 EnableAutoHealing => Bool

Whether to disable auto healing for the layer.



=head2 InstallUpdatesOnBoot => Bool

Whether to install operating system and package updates when the
instance boots. The default value is C<true>. To control when updates
are installed, set this value to C<false>. You must then update your
instances manually by using CreateDeployment to run the
C<update_dependencies> stack command or by manually running C<yum>
(Amazon Linux) or C<apt-get> (Ubuntu) on the instances.

To ensure that your instances have the latest security updates, we
strongly recommend using the default value of C<true>.



=head2 LifecycleEventConfiguration => L<Paws::OpsWorks::LifecycleEventConfiguration>

A C<LifeCycleEventConfiguration> object that you can use to configure
the Shutdown event to specify an execution timeout and enable or
disable Elastic Load Balancer connection draining.



=head2 B<REQUIRED> Name => Str

The layer name, which is used by the console. Layer names can be a
maximum of 32 characters.



=head2 Packages => ArrayRef[Str|Undef]

An array of C<Package> objects that describes the layer packages.



=head2 B<REQUIRED> Shortname => Str

For custom layers only, use this parameter to specify the layer's short
name, which is used internally by OpsWorks Stacks and by Chef recipes.
The short name is also used as the name for the directory where your
app files are installed. It can have a maximum of 32 characters, which
are limited to the alphanumeric characters, '-', '_', and '.'.

Built-in layer short names are defined by OpsWorks Stacks. For more
information, see the Layer Reference
(https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html).



=head2 B<REQUIRED> StackId => Str

The layer stack ID.



=head2 B<REQUIRED> Type => Str

The layer type. A stack cannot have more than one built-in layer of the
same type. It can have any number of custom layers. Built-in layers are
not available in Chef 12 stacks.

Valid values are: C<"aws-flow-ruby">, C<"ecs-cluster">, C<"java-app">, C<"lb">, C<"web">, C<"php-app">, C<"rails-app">, C<"nodejs-app">, C<"memcached">, C<"db-master">, C<"monitoring-master">, C<"custom">

=head2 UseEbsOptimizedInstances => Bool

Whether to use Amazon EBS-optimized instances.



=head2 VolumeConfigurations => ArrayRef[L<Paws::OpsWorks::VolumeConfiguration>]

A C<VolumeConfigurations> object that describes the layer's Amazon EBS
volumes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLayer in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

