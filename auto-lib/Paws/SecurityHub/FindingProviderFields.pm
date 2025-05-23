# Generated by default/object.tt
package Paws::SecurityHub::FindingProviderFields;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Int');
  has Criticality => (is => 'ro', isa => 'Int');
  has RelatedFindings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::RelatedFinding]');
  has Severity => (is => 'ro', isa => 'Paws::SecurityHub::FindingProviderSeverity');
  has Types => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::FindingProviderFields

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::FindingProviderFields object:

  $service_obj->Method(Att1 => { Confidence => $value, ..., Types => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::FindingProviderFields object:

  $result = $service_obj->Method(...);
  $result->Att1->Confidence

=head1 DESCRIPTION

In a C<BatchImportFindings>
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchImportFindings.html)
request, finding providers use C<FindingProviderFields> to provide and
update values for the following fields:

=over

=item *

C<Confidence>

=item *

C<Criticality>

=item *

C<RelatedFindings>

=item *

C<Severity>

=item *

C<Types>

=back

The preceding fields are nested under the C<FindingProviderFields>
object, but also have analogues of the same name as top-level ASFF
fields. When a new finding is sent to Security Hub by a finding
provider, Security Hub populates the C<FindingProviderFields> object
automatically, if it is empty, based on the corresponding top-level
fields.

Finding providers can update C<FindingProviderFields> only by using the
C<BatchImportFindings> operation. Finding providers can't update this
object with the C<BatchUpdateFindings>
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateFindings.html)
operation. Customers can update the top-level fields by using the
C<BatchUpdateFindings> operation. Customers can't update
C<FindingProviderFields>.

For information about how Security Hub handles updates from
C<BatchImportFindings> to C<FindingProviderFields> and to the
corresponding top-level attributes, see Using C<FindingProviderFields>
(https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchimportfindings.html#batchimportfindings-findingproviderfields)
in the I<Security Hub User Guide>.

=head1 ATTRIBUTES


=head2 Confidence => Int

A finding's confidence. Confidence is defined as the likelihood that a
finding accurately identifies the behavior or issue that it was
intended to identify.

Confidence is scored on a 0-100 basis using a ratio scale, where 0
means zero percent confidence and 100 means 100 percent confidence.


=head2 Criticality => Int

The level of importance assigned to the resources associated with the
finding.

A score of 0 means that the underlying resources have no criticality,
and a score of 100 is reserved for the most critical resources.


=head2 RelatedFindings => ArrayRef[L<Paws::SecurityHub::RelatedFinding>]

A list of findings that are related to the current finding.


=head2 Severity => L<Paws::SecurityHub::FindingProviderSeverity>

The severity of a finding.


=head2 Types => ArrayRef[Str|Undef]

One or more finding types in the format of
C<namespace/category/classifier> that classify a finding.

Valid namespace values are: Software and Configuration Checks | TTPs |
Effects | Unusual Behaviors | Sensitive Data Identifications



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

