# Generated by default/object.tt
package Paws::WorkMail::LambdaAvailabilityProvider;
  use Moose;
  has LambdaArn => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::LambdaAvailabilityProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::LambdaAvailabilityProvider object:

  $service_obj->Method(Att1 => { LambdaArn => $value, ..., LambdaArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::LambdaAvailabilityProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->LambdaArn

=head1 DESCRIPTION

Describes a Lambda based availability provider.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LambdaArn => Str

The Amazon Resource Name (ARN) of the Lambda that acts as the
availability provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

