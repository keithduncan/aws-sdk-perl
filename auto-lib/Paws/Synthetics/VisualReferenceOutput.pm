# Generated by default/object.tt
package Paws::Synthetics::VisualReferenceOutput;
  use Moose;
  has BaseCanaryRunId => (is => 'ro', isa => 'Str');
  has BaseScreenshots => (is => 'ro', isa => 'ArrayRef[Paws::Synthetics::BaseScreenshot]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::VisualReferenceOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Synthetics::VisualReferenceOutput object:

  $service_obj->Method(Att1 => { BaseCanaryRunId => $value, ..., BaseScreenshots => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Synthetics::VisualReferenceOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->BaseCanaryRunId

=head1 DESCRIPTION

If this canary performs visual monitoring by comparing screenshots,
this structure contains the ID of the canary run that is used as the
baseline for screenshots, and the coordinates of any parts of those
screenshots that are ignored during visual monitoring comparison.

Visual monitoring is supported only on canaries running the
B<syn-puppeteer-node-3.2> runtime or later.

=head1 ATTRIBUTES


=head2 BaseCanaryRunId => Str

The ID of the canary run that produced the baseline screenshots that
are used for visual monitoring comparisons by this canary.


=head2 BaseScreenshots => ArrayRef[L<Paws::Synthetics::BaseScreenshot>]

An array of screenshots that are used as the baseline for comparisons
during visual monitoring.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

