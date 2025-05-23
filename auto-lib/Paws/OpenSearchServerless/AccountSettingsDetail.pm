# Generated by default/object.tt
package Paws::OpenSearchServerless::AccountSettingsDetail;
  use Moose;
  has CapacityLimits => (is => 'ro', isa => 'Paws::OpenSearchServerless::CapacityLimits', request_name => 'capacityLimits', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::AccountSettingsDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpenSearchServerless::AccountSettingsDetail object:

  $service_obj->Method(Att1 => { CapacityLimits => $value, ..., CapacityLimits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpenSearchServerless::AccountSettingsDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityLimits

=head1 DESCRIPTION

OpenSearch Serverless-related information for the current account.

=head1 ATTRIBUTES


=head2 CapacityLimits => L<Paws::OpenSearchServerless::CapacityLimits>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

