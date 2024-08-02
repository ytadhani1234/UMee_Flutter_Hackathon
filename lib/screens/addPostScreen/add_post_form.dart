import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../post_provider.dart';
import '../../post.dart';
import '../../user.dart';

class AddPostForm extends StatefulWidget {
  @override
  _AddPostFormState createState() => _AddPostFormState();
}

class _AddPostFormState extends State<AddPostForm> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _profileImageUrlController = TextEditingController();
  final _contentTitleController = TextEditingController();
  final _contentUrlController = TextEditingController();
  final _imageUrlController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final newPost = Post(
        user: User(
          userName: _userNameController.text,
          profileImageUrl: _profileImageUrlController.text,
        ),
        contentTitle: _contentTitleController.text,
        contentUrl: _contentUrlController.text,
        imageUrl: _imageUrlController.text,
        timeStamp: DateTime.now(),
      );

      Provider.of<PostProvider>(context, listen: false).addPost(newPost);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Post'),
        backgroundColor: Color(0xff876b8c),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextField(_userNameController, 'Username'),
              _buildTextField(_profileImageUrlController, 'Profile Image URL'),
              _buildTextField(_contentTitleController, 'Content Title'),
              _buildTextField(_contentUrlController, 'Content URL'),
              _buildTextField(_imageUrlController, 'Image URL'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Add Post'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }
}
