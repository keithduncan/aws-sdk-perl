# Generated by default/object.tt
package Paws::CodePipeline::RetryConfiguration;
  use Moose;
  has RetryMode => (is => 'ro', isa => 'Str', request_name => 'retryMode', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::RetryConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::RetryConfiguration object:

  $service_obj->Method(Att1 => { RetryMode => $value, ..., RetryMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::RetryConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->RetryMode

=head1 DESCRIPTION

The retry configuration specifies automatic retry for a failed stage,
along with the configured retry mode.

=head1 ATTRIBUTES


=head2 RetryMode => Str

The method that you want to configure for automatic stage retry on
stage failure. You can specify to retry only failed action in the stage
or all actions in the stage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

