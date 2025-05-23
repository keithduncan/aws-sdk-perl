# Generated by default/object.tt
package Paws::SSMIncidents::NotificationTargetItem;
  use Moose;
  has SnsTopicArn => (is => 'ro', isa => 'Str', request_name => 'snsTopicArn', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::NotificationTargetItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSMIncidents::NotificationTargetItem object:

  $service_obj->Method(Att1 => { SnsTopicArn => $value, ..., SnsTopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSMIncidents::NotificationTargetItem object:

  $result = $service_obj->Method(...);
  $result->Att1->SnsTopicArn

=head1 DESCRIPTION

The SNS targets that are notified when updates are made to an incident.

=head1 ATTRIBUTES


=head2 SnsTopicArn => Str

The Amazon Resource Name (ARN) of the SNS topic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

