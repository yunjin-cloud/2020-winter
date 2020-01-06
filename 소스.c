#include <stdio.h>
#include <Stdlib.h>

#define MAX_STACK_SIZE 100
#define MAX_STRING 100

typedef struct
{
	char name[MAX_STRING];
	int arr;
} element;

element stack[MAX_STACK_SIZE];
int top = -1;

// 스택이 비었는지 확인하기
int is_empty()
{
	return (top == -1);
}

// 스택이 꽉 찼는지 확인하기
int is_full()
{
	return (top == (MAX_STACK_SIZE - 1));
}

// 삽입 함수
void push(element item)
{
	if (is_full())
	{
		fprintf(stderr, "스택 포화 에러\n");
		return;
	}
	else stack[++top] = item;
}

// 삭제 함수
element pop()
{
	if (is_empty())
	{
		fprintf(stderr, "스택 공백 에러\n");
		exit(1);
	}
	else return stack[top--];
}

// 출력하기
element peek()
{
	if (is_empty())
	{
		fprintf(stderr, "스택 공백 에러\n");
		exit(1);
	}
	else return stack[top];
}

int main(void)
{
	element input_element = { "yunjin", 20182556 };
	element output_element;

	push(input_element);
	output_element = pop();

	printf("name : %s\n", output_element.name);
	printf("arr : %d", output_element.arr);

	return 0;
}