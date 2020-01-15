#include <Stdio.h>

int Pivot(int data[], int start, int end)
{
	int i = start - 1;
	int pivot = data[end];
	int j, temp;

	for (j = start; j < end; j++)
	{
		if (data[j] <= pivot)
		{
			temp = data[++i];
			data[i] = data[j];
			data[j] = temp;
		}
	}
	temp = data[i + 1];
	data[i + 1] = data[end];
	data[end] = temp;

	return i + 1;
}

void QuickSort(int data[], int start, int end)
{
	if (start < end)
	{
		int pivot = Pivot(data, start, end);
		QuickSort(data, start, pivot - 1);
		QuickSort(data, pivot + 1, end);
	}
}


int main(void)
{
	int arr[10] = { 1, 4, 9, 7, 2, 3, 10, 8, 5, 6 };

	for (int i = 0; i < 10; i++)
	{
		printf("%d ", arr[i]);
	}

	printf("\n\n");

	QuickSort(arr, 0, (sizeof(arr)/sizeof(int)-1));

	for (int j = 0; j < 10; j++)
	{
		printf("%d ", arr[j]);
	}

	return 0;
}