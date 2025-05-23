# Generated by default/object.tt
package Paws::RDS::LimitlessDatabase;
  use Moose;
  has MinRequiredACU => (is => 'ro', isa => 'Num');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::LimitlessDatabase

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::LimitlessDatabase object:

  $service_obj->Method(Att1 => { MinRequiredACU => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::LimitlessDatabase object:

  $result = $service_obj->Method(...);
  $result->Att1->MinRequiredACU

=head1 DESCRIPTION

Contains details for Aurora Limitless Database.

=head1 ATTRIBUTES


=head2 MinRequiredACU => Num

The minimum required capacity for Aurora Limitless Database in Aurora
capacity units (ACUs).


=head2 Status => Str

The status of Aurora Limitless Database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

