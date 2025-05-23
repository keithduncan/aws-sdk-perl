# Generated by default/object.tt
package Paws::SecurityHub::AwsEc2NetworkInterfaceAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str');
  has AttachTime => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has DeviceIndex => (is => 'ro', isa => 'Int');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEc2NetworkInterfaceAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEc2NetworkInterfaceAttachment object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEc2NetworkInterfaceAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

Information about the network interface attachment.

=head1 ATTRIBUTES


=head2 AttachmentId => Str

The identifier of the network interface attachment


=head2 AttachTime => Str

Indicates when the attachment initiated.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 DeleteOnTermination => Bool

Indicates whether the network interface is deleted when the instance is
terminated.


=head2 DeviceIndex => Int

The device index of the network interface attachment on the instance.


=head2 InstanceId => Str

The ID of the instance.


=head2 InstanceOwnerId => Str

The Amazon Web Services account ID of the owner of the instance.


=head2 Status => Str

The attachment state.

Valid values: C<attaching> | C<attached> | C<detaching> | C<detached>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

