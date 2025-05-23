# Generated by default/object.tt
package Paws::Forecast::SupplementaryFeature;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::SupplementaryFeature

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::SupplementaryFeature object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::SupplementaryFeature object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

This object belongs to the CreatePredictor operation. If you created
your predictor with CreateAutoPredictor, see AdditionalDataset.

Describes a supplementary feature of a dataset group. This object is
part of the InputDataConfig object. Forecast supports the Weather Index
and Holidays built-in featurizations.

B<Weather Index>

The Amazon Forecast Weather Index is a built-in featurization that
incorporates historical and projected weather information into your
model. The Weather Index supplements your datasets with over two years
of historical weather data and up to 14 days of projected weather data.
For more information, see Amazon Forecast Weather Index
(https://docs.aws.amazon.com/forecast/latest/dg/weather.html).

B<Holidays>

Holidays is a built-in featurization that incorporates a
feature-engineered dataset of national holiday information into your
model. It provides native support for the holiday calendars of 66
countries. To view the holiday calendars, refer to the Jollyday
(http://jollyday.sourceforge.net/data.html) library. For more
information, see Holidays Featurization
(https://docs.aws.amazon.com/forecast/latest/dg/holidays.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the feature. Valid values: C<"holiday"> and C<"weather">.


=head2 B<REQUIRED> Value => Str

B<Weather Index>

To enable the Weather Index, set the value to C<"true">

B<Holidays>

To enable Holidays, specify a country with one of the following
two-letter country codes:

=over

=item *

"AL" - ALBANIA

=item *

"AR" - ARGENTINA

=item *

"AT" - AUSTRIA

=item *

"AU" - AUSTRALIA

=item *

"BA" - BOSNIA HERZEGOVINA

=item *

"BE" - BELGIUM

=item *

"BG" - BULGARIA

=item *

"BO" - BOLIVIA

=item *

"BR" - BRAZIL

=item *

"BY" - BELARUS

=item *

"CA" - CANADA

=item *

"CL" - CHILE

=item *

"CO" - COLOMBIA

=item *

"CR" - COSTA RICA

=item *

"HR" - CROATIA

=item *

"CZ" - CZECH REPUBLIC

=item *

"DK" - DENMARK

=item *

"EC" - ECUADOR

=item *

"EE" - ESTONIA

=item *

"ET" - ETHIOPIA

=item *

"FI" - FINLAND

=item *

"FR" - FRANCE

=item *

"DE" - GERMANY

=item *

"GR" - GREECE

=item *

"HU" - HUNGARY

=item *

"IS" - ICELAND

=item *

"IN" - INDIA

=item *

"IE" - IRELAND

=item *

"IT" - ITALY

=item *

"JP" - JAPAN

=item *

"KZ" - KAZAKHSTAN

=item *

"KR" - KOREA

=item *

"LV" - LATVIA

=item *

"LI" - LIECHTENSTEIN

=item *

"LT" - LITHUANIA

=item *

"LU" - LUXEMBOURG

=item *

"MK" - MACEDONIA

=item *

"MT" - MALTA

=item *

"MX" - MEXICO

=item *

"MD" - MOLDOVA

=item *

"ME" - MONTENEGRO

=item *

"NL" - NETHERLANDS

=item *

"NZ" - NEW ZEALAND

=item *

"NI" - NICARAGUA

=item *

"NG" - NIGERIA

=item *

"NO" - NORWAY

=item *

"PA" - PANAMA

=item *

"PY" - PARAGUAY

=item *

"PE" - PERU

=item *

"PL" - POLAND

=item *

"PT" - PORTUGAL

=item *

"RO" - ROMANIA

=item *

"RU" - RUSSIA

=item *

"RS" - SERBIA

=item *

"SK" - SLOVAKIA

=item *

"SI" - SLOVENIA

=item *

"ZA" - SOUTH AFRICA

=item *

"ES" - SPAIN

=item *

"SE" - SWEDEN

=item *

"CH" - SWITZERLAND

=item *

"UA" - UKRAINE

=item *

"AE" - UNITED ARAB EMIRATES

=item *

"US" - UNITED STATES

=item *

"UK" - UNITED KINGDOM

=item *

"UY" - URUGUAY

=item *

"VE" - VENEZUELA

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

