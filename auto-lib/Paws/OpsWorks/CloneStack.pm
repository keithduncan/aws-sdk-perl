
package Paws::OpsWorks::CloneStack;
  use Moose;
  has AgentVersion => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'Paws::OpsWorks::StackAttributes');
  has ChefConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::ChefConfiguration');
  has CloneAppIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClonePermissions => (is => 'ro', isa => 'Bool');
  has ConfigurationManager => (is => 'ro', isa => 'Paws::OpsWorks::StackConfigurationManager');
  has CustomCookbooksSource => (is => 'ro', isa => 'Paws::OpsWorks::Source');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DefaultAvailabilityZone => (is => 'ro', isa => 'Str');
  has DefaultInstanceProfileArn => (is => 'ro', isa => 'Str');
  has DefaultOs => (is => 'ro', isa => 'Str');
  has DefaultRootDeviceType => (is => 'ro', isa => 'Str');
  has DefaultSshKeyName => (is => 'ro', isa => 'Str');
  has DefaultSubnetId => (is => 'ro', isa => 'Str');
  has HostnameTheme => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has ServiceRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceStackId => (is => 'ro', isa => 'Str', required => 1);
  has UseCustomCookbooks => (is => 'ro', isa => 'Bool');
  has UseOpsworksSecurityGroups => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CloneStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::CloneStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CloneStack - Arguments for method CloneStack on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CloneStack on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method CloneStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CloneStack.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $CloneStackResult = $opsworks->CloneStack(
      ServiceRoleArn => 'MyString',
      SourceStackId  => 'MyString',
      AgentVersion   => 'MyString',    # OPTIONAL
      Attributes     => {
        'Color' => 'MyString',         # key: values: Color
      },    # OPTIONAL
      ChefConfiguration => {
        BerkshelfVersion => 'MyString',
        ManageBerkshelf  => 1,            # OPTIONAL
      },    # OPTIONAL
      CloneAppIds          => [ 'MyString', ... ],    # OPTIONAL
      ClonePermissions     => 1,                      # OPTIONAL
      ConfigurationManager => {
        Name    => 'MyString',
        Version => 'MyString',
      },                                              # OPTIONAL
      CustomCookbooksSource => {
        Password => 'MyString',
        Revision => 'MyString',
        SshKey   => 'MyString',
        Type     => 'git',        # values: git, svn, archive, s3; OPTIONAL
        Url      => 'MyString',
        Username => 'MyString',
      },    # OPTIONAL
      CustomJson                => 'MyString',    # OPTIONAL
      DefaultAvailabilityZone   => 'MyString',    # OPTIONAL
      DefaultInstanceProfileArn => 'MyString',    # OPTIONAL
      DefaultOs                 => 'MyString',    # OPTIONAL
      DefaultRootDeviceType     => 'ebs',         # OPTIONAL
      DefaultSshKeyName         => 'MyString',    # OPTIONAL
      DefaultSubnetId           => 'MyString',    # OPTIONAL
      HostnameTheme             => 'MyString',    # OPTIONAL
      Name                      => 'MyString',    # OPTIONAL
      Region                    => 'MyString',    # OPTIONAL
      UseCustomCookbooks        => 1,             # OPTIONAL
      UseOpsworksSecurityGroups => 1,             # OPTIONAL
      VpcId                     => 'MyString',    # OPTIONAL
    );

    # Results:
    my $StackId = $CloneStackResult->StackId;

    # Returns a L<Paws::OpsWorks::CloneStackResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/CloneStack>

=head1 ATTRIBUTES


=head2 AgentVersion => Str

The default OpsWorks Stacks agent version. You have the following
options:

=over

=item *

Auto-update - Set this parameter to C<LATEST>. OpsWorks Stacks
automatically installs new agent versions on the stack's instances as
soon as they are available.

=item *

Fixed version - Set this parameter to your preferred agent version. To
update the agent version, you must edit the stack configuration and
specify a new version. OpsWorks Stacks automatically installs that
version on the stack's instances.

=back

The default setting is C<LATEST>. To specify an agent version, you must
use the complete version number, not the abbreviated number shown on
the console. For a list of available agent version numbers, call
DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.

You can also specify an agent version when you create or update an
instance, which overrides the stack's default setting.



