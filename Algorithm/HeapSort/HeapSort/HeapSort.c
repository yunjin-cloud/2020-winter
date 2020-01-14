#include <Stdio.h>

void HeapSort(int data[], int size)
{
	for (int i = 1; i < size; i++)
	{
		int child = i;

		do
		{
			int parent = (child - 1) / 2;

			if (data[parent] < data[child])
			{
				int temp = data[parent];
				data[parent] = data[child];
				data[child] = temp;
			}
			child = parent;
		} while (child != 0); //루트에 가장 큰 값 넣는 과정
	}

	for (int i = size - 1; i >= 0; i--)
	{
		int temp = data[0]; //가장 큰 값 맨 뒤로 보내려고
		data[0] = data[i];
		data[i] = temp;
		int parent = 0;
		int child = 1;

		do
		{
			child = (parent * 2) + 1;

			if (data[child] < data[child + 1] && child < i - 1)
			{
				child++; //왼쪽 자식이랑 오른쪽 자식 중 더 큰 자식 담아주려고
			}

			if (data[parent] < data[child] && child < i)
			{
				temp = data[parent];
				data[parent] = data[child];
				data[child] = temp;
			}

			parent = child; //단계 내려오려고
		} while(child < i);
	}
}

int main(void)
{
	int arr[10] = { 7, 9, 4, 3, 1, 10, 8, 2, 6, 5 };

	for (int i = 0; i < 10; i++)
	{
		printf("%d ", arr[i]); //정렬 전
	}

	printf("\n\n");

	HeapSort(arr, 10);

	for (int j = 0; j < 10; j++)
	{
		printf("%d ", arr[j]); //정렬 후
	}

	return 0;
}