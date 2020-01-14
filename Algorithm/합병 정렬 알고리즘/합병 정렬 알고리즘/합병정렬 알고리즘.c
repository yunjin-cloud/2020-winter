#include <stdio.h>

void Merge(int arr[], int p, int q, int r);

void MergeSort(int arr[], int p, int r)
{
	int q;

	if (p < r)
	{
		q = (p + r) / 2;

	MergeSort(arr, p, q); // �ɰ���
	MergeSort(arr, q + 1, r); //�ݴ��� �ɰ���
	Merge(arr, p, q, r);
	}
}

void Merge(int arr[], int p, int q, int r)
{
	int temp[10];
	int k = p; int l = q + 1; int m = p;

	while (k <= q && l <= r)
	{
		if (arr[k] <= arr[l])
			temp[m++] = arr[k++];
		else
			temp[m++] = arr[l++];
	}

	while (k <= q)
		temp[m++] = arr[k++];

	while (l <= r)
		temp[m++] = arr[l++];

	for (int a = p; a <= r; a++)
	{
		arr[a] = temp[a];
	}
}

int main(void)
{
	int arr[10] = { 6, 9, 2, 1, 3, 4, 10, 8, 7, 5 };

	for (int i = 0; i < 10; i++)
	{
		printf("%d", arr[i]); //���� �� �迭 ���
	}
	printf("\n\n");

	MergeSort(arr, 0, 9);

	for (int j = 0; j < 10; j++)
	{
		printf("%d", arr[j]); //������ �迭 ���
	}
	printf("\n");

	return 0;
}