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

// ������ ������� Ȯ���ϱ�
int is_empty()
{
	return (top == -1);
}

// ������ �� á���� Ȯ���ϱ�
int is_full()
{
	return (top == (MAX_STACK_SIZE - 1));
}

// ���� �Լ�
void push(element item)
{
	if (is_full())
	{
		fprintf(stderr, "���� ��ȭ ����\n");
		return;
	}
	else stack[++top] = item;
}

// ���� �Լ�
element pop()
{
	if (is_empty())
	{
		fprintf(stderr, "���� ���� ����\n");
		exit(1);
	}
	else return stack[top--];
}

// ����ϱ�
element peek()
{
	if (is_empty())
	{
		fprintf(stderr, "���� ���� ����\n");
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