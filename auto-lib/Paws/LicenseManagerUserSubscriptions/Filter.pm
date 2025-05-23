# Generated by default/object.tt
package Paws::LicenseManagerUserSubscriptions::Filter;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has Operation => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManagerUserSubscriptions::Filter object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManagerUserSubscriptions::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

A filter name and value pair that is used to return more specific
results from a describe or list operation. You can use filters can be
used to match a set of resources by specific criteria, such as tags,
attributes, or IDs.

=head1 ATTRIBUTES


=head2 Attribute => Str

The name of an attribute to use as a filter.


=head2 Operation => Str

The type of search (For example, eq, geq, leq)


=head2 Value => Str

Value of the filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

