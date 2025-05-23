# Generated by default/object.tt
package Paws::ChimeSDKMessaging::PushNotificationPreferences;
  use Moose;
  has AllowNotifications => (is => 'ro', isa => 'Str', required => 1);
  has FilterRule => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::PushNotificationPreferences

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKMessaging::PushNotificationPreferences object:

  $service_obj->Method(Att1 => { AllowNotifications => $value, ..., FilterRule => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKMessaging::PushNotificationPreferences object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowNotifications

=head1 DESCRIPTION

The channel membership preferences for push notification.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowNotifications => Str

Enum value that indicates which push notifications to send to the
requested member of a channel. C<ALL> sends all push notifications,
C<NONE> sends no push notifications, C<FILTERED> sends only filtered
push notifications.


=head2 FilterRule => Str

The simple JSON object used to send a subset of a push notification to
the requested member.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

