#include <stdio.h>
#define SIZE 10

void Insert_Sort(int arr[SIZE])
{
	int i, j, key;

	for (j = 1; j < SIZE; j++)
	{
		key = arr[j];
		i = j - 1;

		while (arr[i] > key)
		{
			arr[i + 1] = arr[i];
			i--; //키 앞부분에 정렬돼 있던 배열들을 다시 정렬해주려고
		}

		arr[i + 1] = key;
	}

}


int main(void)
{
	int arr[SIZE] = { 3, 9, 5, 6, 10, 1, 2, 7, 4, 8 };
	
	for (int a = 0; a < SIZE; a++)
	{
		printf("%d ", arr[a]); //기존 배열 출력 
	}

	printf("\n");

	Insert_Sort(arr);

	for (int i = 0; i < SIZE; i++)
	{
		printf("%d ", arr[i]); //정렬한 배열 출력
	}

	return 0;
}