# Generated by default/object.tt
package Paws::CloudFormation::Warnings;
  use Moose;
  has UnrecognizedResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::Warnings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::Warnings object:

  $service_obj->Method(Att1 => { UnrecognizedResourceTypes => $value, ..., UnrecognizedResourceTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::Warnings object:

  $result = $service_obj->Method(...);
  $result->Att1->UnrecognizedResourceTypes

=head1 DESCRIPTION

Contains any warnings returned by the C<GetTemplateSummary> API action.

=head1 ATTRIBUTES


=head2 UnrecognizedResourceTypes => ArrayRef[Str|Undef]

A list of all of the unrecognized resource types. This is only returned
if the C<TemplateSummaryConfig> parameter has the
C<TreatUnrecognizedResourceTypesAsWarning> configuration set to
C<True>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

