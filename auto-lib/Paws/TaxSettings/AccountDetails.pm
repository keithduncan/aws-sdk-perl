# Generated by default/object.tt
package Paws::TaxSettings::AccountDetails;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has AccountMetaData => (is => 'ro', isa => 'Paws::TaxSettings::AccountMetaData', request_name => 'accountMetaData', traits => ['NameInRequest']);
  has TaxInheritanceDetails => (is => 'ro', isa => 'Paws::TaxSettings::TaxInheritanceDetails', request_name => 'taxInheritanceDetails', traits => ['NameInRequest']);
  has TaxRegistration => (is => 'ro', isa => 'Paws::TaxSettings::TaxRegistrationWithJurisdiction', request_name => 'taxRegistration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::AccountDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TaxSettings::AccountDetails object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., TaxRegistration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TaxSettings::AccountDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

An object with your C<accountId> and TRN information.

=head1 ATTRIBUTES


=head2 AccountId => Str

List of unique account identifiers.


=head2 AccountMetaData => L<Paws::TaxSettings::AccountMetaData>

The meta data information associated with the account.


=head2 TaxInheritanceDetails => L<Paws::TaxSettings::TaxInheritanceDetails>

Tax inheritance information associated with the account.


=head2 TaxRegistration => L<Paws::TaxSettings::TaxRegistrationWithJurisdiction>

Your TRN information. Instead of having full legal address, here TRN
information will have jurisdiction details (for example, country code
and state/region/province if applicable).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

