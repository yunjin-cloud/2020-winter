#include <stdio.h>

void bubble_sort(int arr[], int count) //정렬할 배열과 요소의 개수
{
	int temp;

	for (int i = 0; i < count; i++)
	{
		for (int j = 0; j < count - 1; j++)
		{
			if (arr[j] > arr[j + 1])
			{
				temp = arr[j];
				arr[j] = arr[j + 1];
				arr[j + 1] = temp;
			}
		}
	}
}

int main(void)
{
	int numArr[10] = { 8, 4, 2, 5, 3, 7, 10, 1, 6, 9 };

	bubble_sor(numArr, sizeof(numArr) / sizeof(int));

	for (int i = 0; i < 10; i++)
	{
		printf("%d", numArr[i]);
	}

	printf("\n");

	return 0;
}