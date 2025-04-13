// lib/examples/modal_bottom_sheet/modal_bottom_sheet_example.dart

import 'package:flutter/material.dart';

class ModalBottomSheetExample extends StatelessWidget {
  const ModalBottomSheetExample({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _SheetItem(icon: Icons.edit, label: 'Edit Profile', onTap: () {}),
            _SheetItem(icon: Icons.share, label: 'Share Profile', onTap: () {}),
            _SheetItem(
              icon: Icons.logout,
              label: 'Logout',
              onTap: () {},
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => _showBottomSheet(context),
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
      ),
    );
  }
}

class _SheetItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? color;

  const _SheetItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: color ?? Theme.of(context).iconTheme.color),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: color ?? Theme.of(context).textTheme.bodyLarge!.color,
        ),
      ),
      onTap: onTap,
    );
  }
}
