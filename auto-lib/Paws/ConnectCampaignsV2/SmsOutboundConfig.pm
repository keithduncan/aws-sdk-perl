# Generated by default/object.tt
package Paws::ConnectCampaignsV2::SmsOutboundConfig;
  use Moose;
  has ConnectSourcePhoneNumberArn => (is => 'ro', isa => 'Str', request_name => 'connectSourcePhoneNumberArn', traits => ['NameInRequest'], required => 1);
  has WisdomTemplateArn => (is => 'ro', isa => 'Str', request_name => 'wisdomTemplateArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::SmsOutboundConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCampaignsV2::SmsOutboundConfig object:

  $service_obj->Method(Att1 => { ConnectSourcePhoneNumberArn => $value, ..., WisdomTemplateArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCampaignsV2::SmsOutboundConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectSourcePhoneNumberArn

=head1 DESCRIPTION

Default SMS Outbound config

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectSourcePhoneNumberArn => Str




=head2 B<REQUIRED> WisdomTemplateArn => Str





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

