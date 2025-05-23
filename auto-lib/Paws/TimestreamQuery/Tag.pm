# Generated by default/object.tt
package Paws::TimestreamQuery::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A tag is a label that you assign to a Timestream database and/or table.
Each tag consists of a key and an optional value, both of which you
define. Tags enable you to categorize databases and/or tables, for
example, by purpose, owner, or environment.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

The key of the tag. Tag keys are case sensitive.


=head2 B<REQUIRED> Value => Str

The value of the tag. Tag values are case sensitive and can be null.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

