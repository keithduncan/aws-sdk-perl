# Generated by default/object.tt
package Paws::Athena::ResultReuseInformation;
  use Moose;
  has ReusedPreviousResult => (is => 'ro', isa => 'Bool', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ResultReuseInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::ResultReuseInformation object:

  $service_obj->Method(Att1 => { ReusedPreviousResult => $value, ..., ReusedPreviousResult => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::ResultReuseInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->ReusedPreviousResult

=head1 DESCRIPTION

Contains information about whether the result of a previous query was
reused.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReusedPreviousResult => Bool

True if a previous query result was reused; false if the result was
generated from a new run of the query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

