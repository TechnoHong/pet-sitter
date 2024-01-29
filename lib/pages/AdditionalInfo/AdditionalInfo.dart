import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:petke/layout/petkeAppBar.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
        appBar: PetkeAppBar(
          title: '추가 정보',
          hasBack: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Text('something1'),
                      const SizedBox(height: 24.0,),
                      Text('something2'),
                      const SizedBox(height: 24.0,),
                      Text('something3'),
                      const SizedBox(height: 24.0,),
                      Text('something4'),
                      const SizedBox(height: 24.0,),
                      Text('something5'),
                      const SizedBox(height: 24.0,),
                      Text('something1'),
                      const SizedBox(height: 24.0,),
                      Text('something2'),
                      const SizedBox(height: 24.0,),
                      Text('something3'),
                      const SizedBox(height: 24.0,),
                      Text('something4'),
                      const SizedBox(height: 24.0,),
                      Text('something5'),
                      const SizedBox(height: 24.0,),
                      Text('something1'),
                      const SizedBox(height: 24.0,),
                      Text('something2'),
                      const SizedBox(height: 24.0,),
                      Text('something3'),
                      const SizedBox(height: 24.0,),
                      Text('something4'),
                      const SizedBox(height: 24.0,),
                      Text('something5'),
                      const SizedBox(height: 24.0,),
                      Text('something1'),
                      const SizedBox(height: 24.0,),
                      Text('something2'),
                      const SizedBox(height: 24.0,),
                      Text('something3'),
                      const SizedBox(height: 24.0,),
                      Text('something4'),
                      const SizedBox(height: 24.0,),
                      Text('something5'),
                      const SizedBox(height: 24.0,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text('나중에 하기')
                  ),
                  const SizedBox(width: 16.0,),
                  FilledButton(
                      onPressed: () {},
                      child: Text('완료')
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}