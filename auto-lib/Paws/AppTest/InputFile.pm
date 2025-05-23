# Generated by default/object.tt
package Paws::AppTest::InputFile;
  use Moose;
  has FileMetadata => (is => 'ro', isa => 'Paws::AppTest::FileMetadata', request_name => 'fileMetadata', traits => ['NameInRequest'], required => 1);
  has SourceLocation => (is => 'ro', isa => 'Str', request_name => 'sourceLocation', traits => ['NameInRequest'], required => 1);
  has TargetLocation => (is => 'ro', isa => 'Str', request_name => 'targetLocation', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::InputFile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppTest::InputFile object:

  $service_obj->Method(Att1 => { FileMetadata => $value, ..., TargetLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppTest::InputFile object:

  $result = $service_obj->Method(...);
  $result->Att1->FileMetadata

=head1 DESCRIPTION

Specifies the input file.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileMetadata => L<Paws::AppTest::FileMetadata>

The file metadata of the input file.


=head2 B<REQUIRED> SourceLocation => Str

The source location of the input file.


=head2 B<REQUIRED> TargetLocation => Str

The target location of the input file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