=head2 Attributes => L<Paws::OpsWorks::StackAttributes>

A list of stack attributes and values as key/value pairs to be added to
the cloned stack.



=head2 ChefConfiguration => L<Paws::OpsWorks::ChefConfiguration>

A C<ChefConfiguration> object that specifies whether to enable
Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more
information, see Create a New Stack
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html).



=head2 CloneAppIds => ArrayRef[Str|Undef]

A list of source stack app IDs to be included in the cloned stack.



=head2 ClonePermissions => Bool

Whether to clone the source stack's permissions.



=head2 ConfigurationManager => L<Paws::OpsWorks::StackConfigurationManager>

The configuration manager. When you clone a stack we recommend that you
use the configuration manager to specify the Chef version: 12, 11.10,
or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value
for Linux stacks is currently 12.



=head2 CustomCookbooksSource => L<Paws::OpsWorks::Source>

Contains the information required to retrieve an app or cookbook from a
repository. For more information, see Adding Apps
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html)
or Cookbooks and Recipes
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html).



=head2 CustomJson => Str

A string that contains user-defined, custom JSON. It is used to
override the corresponding default stack configuration JSON values. The
string should be in the following format:

C<"{\"key1\": \"value1\", \"key2\": \"value2\",...}">

For more information about custom JSON, see Use Custom JSON to Modify
the Stack Configuration Attributes
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html)



=head2 DefaultAvailabilityZone => Str

The cloned stack's default Availability Zone, which must be in the
specified region. For more information, see Regions and Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html). If you also
specify a value for C<DefaultSubnetId>, the subnet must be in the same
zone. For more information, see the C<VpcId> parameter description.



=head2 DefaultInstanceProfileArn => Str

The Amazon Resource Name (ARN) of an IAM profile that is the default
profile for all of the stack's EC2 instances. For more information
about IAM ARNs, see Using Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).



=head2 DefaultOs => Str

The stack's operating system, which must be set to one of the
following.

=over

=item *

A supported Linux operating system: An Amazon Linux version, such as
C<Amazon Linux 2>, C<Amazon Linux 2018.03>, C<Amazon Linux 2017.09>,
C<Amazon Linux 2017.03>, C<Amazon Linux 2016.09>, C<Amazon Linux
2016.03>, C<Amazon Linux 2015.09>, or C<Amazon Linux 2015.03>.

=item *

A supported Ubuntu operating system, such as C<Ubuntu 18.04 LTS>,
C<Ubuntu 16.04 LTS>, C<Ubuntu 14.04 LTS>, or C<Ubuntu 12.04 LTS>.

=item *

C<CentOS Linux 7>

=item *

C<Red Hat Enterprise Linux 7>

=item *

C<Microsoft Windows Server 2012 R2 Base>, C<Microsoft Windows Server
2012 R2 with SQL Server Express>, C<Microsoft Windows Server 2012 R2
with SQL Server Standard>, or C<Microsoft Windows Server 2012 R2 with
SQL Server Web>.

=item *

A custom AMI: C<Custom>. You specify the custom AMI you want to use
when you create instances. For more information about how to use custom
AMIs with OpsWorks, see Using Custom AMIs
(https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).

=back

The default option is the parent stack's operating system. Not all
operating systems are supported with all versions of Chef. For more
information about supported operating systems, see OpsWorks Stacks
Operating Systems
(https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html).

You can specify a different Linux operating system for the cloned
stack, but you cannot change from Linux to Windows or Windows to Linux.



=head2 DefaultRootDeviceType => Str

The default root device type. This value is used by default for all
instances in the cloned stack, but you can override it when you create
an instance. For more information, see Storage for the Root Device
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device).

Valid values are: C<"ebs">, C<"instance-store">

=head2 DefaultSshKeyName => Str

A default Amazon EC2 key pair name. The default value is none. If you
specify a key pair name, OpsWorks installs the public key on the
instance and you can use the private key with an SSH client to log in
to the instance. For more information, see Using SSH to Communicate
with an Instance
(https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html)
and Managing SSH Access
(https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html).
You can override this setting by specifying a different key pair, or no
key pair, when you create an instance
(https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).



=head2 DefaultSubnetId => Str

