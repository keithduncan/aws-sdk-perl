# Generated by default/object.tt
package Paws::TaxSettings::AdditionalInfoRequest;
  use Moose;
  has CanadaAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::CanadaAdditionalInfo', request_name => 'canadaAdditionalInfo', traits => ['NameInRequest']);
  has EgyptAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::EgyptAdditionalInfo', request_name => 'egyptAdditionalInfo', traits => ['NameInRequest']);
  has EstoniaAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::EstoniaAdditionalInfo', request_name => 'estoniaAdditionalInfo', traits => ['NameInRequest']);
  has GeorgiaAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::GeorgiaAdditionalInfo', request_name => 'georgiaAdditionalInfo', traits => ['NameInRequest']);
  has GreeceAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::GreeceAdditionalInfo', request_name => 'greeceAdditionalInfo', traits => ['NameInRequest']);
  has IndonesiaAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::IndonesiaAdditionalInfo', request_name => 'indonesiaAdditionalInfo', traits => ['NameInRequest']);
  has IsraelAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::IsraelAdditionalInfo', request_name => 'israelAdditionalInfo', traits => ['NameInRequest']);
  has ItalyAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::ItalyAdditionalInfo', request_name => 'italyAdditionalInfo', traits => ['NameInRequest']);
  has KenyaAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::KenyaAdditionalInfo', request_name => 'kenyaAdditionalInfo', traits => ['NameInRequest']);
  has MalaysiaAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::MalaysiaAdditionalInfo', request_name => 'malaysiaAdditionalInfo', traits => ['NameInRequest']);
  has PolandAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::PolandAdditionalInfo', request_name => 'polandAdditionalInfo', traits => ['NameInRequest']);
  has RomaniaAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::RomaniaAdditionalInfo', request_name => 'romaniaAdditionalInfo', traits => ['NameInRequest']);
  has SaudiArabiaAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::SaudiArabiaAdditionalInfo', request_name => 'saudiArabiaAdditionalInfo', traits => ['NameInRequest']);
  has SouthKoreaAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::SouthKoreaAdditionalInfo', request_name => 'southKoreaAdditionalInfo', traits => ['NameInRequest']);
  has SpainAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::SpainAdditionalInfo', request_name => 'spainAdditionalInfo', traits => ['NameInRequest']);
  has TurkeyAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::TurkeyAdditionalInfo', request_name => 'turkeyAdditionalInfo', traits => ['NameInRequest']);
  has UkraineAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::UkraineAdditionalInfo', request_name => 'ukraineAdditionalInfo', traits => ['NameInRequest']);
  has UzbekistanAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::UzbekistanAdditionalInfo', request_name => 'uzbekistanAdditionalInfo', traits => ['NameInRequest']);
  has VietnamAdditionalInfo => (is => 'ro', isa => 'Paws::TaxSettings::VietnamAdditionalInfo', request_name => 'vietnamAdditionalInfo', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::AdditionalInfoRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TaxSettings::AdditionalInfoRequest object:

  $service_obj->Method(Att1 => { CanadaAdditionalInfo => $value, ..., VietnamAdditionalInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TaxSettings::AdditionalInfoRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->CanadaAdditionalInfo

=head1 DESCRIPTION

Additional tax information associated with your tax registration number
(TRN). Depending on the TRN for a specific country, you might need to
specify this information when you set your TRN.

You can only specify one of the following parameters and the value
can't be empty.

The parameter that you specify must match the country for the TRN, if
available. For example, if you set a TRN in Canada for specific
provinces, you must also specify the C<canadaAdditionalInfo> parameter.

=head1 ATTRIBUTES


=head2 CanadaAdditionalInfo => L<Paws::TaxSettings::CanadaAdditionalInfo>

Additional tax information associated with your TRN in Canada.


=head2 EgyptAdditionalInfo => L<Paws::TaxSettings::EgyptAdditionalInfo>

Additional tax information to specify for a TRN in Egypt.


=head2 EstoniaAdditionalInfo => L<Paws::TaxSettings::EstoniaAdditionalInfo>

Additional tax information to specify for a TRN in Estonia.


=head2 GeorgiaAdditionalInfo => L<Paws::TaxSettings::GeorgiaAdditionalInfo>

Additional tax information to specify for a TRN in Georgia.


=head2 GreeceAdditionalInfo => L<Paws::TaxSettings::GreeceAdditionalInfo>

Additional tax information to specify for a TRN in Greece.


=head2 IndonesiaAdditionalInfo => L<Paws::TaxSettings::IndonesiaAdditionalInfo>




=head2 IsraelAdditionalInfo => L<Paws::TaxSettings::IsraelAdditionalInfo>

Additional tax information to specify for a TRN in Israel.


=head2 ItalyAdditionalInfo => L<Paws::TaxSettings::ItalyAdditionalInfo>

Additional tax information to specify for a TRN in Italy.


=head2 KenyaAdditionalInfo => L<Paws::TaxSettings::KenyaAdditionalInfo>

Additional tax information to specify for a TRN in Kenya.


=head2 MalaysiaAdditionalInfo => L<Paws::TaxSettings::MalaysiaAdditionalInfo>

Additional tax information to specify for a TRN in Malaysia.


=head2 PolandAdditionalInfo => L<Paws::TaxSettings::PolandAdditionalInfo>

Additional tax information associated with your TRN in Poland.


=head2 RomaniaAdditionalInfo => L<Paws::TaxSettings::RomaniaAdditionalInfo>

Additional tax information to specify for a TRN in Romania.


=head2 SaudiArabiaAdditionalInfo => L<Paws::TaxSettings::SaudiArabiaAdditionalInfo>

Additional tax information associated with your TRN in Saudi Arabia.


=head2 SouthKoreaAdditionalInfo => L<Paws::TaxSettings::SouthKoreaAdditionalInfo>

Additional tax information to specify for a TRN in South Korea.


=head2 SpainAdditionalInfo => L<Paws::TaxSettings::SpainAdditionalInfo>

Additional tax information to specify for a TRN in Spain.


=head2 TurkeyAdditionalInfo => L<Paws::TaxSettings::TurkeyAdditionalInfo>

Additional tax information to specify for a TRN in Turkey.


=head2 UkraineAdditionalInfo => L<Paws::TaxSettings::UkraineAdditionalInfo>

Additional tax information associated with your TRN in Ukraine.


=head2 UzbekistanAdditionalInfo => L<Paws::TaxSettings::UzbekistanAdditionalInfo>

Additional tax information to specify for a TRN in Uzbekistan.


=head2 VietnamAdditionalInfo => L<Paws::TaxSettings::VietnamAdditionalInfo>

Additional tax information to specify for a TRN in Vietnam.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TaxSettings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

