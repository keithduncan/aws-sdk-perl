# Generated by default/object.tt
package Paws::CleanRooms::MembershipPaymentConfiguration;
  use Moose;
  has JobCompute => (is => 'ro', isa => 'Paws::CleanRooms::MembershipJobComputePaymentConfig', request_name => 'jobCompute', traits => ['NameInRequest']);
  has MachineLearning => (is => 'ro', isa => 'Paws::CleanRooms::MembershipMLPaymentConfig', request_name => 'machineLearning', traits => ['NameInRequest']);
  has QueryCompute => (is => 'ro', isa => 'Paws::CleanRooms::MembershipQueryComputePaymentConfig', request_name => 'queryCompute', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::MembershipPaymentConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::MembershipPaymentConfiguration object:

  $service_obj->Method(Att1 => { JobCompute => $value, ..., QueryCompute => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::MembershipPaymentConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->JobCompute

=head1 DESCRIPTION

An object representing the payment responsibilities accepted by the
collaboration member.

=head1 ATTRIBUTES


=head2 JobCompute => L<Paws::CleanRooms::MembershipJobComputePaymentConfig>

The payment responsibilities accepted by the collaboration member for
job compute costs.


=head2 MachineLearning => L<Paws::CleanRooms::MembershipMLPaymentConfig>

The payment responsibilities accepted by the collaboration member for
machine learning costs.


=head2 B<REQUIRED> QueryCompute => L<Paws::CleanRooms::MembershipQueryComputePaymentConfig>

The payment responsibilities accepted by the collaboration member for
query compute costs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

