# Generated by default/object.tt
package Paws::Shield::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A tag associated with an Amazon Web Services resource. Tags are
key:value pairs that you can use to categorize and manage your
resources, for purposes like billing or other management. Typically,
the tag key represents a category, such as "environment", and the tag
value represents a specific value within that category, such as "test,"
"development," or "production". Or you might set the tag key to
"customer" and the value to the customer name or ID. You can specify
one or more tags to add to each Amazon Web Services resource, up to 50
tags for a resource.

=head1 ATTRIBUTES


=head2 Key => Str

Part of the key:value pair that defines a tag. You can use a tag key to
describe a category of information, such as "customer." Tag keys are
case-sensitive.


=head2 Value => Str

Part of the key:value pair that defines a tag. You can use a tag value
to describe a specific value within a category, such as "companyA" or
"companyB." Tag values are case-sensitive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

