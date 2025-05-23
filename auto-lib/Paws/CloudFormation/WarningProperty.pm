# Generated by default/object.tt
package Paws::CloudFormation::WarningProperty;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has PropertyPath => (is => 'ro', isa => 'Str');
  has Required => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::WarningProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::WarningProperty object:

  $service_obj->Method(Att1 => { Description => $value, ..., Required => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::WarningProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

A specific property that is impacted by a warning.

=head1 ATTRIBUTES


=head2 Description => Str

The description of the property from the resource provider schema.


=head2 PropertyPath => Str

The path of the property. For example, if this is for the C<S3Bucket>
member of the C<Code> property, the property path would be
C<Code/S3Bucket>.


=head2 Required => Bool

If C<true>, the specified property is required.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

