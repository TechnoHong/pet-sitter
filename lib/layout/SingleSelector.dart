import 'package:flutter/material.dart';

class SingleSelector<T> extends StatefulWidget {
  const SingleSelector({
    super.key,
    required this.selectedOption,
    required this.onOptionChanged,
    required this.options,
  });

  final T selectedOption;
  final ValueChanged<T> onOptionChanged;
  final List<ButtonSegment<T>> options;

  @override
  State<SingleSelector<T>> createState() => _SingleSelectorState<T>();
}

class _SingleSelectorState<T> extends State<SingleSelector<T>> {

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: widget.options,
      selected: <T>{widget.selectedOption},
      onSelectionChanged: (Set<T> newSelection) => widget.onOptionChanged(newSelection.first),
    );
  }
}