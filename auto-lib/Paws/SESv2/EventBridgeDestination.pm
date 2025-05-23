# Generated by default/object.tt
package Paws::SESv2::EventBridgeDestination;
  use Moose;
  has EventBusArn => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::EventBridgeDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::EventBridgeDestination object:

  $service_obj->Method(Att1 => { EventBusArn => $value, ..., EventBusArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::EventBridgeDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->EventBusArn

=head1 DESCRIPTION

An object that defines an Amazon EventBridge destination for email
events. You can use Amazon EventBridge to send notifications when
certain email events occur.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventBusArn => Str

The Amazon Resource Name (ARN) of the Amazon EventBridge bus to publish
email events to. Only the default bus is supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