The stack's default VPC subnet ID. This parameter is required if you
specify a value for the C<VpcId> parameter. All instances are launched
into this subnet unless you specify otherwise when you create the
instance. If you also specify a value for C<DefaultAvailabilityZone>,
the subnet must be in that zone. For information on default values and
when this parameter is required, see the C<VpcId> parameter
description.



=head2 HostnameTheme => Str

The stack's host name theme, with spaces are replaced by underscores.
The theme is used to generate host names for the stack's instances. By
default, C<HostnameTheme> is set to C<Layer_Dependent>, which creates
host names by appending integers to the layer's short name. The other
themes are:

=over

=item *

C<Baked_Goods>

=item *

C<Clouds>

=item *

C<Europe_Cities>

=item *

C<Fruits>

=item *

C<Greek_Deities_and_Titans>

=item *

C<Legendary_creatures_from_Japan>

=item *

C<Planets_and_Moons>

=item *

C<Roman_Deities>

=item *

C<Scottish_Islands>

=item *

C<US_Cities>

=item *

C<Wild_Cats>

=back

To obtain a generated host name, call C<GetHostNameSuggestion>, which
returns a host name based on the current theme.



=head2 Name => Str

The cloned stack name. Stack names can be a maximum of 64 characters.



=head2 Region => Str

The cloned stack Amazon Web Services Region, such as C<ap-northeast-2>.
For more information about Amazon Web Services Regions, see Regions and
Endpoints (https://docs.aws.amazon.com/general/latest/gr/rande.html).



=head2 B<REQUIRED> ServiceRoleArn => Str

The stack Identity and Access Management (IAM) role, which allows
OpsWorks Stacks to work with Amazon Web Services resources on your
behalf. You must set this parameter to the Amazon Resource Name (ARN)
for an existing IAM role. If you create a stack by using the OpsWorkss
Stacks console, it creates the role for you. You can obtain an existing
stack's IAM ARN programmatically by calling DescribePermissions. For
more information about IAM ARNs, see Using Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).

You must set this parameter to a valid service role ARN or the action
will fail; there is no default value. You can specify the source
stack's service role ARN, if you prefer, but you must do so explicitly.



=head2 B<REQUIRED> SourceStackId => Str

The source stack ID.



=head2 UseCustomCookbooks => Bool

Whether to use custom cookbooks.



=head2 UseOpsworksSecurityGroups => Bool

Whether to associate the OpsWorks Stacks built-in security groups with
the stack's layers.

OpsWorks Stacks provides a standard set of security groups, one for
each layer, which are associated with layers by default. With
C<UseOpsworksSecurityGroups> you can instead provide your own custom
security groups. C<UseOpsworksSecurityGroups> has the following
settings:

=over

=item *

True - OpsWorks Stacks automatically associates the appropriate
built-in security group with each layer (default setting). You can
associate additional security groups with a layer after you create it
but you cannot delete the built-in security group.

=item *

False - OpsWorks Stacks does not associate built-in security groups
with layers. You must create appropriate Amazon EC2 security groups and
associate a security group with each layer that you create. However,
you can still manually associate a built-in security group with a layer
on creation; custom security groups are required only for those layers
that need custom settings.

=back

For more information, see Create a New Stack
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html).



=head2 VpcId => Str

The ID of the VPC that the cloned stack is to be launched into. It must
be in the specified region. All instances are launched into this VPC,
and you cannot change the ID later.

=over

=item *

If your account supports EC2 Classic, the default value is no VPC.

=item *

If your account does not support EC2 Classic, the default value is the
default VPC for the specified region.

=back

If the VPC ID corresponds to a default VPC and you have specified
either the C<DefaultAvailabilityZone> or the C<DefaultSubnetId>
parameter only, OpsWorks Stacks infers the value of the other
parameter. If you specify neither parameter, OpsWorks Stacks sets these
parameters to the first valid Availability Zone for the specified
region and the corresponding default VPC subnet ID, respectively.

If you specify a nondefault VPC ID, note the following:

=over

=item *

It must belong to a VPC in your account that is in the specified
region.

=item *

You must specify a value for C<DefaultSubnetId>.

=back

For more information about how to use OpsWorks Stacks with a VPC, see
Running a Stack in a VPC
(https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html).
For more information about default VPC and EC2 Classic, see Supported
Platforms
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CloneStack in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

