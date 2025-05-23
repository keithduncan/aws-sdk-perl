# Generated by default/object.tt
package Paws::Glue::SupportedDialect;
  use Moose;
  has Dialect => (is => 'ro', isa => 'Str');
  has DialectVersion => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::SupportedDialect

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::SupportedDialect object:

  $service_obj->Method(Att1 => { Dialect => $value, ..., DialectVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::SupportedDialect object:

  $result = $service_obj->Method(...);
  $result->Att1->Dialect

=head1 DESCRIPTION

A structure specifying the dialect and dialect version used by the
query engine.

=head1 ATTRIBUTES


=head2 Dialect => Str

The dialect of the query engine.


=head2 DialectVersion => Str

The version of the dialect of the query engine. For example, 3.0.0.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

