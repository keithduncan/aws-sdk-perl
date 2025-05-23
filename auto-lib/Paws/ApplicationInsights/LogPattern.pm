# Generated by default/object.tt
package Paws::ApplicationInsights::LogPattern;
  use Moose;
  has Pattern => (is => 'ro', isa => 'Str');
  has PatternName => (is => 'ro', isa => 'Str');
  has PatternSetName => (is => 'ro', isa => 'Str');
  has Rank => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::LogPattern

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationInsights::LogPattern object:

  $service_obj->Method(Att1 => { Pattern => $value, ..., Rank => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationInsights::LogPattern object:

  $result = $service_obj->Method(...);
  $result->Att1->Pattern

=head1 DESCRIPTION

An object that defines the log patterns that belongs to a
C<LogPatternSet>.

=head1 ATTRIBUTES


=head2 Pattern => Str

A regular expression that defines the log pattern. A log pattern can
contain as many as 50 characters, and it cannot be empty. The pattern
must be DFA compatible. Patterns that utilize forward lookahead or
backreference constructions are not supported.


=head2 PatternName => Str

The name of the log pattern. A log pattern name can contain as many as
50 characters, and it cannot be empty. The characters can be Unicode
letters, digits, or one of the following symbols: period, dash,
underscore.


=head2 PatternSetName => Str

The name of the log pattern. A log pattern name can contain as many as
30 characters, and it cannot be empty. The characters can be Unicode
letters, digits, or one of the following symbols: period, dash,
underscore.


=head2 Rank => Int

Rank of the log pattern. Must be a value between C<1> and C<1,000,000>.
The patterns are sorted by rank, so we recommend that you set your
highest priority patterns with the lowest rank. A pattern of rank C<1>
will be the first to get matched to a log line. A pattern of rank
C<1,000,000> will be last to get matched. When you configure custom log
patterns from the console, a C<Low> severity pattern translates to a
C<750,000> rank. A C<Medium> severity pattern translates to a
C<500,000> rank. And a C<High> severity pattern translates to a
C<250,000> rank. Rank values less than C<1> or greater than
C<1,000,000> are reserved for Amazon Web Services provided patterns.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

