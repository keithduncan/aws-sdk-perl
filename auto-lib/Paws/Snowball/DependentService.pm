# Generated by default/object.tt
package Paws::Snowball::DependentService;
  use Moose;
  has ServiceName => (is => 'ro', isa => 'Str');
  has ServiceVersion => (is => 'ro', isa => 'Paws::Snowball::ServiceVersion');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DependentService

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::DependentService object:

  $service_obj->Method(Att1 => { ServiceName => $value, ..., ServiceVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::DependentService object:

  $result = $service_obj->Method(...);
  $result->Att1->ServiceName

=head1 DESCRIPTION

The name and version of the service dependant on the requested service.

=head1 ATTRIBUTES


=head2 ServiceName => Str

The name of the dependent service.


=head2 ServiceVersion => L<Paws::Snowball::ServiceVersion>

The version of the dependent service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

