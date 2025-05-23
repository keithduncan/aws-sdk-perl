# Generated by default/object.tt
package Paws::Connect::ContactEvaluation;
  use Moose;
  has DeleteTimestamp => (is => 'ro', isa => 'Str');
  has EndTimestamp => (is => 'ro', isa => 'Str');
  has EvaluationArn => (is => 'ro', isa => 'Str');
  has ExportLocation => (is => 'ro', isa => 'Str');
  has FormId => (is => 'ro', isa => 'Str');
  has StartTimestamp => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ContactEvaluation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::ContactEvaluation object:

  $service_obj->Method(Att1 => { DeleteTimestamp => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::ContactEvaluation object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteTimestamp

=head1 DESCRIPTION

Information about the contact evaluations where the key is the FormId,
which is a unique identifier for the form.

=head1 ATTRIBUTES


=head2 DeleteTimestamp => Str

The date and time when the evaluation was deleted, in UTC time.


=head2 EndTimestamp => Str

The date and time when the evaluation was submitted, in UTC time.


=head2 EvaluationArn => Str

The Amazon Resource Name for the evaluation form. It is always present.


=head2 ExportLocation => Str

The path where evaluation was exported.


=head2 FormId => Str

The C<FormId> of the contact evaluation.


=head2 StartTimestamp => Str

The date and time when the evaluation was started, in UTC time.


=head2 Status => Str

The status of the evaluation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

