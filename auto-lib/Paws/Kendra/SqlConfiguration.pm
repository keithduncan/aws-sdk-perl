# Generated by default/object.tt
package Paws::Kendra::SqlConfiguration;
  use Moose;
  has QueryIdentifiersEnclosingOption => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::SqlConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::SqlConfiguration object:

  $service_obj->Method(Att1 => { QueryIdentifiersEnclosingOption => $value, ..., QueryIdentifiersEnclosingOption => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::SqlConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->QueryIdentifiersEnclosingOption

=head1 DESCRIPTION

Provides the configuration information to use a SQL database.

=head1 ATTRIBUTES


=head2 QueryIdentifiersEnclosingOption => Str

Determines whether Amazon Kendra encloses SQL identifiers for tables
and column names in double quotes (") when making a database query.

By default, Amazon Kendra passes SQL identifiers the way that they are
entered into the data source configuration. It does not change the case
of identifiers or enclose them in quotes.

PostgreSQL internally converts uppercase characters to lower case
characters in identifiers unless they are quoted. Choosing this option
encloses identifiers in quotes so that PostgreSQL does not convert the
character's case.

For MySQL databases, you must enable the C<ansi_quotes> option when you
set this field to C<DOUBLE_QUOTES>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

