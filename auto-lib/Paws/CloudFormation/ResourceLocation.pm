# Generated by default/object.tt
package Paws::CloudFormation::ResourceLocation;
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ResourceLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::ResourceLocation object:

  $service_obj->Method(Att1 => { LogicalResourceId => $value, ..., StackName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::ResourceLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->LogicalResourceId

=head1 DESCRIPTION

The location of the resource in a stack template.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogicalResourceId => Str

The logical name of the resource specified in the template.


=head2 B<REQUIRED> StackName => Str

The name associated with the stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

