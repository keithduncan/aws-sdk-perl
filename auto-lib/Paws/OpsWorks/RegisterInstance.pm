
package Paws::OpsWorks::RegisterInstance;
  use Moose;
  has Hostname => (is => 'ro', isa => 'Str');
  has InstanceIdentity => (is => 'ro', isa => 'Paws::OpsWorks::InstanceIdentity');
  has PrivateIp => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');
  has RsaPublicKey => (is => 'ro', isa => 'Str');
  has RsaPublicKeyFingerprint => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::RegisterInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterInstance - Arguments for method RegisterInstance on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterInstance on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method RegisterInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterInstance.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $RegisterInstanceResult = $opsworks->RegisterInstance(
      StackId          => 'MyString',
      Hostname         => 'MyString',    # OPTIONAL
      InstanceIdentity => {
        Document  => 'MyString',
        Signature => 'MyString',
      },                                 # OPTIONAL
      PrivateIp               => 'MyString',    # OPTIONAL
      PublicIp                => 'MyString',    # OPTIONAL
      RsaPublicKey            => 'MyString',    # OPTIONAL
      RsaPublicKeyFingerprint => 'MyString',    # OPTIONAL
    );

    # Results:
    my $InstanceId = $RegisterInstanceResult->InstanceId;

    # Returns a L<Paws::OpsWorks::RegisterInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/RegisterInstance>

=head1 ATTRIBUTES


=head2 Hostname => Str

The instance's host name. The following are character limits for
instance host names.

=over

=item *

Linux-based instances: 63 characters

=item *

Windows-based instances: 15 characters

=back




=head2 InstanceIdentity => L<Paws::OpsWorks::InstanceIdentity>

An InstanceIdentity object that contains the instance's identity.



=head2 PrivateIp => Str

The instance's private IP address.



=head2 PublicIp => Str

The instance's public IP address.



=head2 RsaPublicKey => Str

The instances public RSA key. This key is used to encrypt communication
between the instance and the service.



=head2 RsaPublicKeyFingerprint => Str

The instances public RSA key fingerprint.



=head2 B<REQUIRED> StackId => Str

The ID of the stack that the instance is to be registered with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterInstance in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

