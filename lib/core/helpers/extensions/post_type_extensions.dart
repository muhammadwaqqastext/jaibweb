import 'dart:ui';

import 'package:get/get.dart';
import 'package:jaib_portal/core/enums/post_type/post_type.dart';
import 'package:jaib_portal/core/resources/colours.dart';

extension PostTypeExtensions on PostType {
  Color getShareablePostTypeBackgroundColor() {
    if (this == PostType.FacebookShareable) {
      // Facebook Shareable
      return Colours.facebookColor;
    } else if (this == PostType.TwitterShareable) {
      // Twitter Shareable
      return Colours.twitterColor;
    } else {
      // Instagram Shareable
      return Colours.instagramFirstColor;
    }
  }

  Color getShareablePostTypeIconColor() {
    if (this == PostType.FacebookShareable) {
      // Facebook Shareable
      return Colours.transparentColor;
    } else if (this == PostType.TwitterShareable) {
      // Twitter Shareable
      return Colours.twitterColor;
    } else if (this == PostType.InstagramShareable) {
      // Instagram Shareable
      return Colours.instagramFirstColor;
    } else {
      return Colours.black;
    }
  }

  String postTypeString() {
    if (this == PostType.Jaibed) {
      return 'jaibed';
    } else if (this == PostType.Cashout) {
      return 'cashout';
    } else if (this == PostType.Image) {
      // Picture
      return '39bf1920-9dc7-41c4-916c-46115373f89c';
    } else if (this == PostType.Video) {
      // Video
      return '96c85bff-b313-4e89-b3f4-deb92c491f95';
    } else if (this == PostType.Audio) {
      // Audio
      return '8e348991-608c-4040-b2b1-375275148044';
    } else if (this == PostType.Blog) {
      // Blog
      return '213eda6f-085f-4682-a7ec-7d6e3d150f4c';
    } else if (this == PostType.Chat) {
      return 'e1c93b79-c275-4ad9-84b7-b36af8b62342';
    } else if (this == PostType.Post) {
      return '3e94c032-e6ad-4cb4-aeed-c3a6ca90970e';
    } else if (this == PostType.Message) {
      return '50c37b0e-5d0a-446b-943e-1e1ecd893e4e';
    } else if (this == PostType.FacebookShareable) {
      // Facebook Shareable
      return 'e8976cdb-f043-412b-9929-b44bdddac4c6';
    } else if (this == PostType.TwitterShareable) {
      // Twitter Shareable
      return '4b4f8e0e-116f-444a-827a-2b069e488027';
    } else if (this == PostType.InstagramShareable) {
      // Instagram Shareable
      return '17873383-ad1b-4466-820d-ab41efcccf42';
    } else {
      return 'Divider';
    }
  }

  // String getPostTypeIcon() {
  //   if (this == PostType.Video) {
  //     return Images.video_cam_icon;
  //   } else if (this == PostType.Image) {
  //     return Images.image_icon;
  //   } else if (this == PostType.Blog) {
  //     return Images.blog_icon;
  //   } else if (this == PostType.Audio) {
  //     return Images.audio_icon;
  //   }else if (this == PostType.FacebookShareable) {
  //     return Images.facebook_svg;
  //   }else if (this == PostType.InstagramShareable) {
  //     return Images.instagram_svg;
  //   }else if (this == PostType.TwitterShareable) {
  //     return Images.twitter_svg;
  //   } else if (this == PostType.Chat) {
  //     return '';
  //   } else {
  //     return '';
  //   }
  // }
  bool shareableContent() {
    if (this == PostType.FacebookShareable || this == PostType.InstagramShareable || this == PostType.TwitterShareable) {
      return true;
    } else {
      return false;
    }
  }
  // String getPlayIconPostType() {
  //   if (this == PostType.Video) {
  //     return Images.playButton;
  //   } else if (this == PostType.Image) {
  //     return Images.blog_view_icon;
  //   } else if (this == PostType.Blog) {
  //     return Images.blog_view_icon;
  //   } else if (this == PostType.Audio) {
  //     return Images.playButton;
  //   } else if (this == PostType.Chat) {
  //     return '';
  //   } else {
  //     return '';
  //   }
  // }

  double getPostHeight({bool isStreams = true}) {
    if (this == PostType.Video) {
      return isStreams ? 300.0 : 130.0;
    } else if (this == PostType.Image) {
      return isStreams ? 250.0 : 100.0;
    } else if (this == PostType.Blog) {
      return isStreams ? 300.0 : 130.0;
    } else if (this == PostType.Audio) {
      return isStreams ? (((Get.width - 40) / 2) + 10) : 90.0;
    } else if (this == PostType.FacebookShareable || this == PostType.TwitterShareable || this == PostType.InstagramShareable) {
      return isStreams ? 260.0 : 130.0;
    } else if (this == PostType.Chat) {
      return isStreams ? 0 : 90.0;
    } else if (this == PostType.PictureWithoutChat || this == PostType.PictureWithChat) {
      return isStreams ? 0 : 220.0;
    } else {
      return 0;
    }
  }

  double getPostWidth({bool isStreams = true}) {
    if (this == PostType.Video) {
      return isStreams ? 300.0 : 130.0;
    } else if (this == PostType.Image) {
      return isStreams ? 250.0 : 100.0;
    } else if (this == PostType.Blog) {
      return isStreams ? 300.0 : 130.0;
    } else if (this == PostType.Audio) {
      return isStreams ? (((Get.width - 40) / 2) + 10) : 90.0;
    } else if (this == PostType.Chat) {
      return isStreams ? 0 : 90.0;
    } else if (this == PostType.PictureWithoutChat || this == PostType.PictureWithChat) {
      return isStreams ? 0 : 460.0;
    } else {
      return 0;
    }
  }
}

extension PostTypeExtentions on String {
  PostType fileType() {
    if (this.startsWith('image/')) {
      return PostType.Image;
    } else if (this.startsWith('video/')) {
      return PostType.Video;
    } else if (this.startsWith('audio/')) {
      return PostType.Audio;
    } else {
      return PostType.Document;
    }
  }

  PostType postType() {
    if (this == 'jaibed') {
      return PostType.Jaibed;
    } else if (this == 'cashout') {
      return PostType.Cashout;
    } else if (this == '39bf1920-9dc7-41c4-916c-46115373f89c') {
      // Picture
      return PostType.Image;
    } else if (this == '96c85bff-b313-4e89-b3f4-deb92c491f95') {
      // Video
      return PostType.Video;
    } else if (this == '8e348991-608c-4040-b2b1-375275148044') {
      // Audio
      return PostType.Audio;
    } else if (this == 'e8976cdb-f043-412b-9929-b44bdddac4c6') {
      // Facebook Shareable
      return PostType.FacebookShareable;
    } else if (this == '4b4f8e0e-116f-444a-827a-2b069e488027') {
      // Twitter Shareable
      return PostType.TwitterShareable;
    } else if (this == '17873383-ad1b-4466-820d-ab41efcccf42') {
      // Instagram Shareable
      return PostType.InstagramShareable;
    } else if (this == '213eda6f-085f-4682-a7ec-7d6e3d150f4c') {
      // Blog
      return PostType.Blog;
    } else if (this == 'e1c93b79-c275-4ad9-84b7-b36af8b62342') {
      return PostType.Chat;
    } else {
      return PostType.Divider;
    }
  }
}
