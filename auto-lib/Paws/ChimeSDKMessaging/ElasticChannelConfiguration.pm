# Generated by default/object.tt
package Paws::ChimeSDKMessaging::ElasticChannelConfiguration;
  use Moose;
  has MaximumSubChannels => (is => 'ro', isa => 'Int', required => 1);
  has MinimumMembershipPercentage => (is => 'ro', isa => 'Int', required => 1);
  has TargetMembershipsPerSubChannel => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ElasticChannelConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKMessaging::ElasticChannelConfiguration object:

  $service_obj->Method(Att1 => { MaximumSubChannels => $value, ..., TargetMembershipsPerSubChannel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKMessaging::ElasticChannelConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->MaximumSubChannels

=head1 DESCRIPTION

The attributes required to configure and create an elastic channel. An
elastic channel can support a maximum of 1-million members.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaximumSubChannels => Int

The maximum number of SubChannels that you want to allow in the elastic
channel.


=head2 B<REQUIRED> MinimumMembershipPercentage => Int

The minimum allowed percentage of TargetMembershipsPerSubChannel users.
Ceil of the calculated value is used in balancing members among
SubChannels of the elastic channel.


=head2 B<REQUIRED> TargetMembershipsPerSubChannel => Int

The maximum number of members allowed in a SubChannel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKMessaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

