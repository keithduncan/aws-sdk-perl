# Generated by default/object.tt
package Paws::EMR::Studio;
  use Moose;
  has AuthMode => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DefaultS3Location => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has EngineSecurityGroupId => (is => 'ro', isa => 'Str');
  has IdcInstanceArn => (is => 'ro', isa => 'Str');
  has IdcUserAssignment => (is => 'ro', isa => 'Str');
  has IdpAuthUrl => (is => 'ro', isa => 'Str');
  has IdpRelayStateParameterName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has StudioArn => (is => 'ro', isa => 'Str');
  has StudioId => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Tag]');
  has TrustedIdentityPropagationEnabled => (is => 'ro', isa => 'Bool');
  has Url => (is => 'ro', isa => 'Str');
  has UserRole => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
  has WorkspaceSecurityGroupId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Studio

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Studio object:

  $service_obj->Method(Att1 => { AuthMode => $value, ..., WorkspaceSecurityGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Studio object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthMode

=head1 DESCRIPTION

Details for an Amazon EMR Studio including ID, creation time, name, and
so on.

=head1 ATTRIBUTES


=head2 AuthMode => Str

Specifies whether the Amazon EMR Studio authenticates users with IAM or
IAM Identity Center.


=head2 CreationTime => Str

The time the Amazon EMR Studio was created.


=head2 DefaultS3Location => Str

The Amazon S3 location to back up Amazon EMR Studio Workspaces and
notebook files.


=head2 Description => Str

The detailed description of the Amazon EMR Studio.


=head2 EncryptionKeyArn => Str

The KMS key identifier (ARN) used to encrypt Amazon EMR Studio
workspace and notebook files when backed up to Amazon S3.


=head2 EngineSecurityGroupId => Str

The ID of the Engine security group associated with the Amazon EMR
Studio. The Engine security group allows inbound network traffic from
resources in the Workspace security group.


=head2 IdcInstanceArn => Str

The ARN of the IAM Identity Center instance the Studio application
belongs to.


=head2 IdcUserAssignment => Str

Indicates whether the Studio has C<REQUIRED> or C<OPTIONAL> IAM
Identity Center user assignment. If the value is set to C<REQUIRED>,
users must be explicitly assigned to the Studio application to access
the Studio.


=head2 IdpAuthUrl => Str

Your identity provider's authentication endpoint. Amazon EMR Studio
redirects federated users to this endpoint for authentication when
logging in to a Studio with the Studio URL.


=head2 IdpRelayStateParameterName => Str

The name of your identity provider's C<RelayState> parameter.


=head2 Name => Str

The name of the Amazon EMR Studio.


=head2 ServiceRole => Str

The name of the IAM role assumed by the Amazon EMR Studio.


=head2 StudioArn => Str

The Amazon Resource Name (ARN) of the Amazon EMR Studio.


=head2 StudioId => Str

The ID of the Amazon EMR Studio.


=head2 SubnetIds => ArrayRef[Str|Undef]

The list of IDs of the subnets associated with the Amazon EMR Studio.


=head2 Tags => ArrayRef[L<Paws::EMR::Tag>]

A list of tags associated with the Amazon EMR Studio.


=head2 TrustedIdentityPropagationEnabled => Bool

Indicates whether the Studio has Trusted identity propagation enabled.
The default value is C<false>.


=head2 Url => Str

The unique access URL of the Amazon EMR Studio.


=head2 UserRole => Str

The name of the IAM role assumed by users logged in to the Amazon EMR
Studio. A Studio only requires a C<UserRole> when you use IAM
authentication.


=head2 VpcId => Str

The ID of the VPC associated with the Amazon EMR Studio.


=head2 WorkspaceSecurityGroupId => Str

The ID of the Workspace security group associated with the Amazon EMR
Studio. The Workspace security group allows outbound network traffic to
resources in the Engine security group and to the internet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

