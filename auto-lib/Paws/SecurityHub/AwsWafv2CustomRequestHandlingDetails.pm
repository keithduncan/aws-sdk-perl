# Generated by default/object.tt
package Paws::SecurityHub::AwsWafv2CustomRequestHandlingDetails;
  use Moose;
  has InsertHeaders => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsWafv2CustomHttpHeader]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsWafv2CustomRequestHandlingDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsWafv2CustomRequestHandlingDetails object:

  $service_obj->Method(Att1 => { InsertHeaders => $value, ..., InsertHeaders => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsWafv2CustomRequestHandlingDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->InsertHeaders

=head1 DESCRIPTION

Custom request handling behavior that inserts custom headers into a web
request. WAF uses custom request handling when the rule action doesn't
block the request.

=head1 ATTRIBUTES


=head2 InsertHeaders => ArrayRef[L<Paws::SecurityHub::AwsWafv2CustomHttpHeader>]

The HTTP headers to insert into the request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

