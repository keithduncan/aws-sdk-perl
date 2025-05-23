# Generated by default/object.tt
package Paws::CleanRoomsML::ProtectedQueryInputParameters;
  use Moose;
  has ComputeConfiguration => (is => 'ro', isa => 'Paws::CleanRoomsML::ComputeConfiguration', request_name => 'computeConfiguration', traits => ['NameInRequest']);
  has SqlParameters => (is => 'ro', isa => 'Paws::CleanRoomsML::ProtectedQuerySQLParameters', request_name => 'sqlParameters', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ProtectedQueryInputParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRoomsML::ProtectedQueryInputParameters object:

  $service_obj->Method(Att1 => { ComputeConfiguration => $value, ..., SqlParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRoomsML::ProtectedQueryInputParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeConfiguration

=head1 DESCRIPTION

Provides information necessary to perform the protected query.

=head1 ATTRIBUTES


=head2 ComputeConfiguration => L<Paws::CleanRoomsML::ComputeConfiguration>

Provides configuration information for the workers that will perform
the protected query.


=head2 B<REQUIRED> SqlParameters => L<Paws::CleanRoomsML::ProtectedQuerySQLParameters>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

