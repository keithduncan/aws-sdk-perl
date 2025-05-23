# Generated by default/object.tt
package Paws::MailManager::IngressIpToEvaluate;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::IngressIpToEvaluate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MailManager::IngressIpToEvaluate object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., Attribute => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MailManager::IngressIpToEvaluate object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

The structure for an IP based condition matching on the incoming mail.

=head1 ATTRIBUTES


=head2 Attribute => Str

An enum type representing the allowed attribute types for an IP
condition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

