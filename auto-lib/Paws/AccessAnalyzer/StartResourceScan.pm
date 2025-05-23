
package Paws::AccessAnalyzer::StartResourceScan;
  use Moose;
  has AnalyzerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analyzerArn', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);
  has ResourceOwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwnerAccount');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartResourceScan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resource/scan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::StartResourceScan - Arguments for method StartResourceScan on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartResourceScan on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method StartResourceScan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartResourceScan.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    $access -analyzer->StartResourceScan(
      AnalyzerArn          => 'MyAnalyzerArn',
      ResourceArn          => 'MyResourceArn',
      ResourceOwnerAccount => 'MyString',        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/StartResourceScan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerArn => Str

The ARN of the analyzer
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources)
to use to scan the policies applied to the specified resource.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource to scan.



=head2 ResourceOwnerAccount => Str

The Amazon Web Services account ID that owns the resource. For most
Amazon Web Services resources, the owning account is the account in
which the resource was created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartResourceScan in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

