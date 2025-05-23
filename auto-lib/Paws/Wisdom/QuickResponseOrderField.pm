# Generated by default/object.tt
package Paws::Wisdom::QuickResponseOrderField;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Order => (is => 'ro', isa => 'Str', request_name => 'order', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::QuickResponseOrderField

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Wisdom::QuickResponseOrderField object:

  $service_obj->Method(Att1 => { Name => $value, ..., Order => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Wisdom::QuickResponseOrderField object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The quick response fields to order the quick response query results by.

The following is the list of supported field names.

=over

=item *

name

=item *

description

=item *

shortcutKey

=item *

isActive

=item *

channels

=item *

language

=item *

contentType

=item *

createdTime

=item *

lastModifiedTime

=item *

lastModifiedBy

=item *

groupingConfiguration.criteria

=item *

groupingConfiguration.values

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the attribute to order the quick response query results by.


=head2 Order => Str

The order at which the quick responses are sorted by.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

