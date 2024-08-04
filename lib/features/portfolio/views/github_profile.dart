import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class GitHubProfileScreen extends StatelessWidget {
  final Map<String, dynamic> profileData = {
    "login": "pratikgtam",
    "avatar_url": "https://avatars.githubusercontent.com/u/36621515?v=4",
    "html_url": "https://github.com/pratikgtam",
    "name": "Pratik Gautam",
    "location": "Barrie, Ontario, Canada",
    "bio": "Software Developer",
    "public_repos": 108,
    "public_gists": 37,
    "followers": 8,
    "following": 10,
  };

  GitHubProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          'GitHub Profile',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(profileData['avatar_url']),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    profileData['name'] ?? profileData['login'],
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Center(
                  child: Text(
                    profileData['location'] ?? 'Location not available',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Bio:',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 5),
                Text(
                  profileData['bio'] ?? 'No bio available',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                Text(
                  'Stats:',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatCard('Repositories',
                        profileData['public_repos'].toString(), context),
                    _buildStatCard('Gists',
                        profileData['public_gists'].toString(), context),
                    _buildStatCard('Followers',
                        profileData['followers'].toString(), context),
                    _buildStatCard('Following',
                        profileData['following'].toString(), context),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString(profileData['html_url']);
                    },
                    icon: const Icon(Icons.open_in_browser),
                    label: const Text('View on GitHub'),
                    style: ElevatedButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
