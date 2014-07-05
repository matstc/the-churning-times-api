class AddPictures < ActiveRecord::Migration
  def change
    Picture.create! author:'Thomas Hawk', attribution_url:'https://www.flickr.com/photos/thomashawk/11667068823/', title:'Politics as Usual', path:'politics-as-usual.jpg'
    Picture.create! author:'Steve Jurvetson', attribution_url:'https://secure.flickr.com/photos/jurvetson/2422297334', title: 'Open Source Politics', path: 'open-source-politics.jpg'
    Picture.create! author:'Wolfgang Sterneck', attribution_url:'https://secure.flickr.com/photos/sterneck/6217595127', title: 'Party and Politics', path: 'party-and-politics.jpg'
    Picture.create! author:'State of the Net', attribution_url:'https://secure.flickr.com/photos/stateofthenet/8912622304', title: 'Politics meet Citizens panel', path: 'politics-meet-citizens-panel.jpg'
    Picture.create! author:'Daniel X. O\'Neil', attribution_url:'https://secure.flickr.com/photos/juggernautco/5172631566', title: 'Rahm Emmanuel', path: 'rahm-emmanuel.jpg'
    Picture.create! author:'Thomas Hawk', attribution_url:'https://secure.flickr.com/photos/thomashawk/9076377768', title: 'Politics as Usual', path: 'politics-as-usual-2.jpg'
    Picture.create! author:'Thomas Hawk', attribution_url:'https://secure.flickr.com/photos/thomashawk/3179331172', title: 'Oakland Mayor', path: 'oakland-mayor.jpg'
    Picture.create! author:'Rappaport Center', attribution_url:'https://secure.flickr.com/photos/rappaportcenter/7110974615', title: 'The Influencing Machine', path: 'the-influencing-machine.jpg'
    Picture.create! author:'Mikael Marguerie', attribution_url:'https://secure.flickr.com/photos/spaceflattener/487648649', title: 'Tear Gas', path: 'tear-gas.jpg'
  end
end
