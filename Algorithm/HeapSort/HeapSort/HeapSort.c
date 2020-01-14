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
		} while (child != 0); //��Ʈ�� ���� ū �� �ִ� ����
	}

	for (int i = size - 1; i >= 0; i--)
	{
		int temp = data[0]; //���� ū �� �� �ڷ� ��������
		data[0] = data[i];
		data[i] = temp;
		int parent = 0;
		int child = 1;

		do
		{
			child = (parent * 2) + 1;

			if (data[child] < data[child + 1] && child < i - 1)
			{
				child++; //���� �ڽ��̶� ������ �ڽ� �� �� ū �ڽ� ����ַ���
			}

			if (data[parent] < data[child] && child < i)
			{
				temp = data[parent];
				data[parent] = data[child];
				data[child] = temp;
			}

			parent = child; //�ܰ� ����������
		} while(child < i);
	}
}

int main(void)
{
	int arr[10] = { 7, 9, 4, 3, 1, 10, 8, 2, 6, 5 };

	for (int i = 0; i < 10; i++)
	{
		printf("%d ", arr[i]); //���� ��
	}

	printf("\n\n");

	HeapSort(arr, 10);

	for (int j = 0; j < 10; j++)
	{
		printf("%d ", arr[j]); //���� ��
	}

	return 0;
}