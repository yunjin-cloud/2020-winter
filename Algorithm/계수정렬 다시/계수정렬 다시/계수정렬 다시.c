#include <stdio.h>
#define SIZE 10
#define NUM 100

int main(void)
{
	int i, n = 0;
	int arr[SIZE + 1], output[SIZE + 1], count[SIZE + 1], countSum[SIZE + 1];

	printf("�迭�� ũ�⸦ �Է��ϼ���. : ");
	scanf("%d", &n);

	for (i = 0; i <= n; i++)
	{
		count[i] = 0; //count �迭�� 0���� �ʱ�ȭ�ϱ�
	}

	printf("�迭�� ���� ���ڸ� �Է��ϼ���. : ");
	//���� �Է�
	for (i = 1; i <= n; i++)
	{
		scanf("%d", &arr[i]); //�迭�� ���� �ֱ�
		count[arr[i]]++; //���ڰ� �����ϴ� Ƚ�� ����
	}

	countSum[0] = count[0];
	for (i = 1; i <= SIZE; i++)
	{
		countSum[i] = countSum[i - 1] + count[i];
	} //countSum�� ���� ���� ���ڴ�, ���ݱ��� ������ + ���� ������ ��

	//���⼭���� ���� ����
	for (i = n; i >= 1; i--)
	{
		output[countSum[arr[i]]] = arr[i]; //�迭�� �� ���� �������� ã�ư��� ������ �迭�� ����Ű�� ��ġ�� �� �迭 ����
		countSum[arr[i]]--; //������ �ٿ���� ��ȯ �� �ϴϱ�
	}

	for (i = 1; i <= n; i++)
	{
		printf("%d ", output[i]); //���ĵ� �� �迭 ���
	}

	return 0;
}
