# Generated by default/object.tt
package Paws::DataZone::SubscribedPrincipalInput;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::DataZone::SubscribedProjectInput', request_name => 'project', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::SubscribedPrincipalInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::SubscribedPrincipalInput object:

  $service_obj->Method(Att1 => { Project => $value, ..., Project => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::SubscribedPrincipalInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Project

=head1 DESCRIPTION

The principal that is to be given a subscriptiong grant.

=head1 ATTRIBUTES


=head2 Project => L<Paws::DataZone::SubscribedProjectInput>

The project that is to be given a subscription grant.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

