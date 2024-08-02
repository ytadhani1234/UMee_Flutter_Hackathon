import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentInfoWidget extends StatefulWidget {
  final String contentTitle;
  final String contentUrl;
  final String imageUrl;
  final DateTime timeStamp;

  ContentInfoWidget(this.contentTitle, this.contentUrl, this.imageUrl, this.timeStamp);

  @override
  _ContentInfoWidgetState createState() => _ContentInfoWidgetState();
}

class _ContentInfoWidgetState extends State<ContentInfoWidget> {
  bool _isHovering = false;

  void _onHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildTitleText(),
        SizedBox(height: 10.0),
        _buildImage(context),
        SizedBox(height: 10.0),
        _buildTimestamp(),
      ],
    );
  }

  Widget _buildTitleText() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: GestureDetector(
        onTap: () => _launchURL(widget.contentUrl),
        child: Text(
          widget.contentTitle + '(...)',
          style: getTitleTextStyle().copyWith(
            decoration: _isHovering ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildImage(BuildContext context) {
    return IntrinsicHeight(
      child: SizedBox(
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            widget.imageUrl,
            fit: BoxFit.cover, // Use BoxFit.cover to ensure the image covers the entire container
          ),
        ),
      ),
    );
  }

  Widget _buildTimestamp() {
    return Text(
      'Posted on: ${widget.timeStamp.toLocal()}',
      style: const TextStyle(
        fontSize: 12.0,
        color: Colors.white,
      ),
    );
  }

  TextStyle getTitleTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      color: Colors.white,
    );
  }
}
