# Generated by default/object.tt
package Paws::Macie2::SensitiveDataItem;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', request_name => 'category', traits => ['NameInRequest']);
  has Detections => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::DefaultDetection]', request_name => 'detections', traits => ['NameInRequest']);
  has TotalCount => (is => 'ro', isa => 'Int', request_name => 'totalCount', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::SensitiveDataItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::SensitiveDataItem object:

  $service_obj->Method(Att1 => { Category => $value, ..., TotalCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::SensitiveDataItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

Provides information about the category, types, and occurrences of
sensitive data that produced a sensitive data finding.

=head1 ATTRIBUTES


=head2 Category => Str

The category of sensitive data that was detected. For example:
CREDENTIALS, for credentials data such as private keys or Amazon Web
Services secret access keys; FINANCIAL_INFORMATION, for financial data
such as credit card numbers; or, PERSONAL_INFORMATION, for personal
health information, such as health insurance identification numbers, or
personally identifiable information, such as passport numbers.


=head2 Detections => ArrayRef[L<Paws::Macie2::DefaultDetection>]

An array of objects, one for each type of sensitive data that was
detected. Each object reports the number of occurrences of a specific
type of sensitive data that was detected, and the location of up to 15
of those occurrences.


=head2 TotalCount => Int

The total number of occurrences of the sensitive data that was
detected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

