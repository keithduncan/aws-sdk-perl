# Generated by default/object.tt
package Paws::Kendra::Urls;
  use Moose;
  has SeedUrlConfiguration => (is => 'ro', isa => 'Paws::Kendra::SeedUrlConfiguration');
  has SiteMapsConfiguration => (is => 'ro', isa => 'Paws::Kendra::SiteMapsConfiguration');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::Urls

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::Urls object:

  $service_obj->Method(Att1 => { SeedUrlConfiguration => $value, ..., SiteMapsConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::Urls object:

  $result = $service_obj->Method(...);
  $result->Att1->SeedUrlConfiguration

=head1 DESCRIPTION

Provides the configuration information of the URLs to crawl.

You can only crawl websites that use the secure communication protocol,
Hypertext Transfer Protocol Secure (HTTPS). If you receive an error
when crawling a website, it could be that the website is blocked from
crawling.

I<When selecting websites to index, you must adhere to the Amazon
Acceptable Use Policy (https://aws.amazon.com/aup/) and all other
Amazon terms. Remember that you must only use Amazon Kendra Web Crawler
to index your own web pages, or web pages that you have authorization
to index.>

=head1 ATTRIBUTES


=head2 SeedUrlConfiguration => L<Paws::Kendra::SeedUrlConfiguration>

Configuration of the seed or starting point URLs of the websites you
want to crawl.

You can choose to crawl only the website host names, or the website
host names with subdomains, or the website host names with subdomains
and other domains that the web pages link to.

You can list up to 100 seed URLs.


=head2 SiteMapsConfiguration => L<Paws::Kendra::SiteMapsConfiguration>

Configuration of the sitemap URLs of the websites you want to crawl.

Only URLs belonging to the same website host names are crawled. You can
list up to three sitemap URLs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

