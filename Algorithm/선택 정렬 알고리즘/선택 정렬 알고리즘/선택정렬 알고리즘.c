#include <stdio.h>
#define SIZE 10

void Selection_Sort(int arr[SIZE])
{
	int i, j, temp, least;

	for (i = 0; i < SIZE - 1; i++)
	{
		least = i;

		for (j = i + 1; j < SIZE; j++)
		{
			if (arr[j] < arr[least])
			{
				least = j; //여기까지 i랑 j 비교해서 제일 작은 애 추려내기
			}
		}

		//실제로 자리 바꾸기
		temp = arr[i];
		arr[i] = arr[least]; //i에 가장 작은 값이 들어가게 하기
		arr[least] = temp; 
	}
}


int main(void)
{
	int arr[SIZE] = { 10, 6, 4, 1, 2, 7, 9, 8, 3, 5 };

	for (int a = 0; a < SIZE; a++)
	{
		printf("%d ", arr[a]);
	}

	printf("\n");

	Selection_Sort(arr);

	for (int i = 0; i < SIZE; i++)
	{
		printf("%d ", arr[i]);
	}

	return 0;
}