import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filteredmealsprovider.dart';

/// A reusable widget for displaying a filter switch.
class FilterSwitchTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool currentValue;
  final ValueChanged<bool> onChanged;

  const FilterSwitchTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.currentValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: currentValue,
      onChanged: onChanged,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}

/// The Filters screen allowing users to adjust dietary preferences.
class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          FilterSwitchTile(
            title: 'Gluten-free',
            subtitle: 'Only include gluten-free meals.',
            currentValue: activeFilters[Filter.glutenfree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenfree, isChecked);
            },
          ),
          FilterSwitchTile(
            title: 'Lactose-free',
            subtitle: 'Only include lactose-free meals.',
            currentValue: activeFilters[Filter.lactosefree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactosefree, isChecked);
            },
          ),
          FilterSwitchTile(
            title: 'Vegetarian',
            subtitle: 'Only include vegetarian meals.',
            currentValue: activeFilters[Filter.vegetarian]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
          ),
          FilterSwitchTile(
            title: 'Vegan',
            subtitle: 'Only include vegan meals.',
            currentValue: activeFilters[Filter.vegan]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
          ),
        ],
      ),
    );
  }
}
