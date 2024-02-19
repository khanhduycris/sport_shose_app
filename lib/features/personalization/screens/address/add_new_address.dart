import 'package:flutter/material.dart';
import 'package:sport_shoes_store/common/widgets/appbar/appbar.dart';
import 'package:sport_shoes_store/utils/constants/sizes.dart';
class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppbar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Icons.person), labelText: 'Name'),),
                const SizedBox(height: Sizes.spaceBtwInoutFields,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Icons.phone), labelText: 'Phone'),),
                const SizedBox(height: Sizes.spaceBtwInoutFields,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Icons.streetview), labelText: 'Street'),
                      ),
                    ),
                    const SizedBox(width: Sizes.spaceBtwInoutFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Icons.post_add), labelText: 'Pos'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Sizes.spaceBtwInoutFields,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Icons.location_city), labelText: 'City'),
                      ),
                    ),
                    const SizedBox(width: Sizes.spaceBtwInoutFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Icons.real_estate_agent), labelText: 'State'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Sizes.spaceBtwInoutFields,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Icons.language), labelText: 'Country'),),
                const SizedBox(height: Sizes.spaceBtwInoutFields,),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Save'),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
