# Generated by default/object.tt
package Paws::FraudDetector::TrainingDataSchema;
  use Moose;
  has LabelSchema => (is => 'ro', isa => 'Paws::FraudDetector::LabelSchema', request_name => 'labelSchema', traits => ['NameInRequest']);
  has ModelVariables => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'modelVariables', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::TrainingDataSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::TrainingDataSchema object:

  $service_obj->Method(Att1 => { LabelSchema => $value, ..., ModelVariables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::TrainingDataSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->LabelSchema

=head1 DESCRIPTION

The training data schema.

=head1 ATTRIBUTES


=head2 LabelSchema => L<Paws::FraudDetector::LabelSchema>




=head2 B<REQUIRED> ModelVariables => ArrayRef[Str|Undef]

The training data schema variables.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

