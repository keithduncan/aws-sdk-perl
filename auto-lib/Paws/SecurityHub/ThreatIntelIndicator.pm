# Generated by default/object.tt
package Paws::SecurityHub::ThreatIntelIndicator;
  use Moose;
  has Category => (is => 'ro', isa => 'Str');
  has LastObservedAt => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has SourceUrl => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ThreatIntelIndicator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::ThreatIntelIndicator object:

  $service_obj->Method(Att1 => { Category => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::ThreatIntelIndicator object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

Details about the threat intelligence related to a finding.

=head1 ATTRIBUTES


=head2 Category => Str

The category of a threat intelligence indicator.


=head2 LastObservedAt => Str

Indicates when the most recent instance of a threat intelligence
indicator was observed.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 Source => Str

The source of the threat intelligence indicator.

Length Constraints: Minimum of 1 length. Maximum of 64 length.


=head2 SourceUrl => Str

The URL to the page or site where you can get more information about
the threat intelligence indicator.


=head2 Type => Str

The type of threat intelligence indicator.


=head2 Value => Str

The value of a threat intelligence indicator.

Length Constraints: Minimum of 1 length. Maximum of 512 length.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

