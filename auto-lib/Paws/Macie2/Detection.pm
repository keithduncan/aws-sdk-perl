# Generated by default/object.tt
package Paws::Macie2::Detection;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Suppressed => (is => 'ro', isa => 'Bool', request_name => 'suppressed', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::Detection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::Detection object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::Detection object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Provides information about a type of sensitive data that Amazon Macie
found in an S3 bucket while performing automated sensitive data
discovery for an account. The information also specifies the custom or
managed data identifier that detected the data. This information is
available only if automated sensitive data discovery has been enabled
for the account.

=head1 ATTRIBUTES


=head2 Arn => Str

If the sensitive data was detected by a custom data identifier, the
Amazon Resource Name (ARN) of the custom data identifier that detected
the data. Otherwise, this value is null.


=head2 Count => Int

The total number of occurrences of the sensitive data.


=head2 Id => Str

The unique identifier for the custom data identifier or managed data
identifier that detected the sensitive data. For additional details
about a specified managed data identifier, see Using managed data
identifiers
(https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html)
in the I<Amazon Macie User Guide>.


=head2 Name => Str

The name of the custom data identifier or managed data identifier that
detected the sensitive data. For a managed data identifier, this value
is the same as the unique identifier (id).


=head2 Suppressed => Bool

Specifies whether occurrences of this type of sensitive data are
excluded (true) or included (false) in the bucket's sensitivity score,
if the score is calculated by Amazon Macie.


=head2 Type => Str

The type of data identifier that detected the sensitive data. Possible
values are: CUSTOM, for a custom data identifier; and, MANAGED, for a
managed data identifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

