#include <stdio.h>
#define SIZE 10
#define NUM 100

int main(void)
{
	int i, n = 0;
	int arr[SIZE + 1], output[SIZE + 1], count[SIZE + 1], countSum[SIZE + 1];

	printf("배열의 크기를 입력하세요. : ");
	scanf("%d", &n);

	for (i = 0; i <= n; i++)
	{
		count[i] = 0; //count 배열을 0으로 초기화하기
	}

	printf("배열에 넣을 숫자를 입력하세요. : ");
	//나의 입력
	for (i = 1; i <= n; i++)
	{
		scanf("%d", &arr[i]); //배열에 숫자 넣기
		count[arr[i]]++; //숫자가 등장하는 횟수 세기
	}

	countSum[0] = count[0];
	for (i = 1; i <= SIZE; i++)
	{
		countSum[i] = countSum[i - 1] + count[i];
	} //countSum에 새로 들어가는 숫자는, 지금까지 누적합 + 새로 등장한 애

	//여기서부터 정렬 시작
	for (i = n; i >= 1; i--)
	{
		output[countSum[arr[i]]] = arr[i]; //배열에 든 애의 누적합을 찾아가서 누적합 배열이 가리키는 위치에 새 배열 지정
		countSum[arr[i]]--; //누적합 줄여줘야 순환 안 하니까
	}

	for (i = 1; i <= n; i++)
	{
		printf("%d ", output[i]); //정렬된 새 배열 출력
	}

	return 0;
}
