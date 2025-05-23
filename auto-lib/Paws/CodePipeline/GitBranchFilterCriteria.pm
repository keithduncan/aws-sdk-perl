# Generated by default/object.tt
package Paws::CodePipeline::GitBranchFilterCriteria;
  use Moose;
  has Excludes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'excludes', traits => ['NameInRequest']);
  has Includes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'includes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GitBranchFilterCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::GitBranchFilterCriteria object:

  $service_obj->Method(Att1 => { Excludes => $value, ..., Includes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::GitBranchFilterCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->Excludes

=head1 DESCRIPTION

The Git repository branches specified as filter criteria to start the
pipeline.

=head1 ATTRIBUTES


=head2 Excludes => ArrayRef[Str|Undef]

The list of patterns of Git branches that, when a commit is pushed, are
to be excluded from starting the pipeline.


=head2 Includes => ArrayRef[Str|Undef]

The list of patterns of Git branches that, when a commit is pushed, are
to be included as criteria that starts the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

