# Generated by default/object.tt
package Paws::SecurityHub::FindingHistoryUpdate;
  use Moose;
  has NewValue => (is => 'ro', isa => 'Str');
  has OldValue => (is => 'ro', isa => 'Str');
  has UpdatedField => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::FindingHistoryUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::FindingHistoryUpdate object:

  $service_obj->Method(Att1 => { NewValue => $value, ..., UpdatedField => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::FindingHistoryUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->NewValue

=head1 DESCRIPTION

An array of objects that provides details about a change to a finding,
including the Amazon Web Services Security Finding Format (ASFF) field
that changed, the value of the field before the change, and the value
of the field after the change.

=head1 ATTRIBUTES


=head2 NewValue => Str

The value of the ASFF field after the finding change event. To preserve
storage and readability, Security Hub omits this value if
C<FindingHistoryRecord>
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_FindingHistoryRecord.html)
exceeds database limits.


=head2 OldValue => Str

The value of the ASFF field before the finding change event.


=head2 UpdatedField => Str

The ASFF field that changed during the finding change event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

