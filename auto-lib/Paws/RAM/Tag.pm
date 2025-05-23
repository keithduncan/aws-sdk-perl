# Generated by default/object.tt
package Paws::RAM::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RAM::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RAM::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A structure containing a tag. A tag is metadata that you can attach to
your resources to help organize and categorize them. You can also use
them to help you secure your resources. For more information, see
Controlling access to Amazon Web Services resources using tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).

For more information about tags, see Tagging Amazon Web Services
resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference Guide>.

=head1 ATTRIBUTES


=head2 Key => Str

The key, or name, attached to the tag. Every tag must have a key. Key
names are case sensitive.


=head2 Value => Str

The string value attached to the tag. The value can be an empty string.
Key values are case sensitive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

