# Generated by default/object.tt
package Paws::Amplify::Backend;
  use Moose;
  has StackArn => (is => 'ro', isa => 'Str', request_name => 'stackArn', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::Backend

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::Backend object:

  $service_obj->Method(Att1 => { StackArn => $value, ..., StackArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::Backend object:

  $result = $service_obj->Method(...);
  $result->Att1->StackArn

=head1 DESCRIPTION

Describes the backend associated with an Amplify C<Branch>.

This property is available to Amplify Gen 2 apps only. When you deploy
an application with Amplify Gen 2, you provision the app's backend
infrastructure using Typescript code.

=head1 ATTRIBUTES


=head2 StackArn => Str

The Amazon Resource Name (ARN) for the CloudFormation stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

